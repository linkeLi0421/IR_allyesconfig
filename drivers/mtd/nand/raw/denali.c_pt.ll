; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/denali.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/denali.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+denali_calc_ecc_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_denali_calc_ecc_bytes\09\09\09\09"
module asm "\09.long\09__crc_denali_calc_ecc_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_calc_ecc_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_calc_ecc_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_denali_calc_ecc_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+denali_chip_init\22, \22a\22\09"
module asm "\09.weak\09__crc_denali_chip_init\09\09\09\09"
module asm "\09.long\09__crc_denali_chip_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_chip_init:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_chip_init\22\09\09\09\09\09"
module asm "__kstrtabns_denali_chip_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+denali_init\22, \22a\22\09"
module asm "\09.weak\09__crc_denali_init\09\09\09\09"
module asm "\09.long\09__crc_denali_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_init:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_init\22\09\09\09\09\09"
module asm "__kstrtabns_denali_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+denali_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_denali_remove\09\09\09\09"
module asm "\09.long\09__crc_denali_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_denali_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22denali_remove\22\09\09\09\09\09"
module asm "__kstrtabns_denali_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.80, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.77 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.77 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.80 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip = type { %struct.nand_chip, %struct.list_head, i32, [0 x %struct.denali_chip_sel] }
%struct.denali_chip_sel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.denali_controller = type { %struct.nand_controller, ptr, %struct.list_head, i32, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.1, i32 }
%union.anon.1 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.2, i8 }
%union.anon.2 = type { ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@__kstrtab_denali_calc_ecc_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_calc_ecc_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_calc_ecc_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_calc_ecc_bytes to i32), ptr @__kstrtab_denali_calc_ecc_bytes, ptr @__kstrtabns_denali_calc_ecc_bytes }, section "___ksymtab+denali_calc_ecc_bytes", align 4
@denali_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported bank %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"denali_chip_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/nand/raw/denali.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@denali_chip_init._entry_ptr = internal global ptr @denali_chip_init._entry, section ".printk_index", align 4
@denali_chip_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bank %d is assigned twice in the same chip\0A\00", [52 x i8] zeroinitializer }, align 32
@denali_chip_init._entry_ptr.7 = internal global ptr @denali_chip_init._entry.5, section ".printk_index", align 4
@denali_chip_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bank %d is already used\0A\00", [39 x i8] zeroinitializer }, align 32
@denali_chip_init._entry_ptr.10 = internal global ptr @denali_chip_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"denali-nand\00", [20 x i8] zeroinitializer }, align 32
@denali_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @denali_ooblayout_ecc, ptr @denali_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@denali_chip_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register MTD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@denali_chip_init._entry_ptr.14 = internal global ptr @denali_chip_init._entry.12, section ".printk_index", align 4
@__kstrtab_denali_chip_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_chip_init = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_chip_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_chip_init to i32), ptr @__kstrtab_denali_chip_init, ptr @__kstrtabns_denali_chip_init }, section "___ksymtab_gpl+denali_chip_init", align 4
@denali_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @denali_attach_chip, ptr null, ptr @denali_exec_op, ptr @denali_setup_interface }, [16 x i8] zeroinitializer }, align 32
@denali_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&denali->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@denali_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1306, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set DMA mask. Disabling DMA.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"denali_init\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@denali_init._entry_ptr = internal global ptr @denali_init._entry, section ".printk_index", align 4
@denali_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 1351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@denali_init._entry_ptr.21 = internal global ptr @denali_init._entry.19, section ".printk_index", align 4
@__kstrtab_denali_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_init = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_init to i32), ptr @__kstrtab_denali_init, ptr @__kstrtabns_denali_init }, section "___ksymtab+denali_init", align 4
@__kstrtab_denali_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_denali_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_denali_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @denali_remove to i32), ptr @__kstrtab_denali_remove, ptr @__kstrtabns_denali_remove }, section "___ksymtab+denali_remove", align 4
@__UNIQUE_ID_description367 = internal constant [58 x i8] c"denali.description=Driver core for Denali NAND controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author368 = internal constant [50 x i8] c"denali.author=Intel Corporation and its suppliers\00", section ".modinfo", align 1
@__UNIQUE_ID_file369 = internal constant [40 x i8] c"denali.file=drivers/mtd/nand/raw/denali\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [22 x i8] c"denali.license=GPL v2\00", section ".modinfo", align 1
@denali_dma_xfer.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"denali\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"denali_dma_xfer\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to DMA-map buffer. Trying PIO.\0A\00", [57 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@denali_wait_for_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout while waiting for irq 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"denali_wait_for_irq\00", [44 x i8] zeroinitializer }, align 32
@denali_wait_for_irq._entry_ptr = internal global ptr @denali_wait_for_irq._entry, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@denali_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to setup ECC settings.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"denali_attach_chip\00", [45 x i8] zeroinitializer }, align 32
@denali_attach_chip._entry_ptr = internal global ptr @denali_attach_chip._entry, section ".printk_index", align 4
@denali_attach_chip.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"chosen ECC settings: step=%d, strength=%d, bytes=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@denali_multidev_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 988, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported number of devices %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"denali_multidev_fixup\00", [42 x i8] zeroinitializer }, align 32
@denali_multidev_fixup._entry_ptr = internal global ptr @denali_multidev_fixup._entry, section ".printk_index", align 4
@denali_exec_instr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported NAND instruction type: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1194, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1200, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1210, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1226, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"denali_ooblayout_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 952, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1257, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"denali_controller_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1173, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1280, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1305, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1351, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 663, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 326, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 184, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1105, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1021, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1025, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 987, i32 3 }
@___asan_gen_.160 = private constant [33 x i8] c"../drivers/mtd/nand/raw/denali.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1141, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 87, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_description367, ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_license370, ptr @__ksymtab_denali_calc_ecc_bytes, ptr @__ksymtab_denali_chip_init, ptr @__ksymtab_denali_init, ptr @__ksymtab_denali_remove, ptr @denali_attach_chip._entry, ptr @denali_attach_chip._entry_ptr, ptr @denali_chip_init._entry, ptr @denali_chip_init._entry.12, ptr @denali_chip_init._entry.5, ptr @denali_chip_init._entry.8, ptr @denali_chip_init._entry_ptr, ptr @denali_chip_init._entry_ptr.10, ptr @denali_chip_init._entry_ptr.14, ptr @denali_chip_init._entry_ptr.7, ptr @denali_init._entry, ptr @denali_init._entry.19, ptr @denali_init._entry_ptr, ptr @denali_init._entry_ptr.21, ptr @denali_multidev_fixup._entry, ptr @denali_multidev_fixup._entry_ptr, ptr @denali_wait_for_irq._entry, ptr @denali_wait_for_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @denali_ooblayout_ops, ptr @.str.13, ptr @denali_controller_ops, ptr @denali_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @nand_controller_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_completion.__key, ptr @.str.36], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_chip_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_chip_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_chip_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_wait_for_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_multidev_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @denali_calc_ecc_bytes(i32 noundef %step_size, i32 noundef %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %step_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %mul, i1 true) #6, !range !101
  %sub.i = sub nuw nsw i32 32, %0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %mul1 = mul i32 %cond.i, %strength
  %sub = add i32 %mul1, 15
  %div = sdiv i32 %sub, 16
  %mul2 = shl nsw i32 %div, 1
  ret i32 %mul2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @denali_chip_init(ptr noundef %denali, ptr noundef %dchip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller2 = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 32
  %0 = ptrtoint ptr %controller2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %denali, ptr %controller2, align 4
  %nsels = getelementptr inbounds %struct.denali_chip, ptr %dchip, i32 0, i32 2
  %1 = ptrtoint ptr %nsels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nsels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp173.not = icmp eq i32 %2, 0
  br i1 %cmp173.not, label %entry.for.end48_crit_edge, label %for.body.lr.ph

entry.for.end48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %nbanks = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 16
  %3 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbanks, align 4
  %chips = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.body.lr.ph
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %for.inc46.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.denali_chip, ptr %dchip, i32 0, i32 3, i32 %i.0174
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp4.not = icmp ult i32 %6, %4
  br i1 %cmp4.not, label %for.cond5.preheader, label %do.end

for.cond5.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0174)
  %cmp6166 = icmp sgt i32 %i.0174, 0
  br i1 %cmp6166, label %for.cond5.preheader.for.body7_crit_edge, label %for.cond5.preheader.for.end_crit_edge

for.cond5.preheader.for.end_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %6) #9
  br label %cleanup93

for.cond5:                                        ; preds = %for.body7
  %inc = add nuw nsw i32 %j.0167, 1
  %exitcond.not = icmp eq i32 %inc, %i.0174
  br i1 %exitcond.not, label %for.cond5.for.end_crit_edge, label %for.cond5.for.body7_crit_edge

for.cond5.for.body7_crit_edge:                    ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.cond5.for.end_crit_edge:                      ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body7:                                        ; preds = %for.cond5.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %j.0167 = phi i32 [ %inc, %for.cond5.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.denali_chip, ptr %dchip, i32 0, i32 3, i32 %j.0167
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp11 = icmp eq i32 %6, %10
  br i1 %cmp11, label %do.end15, label %for.cond5

do.end15:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  %dev16 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %11 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %6) #9
  br label %cleanup93

for.end:                                          ; preds = %for.cond5.for.end_crit_edge, %for.cond5.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn170 = load ptr, ptr %chips, align 4
  %cmp20.not171 = icmp eq ptr %.pn170, %chips
  br i1 %cmp20.not171, label %for.end.for.inc46_crit_edge, label %for.end.for.cond22.preheader_crit_edge

for.end.for.cond22.preheader_crit_edge:           ; preds = %for.end
  br label %for.cond22.preheader

for.end.for.inc46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46

for.cond18.loopexit:                              ; preds = %for.cond22.for.cond18.loopexit_crit_edge, %for.cond22.preheader.for.cond18.loopexit_crit_edge
  %14 = ptrtoint ptr %.pn172 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn172, align 4
  %cmp20.not = icmp eq ptr %.pn, %chips
  br i1 %cmp20.not, label %for.cond18.loopexit.for.inc46_crit_edge, label %for.cond18.loopexit.for.cond22.preheader_crit_edge

for.cond18.loopexit.for.cond22.preheader_crit_edge: ; preds = %for.cond18.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond22.preheader

for.cond18.loopexit.for.inc46_crit_edge:          ; preds = %for.cond18.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46

for.cond22.preheader:                             ; preds = %for.cond18.loopexit.for.cond22.preheader_crit_edge, %for.end.for.cond22.preheader_crit_edge
  %.pn172 = phi ptr [ %.pn, %for.cond18.loopexit.for.cond22.preheader_crit_edge ], [ %.pn170, %for.end.for.cond22.preheader_crit_edge ]
  %nsels23 = getelementptr i8, ptr %.pn172, i32 8
  %15 = ptrtoint ptr %nsels23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsels23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24168.not = icmp eq i32 %16, 0
  br i1 %cmp24168.not, label %for.cond22.preheader.for.cond18.loopexit_crit_edge, label %for.body25.lr.ph

for.cond22.preheader.for.cond18.loopexit_crit_edge: ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.loopexit

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %sels26 = getelementptr i8, ptr %.pn172, i32 12
  br label %for.body25

for.cond22:                                       ; preds = %for.body25
  %inc37 = add nuw i32 %j.1169, 1
  %exitcond178.not = icmp eq i32 %inc37, %16
  br i1 %exitcond178.not, label %for.cond22.for.cond18.loopexit_crit_edge, label %for.cond22.for.body25_crit_edge

for.cond22.for.body25_crit_edge:                  ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.cond22.for.cond18.loopexit_crit_edge:         ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.loopexit

for.body25:                                       ; preds = %for.cond22.for.body25_crit_edge, %for.body25.lr.ph
  %j.1169 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc37, %for.cond22.for.body25_crit_edge ]
  %arrayidx27 = getelementptr [0 x %struct.denali_chip_sel], ptr %sels26, i32 0, i32 %j.1169
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %18)
  %cmp29 = icmp eq i32 %6, %18
  br i1 %cmp29, label %do.end33, label %for.cond22

do.end33:                                         ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %19 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %6) #9
  br label %cleanup93

for.inc46:                                        ; preds = %for.cond18.loopexit.for.inc46_crit_edge, %for.end.for.inc46_crit_edge
  %inc47 = add nuw i32 %i.0174, 1
  %exitcond179.not = icmp eq i32 %inc47, %2
  br i1 %exitcond179.not, label %for.inc46.for.end48_crit_edge, label %for.inc46.for.body_crit_edge

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %entry.for.end48_crit_edge
  %dev49 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %21 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev49, align 4
  %parent = getelementptr inbounds %struct.mtd_info, ptr %dchip, i32 0, i32 56, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %parent, align 8
  %name = getelementptr inbounds %struct.mtd_info, ptr %dchip, i32 0, i32 13
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 8
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %land.lhs.true, label %for.end48.if.end56_crit_edge

for.end48.if.end56_crit_edge:                     ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

land.lhs.true:                                    ; preds = %for.end48
  %chips51 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2
  %26 = ptrtoint ptr %chips51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %chips51, align 4
  %cmp.i.not = icmp eq ptr %27, %chips51
  br i1 %cmp.i.not, label %if.then54, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.11, ptr %name, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.lhs.true.if.end56_crit_edge, %for.end48.if.end56_crit_edge
  %dma_avail = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 12
  %29 = ptrtoint ptr %dma_avail to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_avail, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool57.not = icmp eq i8 %30, 0
  br i1 %tobool57.not, label %if.end56.if.end59_crit_edge, label %if.then58

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %options = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 6
  %31 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %options, align 8
  %or = or i32 %32, 1048576
  store i32 %or, ptr %options, align 8
  %buf_align = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 25
  %33 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %buf_align, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %clk_rate = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 3
  %34 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool60.not = icmp eq i32 %35, 0
  br i1 %tobool60.not, label %if.end59.if.then62_crit_edge, label %lor.lhs.false

if.end59.if.then62_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.end59
  %clk_x_rate = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 4
  %36 = ptrtoint ptr %clk_x_rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clk_x_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool61.not = icmp eq i32 %37, 0
  br i1 %tobool61.not, label %lor.lhs.false.if.then62_crit_edge, label %lor.lhs.false.if.end65_crit_edge

lor.lhs.false.if.end65_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %if.end59.if.then62_crit_edge
  %options63 = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 6
  %38 = ptrtoint ptr %options63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %options63, align 8
  %or64 = or i32 %39, 8388608
  store i32 %or64, ptr %options63, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %lor.lhs.false.if.end65_crit_edge
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 10
  %40 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bbt_options, align 8
  %or68 = or i32 %41, 393216
  store i32 %or68, ptr %bbt_options, align 8
  %options69 = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 6
  %42 = ptrtoint ptr %options69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %options69, align 8
  %or70 = or i32 %43, 512
  store i32 %or70, ptr %options69, align 8
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33
  %44 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %ecc, align 8
  %placement = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 1
  %45 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %placement, align 4
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 18
  %46 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @denali_read_page, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 21
  %47 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @denali_write_page, ptr %write_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 16
  %48 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @denali_read_page_raw, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 17
  %49 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @denali_write_page_raw, ptr %write_page_raw, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 24
  %50 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @denali_read_oob, ptr %read_oob, align 8
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %dchip, i32 0, i32 33, i32 25
  %51 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @denali_write_oob, ptr %write_oob, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %dchip, i32 0, i32 15
  %52 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @denali_ooblayout_ops, ptr %ooblayout1.i, align 8
  %call.i = tail call i32 @nand_scan_with_ids(ptr noundef %dchip, i32 noundef %2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool80.not = icmp eq i32 %call.i, 0
  br i1 %tobool80.not, label %if.end82, label %if.end65.cleanup93_crit_edge

if.end65.cleanup93_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup93

if.end82:                                         ; preds = %if.end65
  %call83 = tail call i32 @mtd_device_parse_register(ptr noundef %dchip, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.13, i32 noundef %call83) #9
  tail call void @nand_cleanup(ptr noundef %dchip) #6
  br label %cleanup93

if.end90:                                         ; preds = %if.end82
  %node91 = getelementptr inbounds %struct.denali_chip, ptr %dchip, i32 0, i32 1
  %chips92 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node91, ptr noundef %56, ptr noundef %chips92) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end90.cleanup93_crit_edge

if.end90.cleanup93_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup93

if.end.i.i:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %node91, ptr %prev.i, align 4
  %58 = ptrtoint ptr %node91 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %chips92, ptr %node91, align 4
  %prev3.i.i = getelementptr inbounds %struct.denali_chip, ptr %dchip, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %node91, ptr %56, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %if.end.i.i, %if.end90.cleanup93_crit_edge, %do.end88, %if.end65.cleanup93_crit_edge, %do.end33, %do.end15, %do.end
  %retval.2 = phi i32 [ %call83, %do.end88 ], [ -22, %do.end33 ], [ -22, %do.end15 ], [ -22, %do.end ], [ %call.i, %if.end65.cleanup93_crit_edge ], [ 0, %if.end90.cleanup93_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_cs.i, align 4
  tail call fastcc void @denali_select_target(ptr noundef %chip, i32 noundef %5) #6
  %dma_avail.i = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dma_avail.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_avail.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call fastcc i32 @denali_dma_xfer(ptr noundef %1, ptr noundef %buf, i32 noundef %3, i32 noundef %page, i1 noundef zeroext false) #6
  br label %denali_page_xfer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @denali_pio_xfer(ptr noundef %1, ptr noundef %buf, i32 noundef %3, i32 noundef %page, i1 noundef zeroext false) #6
  br label %denali_page_xfer.exit

denali_page_xfer.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %8 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %denali_page_xfer.exit.cleanup_crit_edge [
    i32 0, label %denali_page_xfer.exit.if.end_crit_edge
    i32 -74, label %denali_page_xfer.exit.if.end_crit_edge99
  ]

denali_page_xfer.exit.if.end_crit_edge99:         ; preds = %denali_page_xfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

denali_page_xfer.exit.if.end_crit_edge:           ; preds = %denali_page_xfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

denali_page_xfer.exit.cleanup_crit_edge:          ; preds = %denali_page_xfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %denali_page_xfer.exit.if.end_crit_edge, %denali_page_xfer.exit.if.end_crit_edge99
  %caps = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller.i, align 4
  %active_bank.i = getelementptr inbounds %struct.denali_controller, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %active_bank.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_bank.i, align 4
  %reg.i = getelementptr inbounds %struct.denali_controller, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %.frozen = freeze i32 %14
  %div.i = sdiv i32 %.frozen, 2
  %mul.i = shl i32 %div.i, 4
  %add.i = add i32 %mul.i, 1616
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !103
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %19 = mul i32 %div.i, 2
  %rem.i.decomposed = sub i32 %.frozen, %19
  %mul4.i = shl nsw i32 %rem.i.decomposed, 3
  %shr.i = lshr i32 %18, %mul4.i
  %and.i = and i32 %shr.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i44, label %do.end20.i, label %if.end13.thread91

if.end13.thread91:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %20 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %steps.i, align 4
  %sub5.i = sub i32 32, %21
  %shr6.i = lshr i32 -1, %sub5.i
  br label %if.then15

do.end20.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %ecc_stats2.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %and21.i = and i32 %shr.i, 127
  %22 = ptrtoint ptr %ecc_stats2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ecc_stats2.i, align 4
  %add23.i = add i32 %23, %and21.i
  store i32 %add23.i, ptr %ecc_stats2.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %retval.0.i)
  %cmp6 = icmp eq i32 %retval.0.i, -74
  br i1 %cmp6, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.else
  %24 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller.i, align 4
  %ecc_stats2.i48 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 8
  %irq_lock.i.i = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #6
  %irq_status.i.i = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 10
  %28 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %irq_status.i.i, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 9
  %29 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %irq_mask.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i.i) #6
  %reg.i49 = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 5
  %devs_per_cs.i = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 13
  br label %do.body.i

do.body.i:                                        ; preds = %if.end196.i.do.body.i_crit_edge, %if.then7
  %uncor_ecc_flags.1 = phi i32 [ 0, %if.then7 ], [ %uncor_ecc_flags.2, %if.end196.i.do.body.i_crit_edge ]
  %max_bitflips.0.i = phi i32 [ 0, %if.then7 ], [ %max_bitflips.1.i, %if.end196.i.do.body.i_crit_edge ]
  %prev_sector.0.i = phi i32 [ 0, %if.then7 ], [ %shr.i52, %if.end196.i.do.body.i_crit_edge ]
  %bitflips.0.i = phi i32 [ 0, %if.then7 ], [ %bitflips.2.i, %if.end196.i.do.body.i_crit_edge ]
  %30 = ptrtoint ptr %reg.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %31, i32 1584
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #6, !srcloc !103
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %and.i51 = lshr i32 %33, 12
  %shr.i52 = and i32 %and.i51, 15
  %and33.i = and i32 %33, 4095
  %34 = ptrtoint ptr %reg.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i49, align 4
  %add.ptr36.i = getelementptr i8, ptr %35, i32 1600
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #6, !srcloc !103
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %and72.i = lshr i32 %37, 8
  %shr73.i = and i32 %and72.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i52, i32 %prev_sector.0.i)
  %cmp.not.i = icmp eq i32 %shr.i52, %prev_sector.0.i
  %spec.select.i = select i1 %cmp.not.i, i32 %bitflips.0.i, i32 0
  %and75.i = and i32 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool.not.i53 = icmp eq i32 %and75.i, 0
  br i1 %tobool.not.i53, label %if.else.i54, label %if.then76.i

if.then76.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 1, %shr.i52
  %or.i = or i32 %shl.i, %uncor_ecc_flags.1
  br label %if.end196.i

if.else.i54:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and33.i, i32 %27)
  %cmp77.i = icmp ult i32 %and33.i, %27
  br i1 %cmp77.i, label %if.then79.i, label %if.else.i54.if.end196.i_crit_edge

if.else.i54.if.end196.i_crit_edge:                ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196.i

if.then79.i:                                      ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i55 = mul i32 %shr.i52, %27
  %add.i56 = add i32 %mul.i55, %and33.i
  %38 = ptrtoint ptr %devs_per_cs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devs_per_cs.i, align 4
  %mul80.i = mul i32 %39, %add.i56
  %add81.i = add i32 %mul80.i, %shr73.i
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %add81.i
  %conv83.i = and i32 %37, 255
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %conv82.i = zext i8 %41 to i32
  %xor.i = xor i32 %conv83.i, %conv82.i
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %xor.i) #6
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %44 = trunc i32 %37 to i8
  %conv185.i = xor i8 %43, %44
  store i8 %conv185.i, ptr %arrayidx.i, align 1
  %45 = ptrtoint ptr %ecc_stats2.i48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ecc_stats2.i48, align 4
  %add186.i = add i32 %46, %call.i.i
  store i32 %add186.i, ptr %ecc_stats2.i48, align 4
  %add187.i = add i32 %call.i.i, %spec.select.i
  %47 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0.i, i32 %add187.i) #6
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then79.i, %if.else.i54.if.end196.i_crit_edge, %if.then76.i
  %uncor_ecc_flags.2 = phi i32 [ %uncor_ecc_flags.1, %if.then79.i ], [ %uncor_ecc_flags.1, %if.else.i54.if.end196.i_crit_edge ], [ %or.i, %if.then76.i ]
  %max_bitflips.1.i = phi i32 [ %47, %if.then79.i ], [ %max_bitflips.0.i, %if.else.i54.if.end196.i_crit_edge ], [ %max_bitflips.0.i, %if.then76.i ]
  %bitflips.2.i = phi i32 [ %add187.i, %if.then79.i ], [ %spec.select.i, %if.else.i54.if.end196.i_crit_edge ], [ %spec.select.i, %if.then76.i ]
  %and198.i = and i32 %37, 32768
  %tobool199.not.i = icmp eq i32 %and198.i, 0
  br i1 %tobool199.not.i, label %if.end196.i.do.body.i_crit_edge, label %do.end202.i

if.end196.i.do.body.i_crit_edge:                  ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end202.i:                                      ; preds = %if.end196.i
  %call2.i271.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #6
  %48 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_status.i.i, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %denali_sw_ecc_fixup.exit.thread97

denali_sw_ecc_fixup.exit.thread97:                ; preds = %do.end202.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i271.i) #6
  br label %if.end10

if.end.i.i:                                       ; preds = %do.end202.i
  %50 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %irq_mask.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 7
  %51 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %complete.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i271.i) #6
  %call11.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %denali_sw_ecc_fixup.exit.thread, label %denali_sw_ecc_fixup.exit

denali_sw_ecc_fixup.exit.thread:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.denali_controller, ptr %25, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.27, i32 noundef 1) #9
  br label %cleanup

denali_sw_ecc_fixup.exit:                         ; preds = %if.end.i.i
  %54 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_status.i.i, align 4
  %.pre = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %phi.cmp, label %denali_sw_ecc_fixup.exit.cleanup_crit_edge, label %denali_sw_ecc_fixup.exit.if.end10_crit_edge

denali_sw_ecc_fixup.exit.if.end10_crit_edge:      ; preds = %denali_sw_ecc_fixup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

denali_sw_ecc_fixup.exit.cleanup_crit_edge:       ; preds = %denali_sw_ecc_fixup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %denali_sw_ecc_fixup.exit.if.end10_crit_edge, %denali_sw_ecc_fixup.exit.thread97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_bitflips.1.i)
  %cmp11 = icmp slt i32 %max_bitflips.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uncor_ecc_flags.2)
  %tobool14.not = icmp eq i32 %uncor_ecc_flags.2, 0
  %or.cond = select i1 %cmp11, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end10.if.then15_crit_edge

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end10.if.then15_crit_edge, %if.end13.thread91
  %uncor_ecc_flags.37796 = phi i32 [ %shr6.i, %if.end13.thread91 ], [ %uncor_ecc_flags.2, %if.end10.if.then15_crit_edge ]
  %stat.07895 = phi i32 [ 0, %if.end13.thread91 ], [ %max_bitflips.1.i, %if.end10.if.then15_crit_edge ]
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %56 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %oob_poi.i, align 4
  %tobool1.not.i.i = icmp eq ptr %57, null
  br i1 %tobool1.not.i.i, label %if.then15.cleanup_crit_edge, label %if.end.i.i58

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i58:                                     ; preds = %if.then15
  %call.i.i57 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool2.not.i.i = icmp eq i32 %call.i.i57, 0
  br i1 %tobool2.not.i.i, label %denali_read_oob.exit, label %if.end.i.i58.cleanup_crit_edge

if.end.i.i58.cleanup_crit_edge:                   ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

denali_read_oob.exit:                             ; preds = %if.end.i.i58
  %call14.i.i = tail call fastcc i32 @denali_oob_xfer(ptr noundef %chip, ptr noundef nonnull %57, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool17.not = icmp eq i32 %call14.i.i, 0
  br i1 %tobool17.not, label %if.end19, label %denali_read_oob.exit.cleanup_crit_edge

denali_read_oob.exit.cleanup_crit_edge:           ; preds = %denali_read_oob.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %denali_read_oob.exit
  %ecc_stats2.i60 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %steps.i61 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %58 = ptrtoint ptr %steps.i61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %steps.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp32.i = icmp sgt i32 %59, 0
  br i1 %cmp32.i, label %for.body.lr.ph.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end19
  %60 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %oob_poi.i, align 4
  %62 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %controller.i, align 4
  %oob_skip_bytes.i = getelementptr inbounds %struct.denali_controller, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %oob_skip_bytes.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %oob_skip_bytes.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %61, i32 %65
  %size.i65 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf.addr.036.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %buf.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc13.i, %for.inc.i.for.body.i_crit_edge ]
  %ecc_code.034.i = phi ptr [ %add.ptr.i64, %for.body.lr.ph.i ], [ %ecc_code.1.i, %for.inc.i.for.body.i_crit_edge ]
  %max_bitflips.addr.033.i = phi i32 [ %stat.07895, %for.body.lr.ph.i ], [ %max_bitflips.addr.2.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i66 = shl nuw i32 1, %i.035.i
  %and.i67 = and i32 %shl.i66, %uncor_ecc_flags.37796
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %66 = ptrtoint ptr %size.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i65, align 4
  %68 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bytes.i, align 4
  %70 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %strength.i, align 4
  %call4.i69 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %buf.addr.036.i, i32 noundef %67, ptr noundef %ecc_code.034.i, i32 noundef %69, ptr noundef null, i32 noundef 0, i32 noundef %71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i69)
  %cmp5.i = icmp slt i32 %call4.i69, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i71

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %failed.i, align 4
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %failed.i, align 4
  br label %if.end8.i

if.else.i71:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %ecc_stats2.i60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ecc_stats2.i60, align 4
  %add.i70 = add i32 %75, %call4.i69
  store i32 %add.i70, ptr %ecc_stats2.i60, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.addr.033.i, i32 %call4.i69) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i71, %if.then6.i
  %max_bitflips.addr.1.i = phi i32 [ %max_bitflips.addr.033.i, %if.then6.i ], [ %76, %if.else.i71 ]
  %77 = ptrtoint ptr %size.i65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i65, align 4
  %add.ptr10.i = getelementptr i8, ptr %buf.addr.036.i, i32 %78
  %79 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bytes.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %ecc_code.034.i, i32 %80
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i.for.inc.i_crit_edge
  %max_bitflips.addr.2.i = phi i32 [ %max_bitflips.addr.1.i, %if.end8.i ], [ %max_bitflips.addr.033.i, %for.body.i.for.inc.i_crit_edge ]
  %ecc_code.1.i = phi ptr [ %add.ptr12.i, %if.end8.i ], [ %ecc_code.034.i, %for.body.i.for.inc.i_crit_edge ]
  %buf.addr.1.i = phi ptr [ %add.ptr10.i, %if.end8.i ], [ %buf.addr.036.i, %for.body.i.for.inc.i_crit_edge ]
  %inc13.i = add nuw nsw i32 %i.035.i, 1
  %81 = ptrtoint ptr %steps.i61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %steps.i61, align 4
  %cmp.i = icmp slt i32 %inc13.i, %82
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %denali_read_oob.exit.cleanup_crit_edge, %if.end.i.i58.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %denali_sw_ecc_fixup.exit.cleanup_crit_edge, %denali_sw_ecc_fixup.exit.thread, %if.else.cleanup_crit_edge, %do.end20.i, %denali_page_xfer.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %denali_page_xfer.exit.cleanup_crit_edge ], [ %max_bitflips.1.i, %if.end10.cleanup_crit_edge ], [ %call14.i.i, %denali_read_oob.exit.cleanup_crit_edge ], [ %stat.07895, %if.end19.cleanup_crit_edge ], [ -5, %denali_sw_ecc_fixup.exit.cleanup_crit_edge ], [ -5, %denali_sw_ecc_fixup.exit.thread ], [ %call.i.i57, %if.end.i.i58.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %and21.i, %do.end20.i ], [ %max_bitflips.addr.2.i, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_write_page(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %controller.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i.i, align 4
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_cs.i, align 4
  tail call fastcc void @denali_select_target(ptr noundef %chip, i32 noundef %5) #6
  %dma_avail.i = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dma_avail.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_avail.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call fastcc i32 @denali_dma_xfer(ptr noundef %3, ptr noundef %buf, i32 noundef %1, i32 noundef %page, i1 noundef zeroext true) #6
  br label %denali_page_xfer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @denali_pio_xfer(ptr noundef %3, ptr noundef %buf, i32 noundef %1, i32 noundef %page, i1 noundef zeroext true) #6
  br label %denali_page_xfer.exit

denali_page_xfer.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.else.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %buf, null
  %tobool1.not.i = icmp eq ptr %cond, null
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %cond.end.denali_read_raw.exit_crit_edge, label %if.end.i

cond.end.denali_read_raw.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.end.i:                                         ; preds = %cond.end
  %call.i = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.denali_read_raw.exit_crit_edge

if.end.i.denali_read_raw.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.end4.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end4.i.if.end11.i_crit_edge, label %if.then6.i

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  %controller.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i.i.i, align 4
  %writesize3.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize3.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize3.i.i, align 4
  %oob_skip_bytes.i.i = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %oob_skip_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_skip_bytes.i.i, align 4
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %8 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %steps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp71.i.i = icmp sgt i32 %9, 0
  br i1 %cmp71.i.i, label %for.body.lr.ph.i.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

for.body.lr.ph.i.i:                               ; preds = %if.then6.i
  %size.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %add16.i.i = add i32 %7, %5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end23.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.074.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %buf.addr.072.i.i = phi ptr [ %buf, %for.body.lr.ph.i.i ], [ %add.ptr24.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %12 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes.i.i, align 4
  %add.i.i = add i32 %13, %11
  %mul.i.i = mul i32 %add.i.i, %i.074.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul.i.i)
  %cmp5.not.i.i = icmp sgt i32 %5, %mul.i.i
  br i1 %cmp5.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i.i = add i32 %mul.i.i, %7
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %add7.i.i = add i32 %mul.i.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %5)
  %cmp8.i.i = icmp sgt i32 %add7.i.i, %5
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i.i.if.end18.i.i_crit_edge

if.else.i.i.if.end18.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  %sub.i.i = sub i32 %5, %mul.i.i
  %call1.i.i.i = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul.i.i, ptr noundef %buf.addr.072.i.i, i32 noundef %sub.i.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool11.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i, label %if.then9.i.i.denali_read_raw.exit_crit_edge

if.then9.i.i.denali_read_raw.exit_crit_edge:      ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.end.i.i:                                       ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.072.i.i, i32 %sub.i.i
  %sub15.i.i = sub i32 %11, %sub.i.i
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end.i.i, %if.else.i.i.if.end18.i.i_crit_edge, %if.then.i.i
  %buf.addr.1.i.i = phi ptr [ %buf.addr.072.i.i, %if.then.i.i ], [ %add.ptr.i.i, %if.end.i.i ], [ %buf.addr.072.i.i, %if.else.i.i.if.end18.i.i_crit_edge ]
  %pos.0.i.i = phi i32 [ %add6.i.i, %if.then.i.i ], [ %add16.i.i, %if.end.i.i ], [ %mul.i.i, %if.else.i.i.if.end18.i.i_crit_edge ]
  %len.0.i.i = phi i32 [ %11, %if.then.i.i ], [ %sub15.i.i, %if.end.i.i ], [ %11, %if.else.i.i.if.end18.i.i_crit_edge ]
  %call1.i67.i.i = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %pos.0.i.i, ptr noundef %buf.addr.1.i.i, i32 noundef %len.0.i.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i)
  %tobool21.not.i.i = icmp eq i32 %call1.i67.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end18.i.i.denali_read_raw.exit_crit_edge

if.end18.i.i.denali_read_raw.exit_crit_edge:      ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.end23.i.i:                                     ; preds = %if.end18.i.i
  %add.ptr24.i.i = getelementptr i8, ptr %buf.addr.1.i.i, i32 %len.0.i.i
  %inc.i.i = add nuw nsw i32 %i.074.i.i, 1
  %14 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %steps.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %if.end23.i.i.for.body.i.i_crit_edge, label %if.end23.i.i.if.end11.i_crit_edge

if.end23.i.i.if.end11.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end11.i:                                       ; preds = %if.end23.i.i.if.end11.i_crit_edge, %if.then6.i.if.end11.i_crit_edge, %if.end4.i.if.end11.i_crit_edge
  br i1 %tobool1.not.i, label %if.end11.i.if.end18.i_crit_edge, label %if.then13.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end11.i
  %call14.i = tail call fastcc i32 @denali_oob_xfer(ptr noundef %chip, ptr noundef nonnull %cond, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end18.i_crit_edge, label %if.then13.i.denali_read_raw.exit_crit_edge

if.then13.i.denali_read_raw.exit_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i.if.end18.i_crit_edge, %if.end11.i.if.end18.i_crit_edge
  br label %denali_read_raw.exit

denali_read_raw.exit:                             ; preds = %if.end18.i, %if.then13.i.denali_read_raw.exit_crit_edge, %if.end18.i.i.denali_read_raw.exit_crit_edge, %if.then9.i.i.denali_read_raw.exit_crit_edge, %if.end.i.denali_read_raw.exit_crit_edge, %cond.end.denali_read_raw.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end18.i ], [ -22, %cond.end.denali_read_raw.exit_crit_edge ], [ %call.i, %if.end.i.denali_read_raw.exit_crit_edge ], [ %call14.i, %if.then13.i.denali_read_raw.exit_crit_edge ], [ %call1.i67.i.i, %if.end18.i.i.denali_read_raw.exit_crit_edge ], [ %call1.i.i.i, %if.then9.i.i.denali_read_raw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %buf, null
  %tobool1.not.i = icmp eq ptr %cond, null
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %cond.end.denali_write_raw.exit_crit_edge, label %if.end.i

cond.end.denali_write_raw.exit_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.end.i:                                         ; preds = %cond.end
  %call.i = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.denali_write_raw.exit_crit_edge

if.end.i.denali_write_raw.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.end4.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end4.i.if.end11.i_crit_edge, label %if.then6.i

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  %controller.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i.i.i, align 4
  %writesize3.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize3.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize3.i.i, align 4
  %oob_skip_bytes.i.i = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %oob_skip_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_skip_bytes.i.i, align 4
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %8 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %steps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp71.i.i = icmp sgt i32 %9, 0
  br i1 %cmp71.i.i, label %for.body.lr.ph.i.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

for.body.lr.ph.i.i:                               ; preds = %if.then6.i
  %size.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %add16.i.i = add i32 %7, %5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end23.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.074.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %buf.addr.072.i.i = phi ptr [ %buf, %for.body.lr.ph.i.i ], [ %add.ptr24.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %12 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes.i.i, align 4
  %add.i.i = add i32 %13, %11
  %mul.i.i = mul i32 %add.i.i, %i.074.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul.i.i)
  %cmp5.not.i.i = icmp sgt i32 %5, %mul.i.i
  br i1 %cmp5.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i.i = add i32 %mul.i.i, %7
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %add7.i.i = add i32 %mul.i.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %5)
  %cmp8.i.i = icmp sgt i32 %add7.i.i, %5
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i.i.if.end18.i.i_crit_edge

if.else.i.i.if.end18.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  %sub.i.i = sub i32 %5, %mul.i.i
  %call.i.i.i = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %mul.i.i, ptr noundef %buf.addr.072.i.i, i32 noundef %sub.i.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i, label %if.then9.i.i.denali_write_raw.exit_crit_edge

if.then9.i.i.denali_write_raw.exit_crit_edge:     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.end.i.i:                                       ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.072.i.i, i32 %sub.i.i
  %sub15.i.i = sub i32 %11, %sub.i.i
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end.i.i, %if.else.i.i.if.end18.i.i_crit_edge, %if.then.i.i
  %buf.addr.1.i.i = phi ptr [ %buf.addr.072.i.i, %if.then.i.i ], [ %add.ptr.i.i, %if.end.i.i ], [ %buf.addr.072.i.i, %if.else.i.i.if.end18.i.i_crit_edge ]
  %pos.0.i.i = phi i32 [ %add6.i.i, %if.then.i.i ], [ %add16.i.i, %if.end.i.i ], [ %mul.i.i, %if.else.i.i.if.end18.i.i_crit_edge ]
  %len.0.i.i = phi i32 [ %11, %if.then.i.i ], [ %sub15.i.i, %if.end.i.i ], [ %11, %if.else.i.i.if.end18.i.i_crit_edge ]
  %call.i65.i.i = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %pos.0.i.i, ptr noundef %buf.addr.1.i.i, i32 noundef %len.0.i.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i.i)
  %tobool21.not.i.i = icmp eq i32 %call.i65.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end18.i.i.denali_write_raw.exit_crit_edge

if.end18.i.i.denali_write_raw.exit_crit_edge:     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.end23.i.i:                                     ; preds = %if.end18.i.i
  %add.ptr24.i.i = getelementptr i8, ptr %buf.addr.1.i.i, i32 %len.0.i.i
  %inc.i.i = add nuw nsw i32 %i.074.i.i, 1
  %14 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %steps.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %if.end23.i.i.for.body.i.i_crit_edge, label %if.end23.i.i.if.end11.i_crit_edge

if.end23.i.i.if.end11.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end11.i:                                       ; preds = %if.end23.i.i.if.end11.i_crit_edge, %if.then6.i.if.end11.i_crit_edge, %if.end4.i.if.end11.i_crit_edge
  br i1 %tobool1.not.i, label %if.end11.i.if.end18.i_crit_edge, label %if.then13.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end11.i
  %call14.i = tail call fastcc i32 @denali_oob_xfer(ptr noundef %chip, ptr noundef nonnull %cond, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end18.i_crit_edge, label %if.then13.i.denali_write_raw.exit_crit_edge

if.then13.i.denali_write_raw.exit_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i.if.end18.i_crit_edge, %if.end11.i.if.end18.i_crit_edge
  %call19.i = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #6
  br label %denali_write_raw.exit

denali_write_raw.exit:                            ; preds = %if.end18.i, %if.then13.i.denali_write_raw.exit_crit_edge, %if.end18.i.i.denali_write_raw.exit_crit_edge, %if.then9.i.i.denali_write_raw.exit_crit_edge, %if.end.i.denali_write_raw.exit_crit_edge, %cond.end.denali_write_raw.exit_crit_edge
  %retval.0.i = phi i32 [ %call19.i, %if.end18.i ], [ -22, %cond.end.denali_write_raw.exit_crit_edge ], [ %call.i, %if.end.i.denali_write_raw.exit_crit_edge ], [ %call14.i, %if.then13.i.denali_write_raw.exit_crit_edge ], [ %call.i65.i.i, %if.end18.i.i.denali_write_raw.exit_crit_edge ], [ %call.i.i.i, %if.then9.i.i.denali_write_raw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_read_oob(ptr noundef %chip, i32 noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.denali_read_raw.exit_crit_edge, label %if.end.i

entry.denali_read_raw.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then13.i, label %if.end.i.denali_read_raw.exit_crit_edge

if.end.i.denali_read_raw.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_read_raw.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call fastcc i32 @denali_oob_xfer(ptr noundef %chip, ptr noundef nonnull %1, i1 noundef zeroext false) #6
  br label %denali_read_raw.exit

denali_read_raw.exit:                             ; preds = %if.then13.i, %if.end.i.denali_read_raw.exit_crit_edge, %entry.denali_read_raw.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.denali_read_raw.exit_crit_edge ], [ %call.i, %if.end.i.denali_read_raw.exit_crit_edge ], [ %call14.i, %if.then13.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_write_oob(ptr noundef %chip, i32 noundef %page) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.denali_write_raw.exit_crit_edge, label %if.end.i

entry.denali_write_raw.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then13.i, label %if.end.i.denali_write_raw.exit_crit_edge

if.end.i.denali_write_raw.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.then13.i:                                      ; preds = %if.end.i
  %call14.i = tail call fastcc i32 @denali_oob_xfer(ptr noundef %chip, ptr noundef nonnull %1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end18.i, label %if.then13.i.denali_write_raw.exit_crit_edge

if.then13.i.denali_write_raw.exit_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_write_raw.exit

if.end18.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #6
  br label %denali_write_raw.exit

denali_write_raw.exit:                            ; preds = %if.end18.i, %if.then13.i.denali_write_raw.exit_crit_edge, %if.end.i.denali_write_raw.exit_crit_edge, %entry.denali_write_raw.exit_crit_edge
  %retval.0.i = phi i32 [ %call19.i, %if.end18.i ], [ -22, %entry.denali_write_raw.exit_crit_edge ], [ %call.i, %if.end.i.denali_write_raw.exit_crit_edge ], [ %call14.i, %if.then13.i.denali_write_raw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @denali_init(ptr noundef %denali) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1008
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !103
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @__mutex_init(ptr noundef %denali, ptr noundef nonnull @.str.29, ptr noundef nonnull @nand_controller_init.__key) #6
  %ops = getelementptr inbounds %struct.nand_controller, ptr %denali, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @denali_controller_ops, ptr %ops, align 4
  %complete = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 7
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #6
  %irq_lock = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @denali_init.__key, i16 noundef signext 3) #6
  %chips = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2
  %6 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %chips, ptr %prev.i, align 4
  %active_bank = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 15
  %8 = ptrtoint ptr %active_bank to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %active_bank, align 4
  %revision = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 17
  %9 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end22_crit_edge

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 880
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %14 = lshr i32 %13, 16
  %15 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %revision, align 4
  br label %do.end22

do.end22:                                         ; preds = %if.then, %entry.do.end22_crit_edge
  %16 = phi i32 [ %10, %entry.do.end22_crit_edge ], [ %14, %if.then ]
  %and = and i32 %3, 3
  %shl = shl nuw nsw i32 1, %and
  %nbanks = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1281, i32 %16)
  %cmp = icmp ult i32 %16, 1281
  %shl27 = zext i1 %cmp to i32
  %spec.select162 = shl nuw nsw i32 %shl, %shl27
  %17 = ptrtoint ptr %nbanks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select162, ptr %nbanks, align 4
  %and29 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end22.if.end32_crit_edge, label %if.then31

do.end22.if.end32_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %dma_avail = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 12
  %18 = ptrtoint ptr %dma_avail to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dma_avail, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %do.end22.if.end32_crit_edge
  %dma_avail33 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 12
  %19 = ptrtoint ptr %dma_avail33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dma_avail33, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool34.not = icmp eq i8 %20, 0
  br i1 %tobool34.not, label %if.end32.if.end61_crit_edge, label %if.then35

if.end32.if.end61_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then35:                                        ; preds = %if.end32
  %caps = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 18
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps, align 4
  %and36 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %dev = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %spec.select = select i1 %tobool37.not, i64 4294967295, i64 -1
  %call42 = tail call i32 @dma_set_mask(ptr noundef %24, i64 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end51, label %do.end47

do.end47:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.16) #9
  %27 = ptrtoint ptr %dma_avail33 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dma_avail33, align 4
  br label %if.end61

if.end51:                                         ; preds = %if.then35
  %28 = ptrtoint ptr %dma_avail33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %dma_avail33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool53.not = icmp eq i8 %.pr, 0
  br i1 %tobool53.not, label %if.end51.if.end61_crit_edge, label %if.then54

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then54:                                        ; preds = %if.end51
  %29 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps, align 4
  %and56 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %setup_dma59 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 22
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %setup_dma59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @denali_setup_dma64, ptr %setup_dma59, align 4
  br label %if.end61

if.else:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %setup_dma59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @denali_setup_dma32, ptr %setup_dma59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then58, %if.end51.if.end61_crit_edge, %do.end47, %if.end32.if.end61_crit_edge
  %and62 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %spec.select163 = select i1 %tobool63.not, ptr @denali_direct_read, ptr @denali_indexed_read
  %spec.select164 = select i1 %tobool63.not, ptr @denali_direct_write, ptr @denali_indexed_write
  %33 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 20
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %spec.select163, ptr %33, align 4
  %35 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 21
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.select164, ptr %35, align 4
  %oob_skip_bytes = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 14
  %37 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oob_skip_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool69.not = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 4
  %add.ptr76 = getelementptr i8, ptr %40, i32 560
  br i1 %tobool69.not, label %if.else74, label %if.then70

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %41) #6, !srcloc !106
  br label %if.end79

if.else74:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #6, !srcloc !103
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %44 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %oob_skip_bytes, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else74, %if.then70
  %45 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg, align 4
  %add.ptr81 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #6, !srcloc !106
  %47 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nbanks, align 4
  %sub84 = sub i32 32, %48
  %shr85 = lshr i32 -1, %sub84
  %49 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg, align 4
  %add.ptr88 = getelementptr i8, ptr %50, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %shr85) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %51) #6, !srcloc !106
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg, align 4
  %add.ptr90 = getelementptr i8, ptr %53, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 16777216) #6, !srcloc !106
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg, align 4
  %add.ptr92 = getelementptr i8, ptr %55, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 16777216) #6, !srcloc !106
  %56 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg, align 4
  %add.ptr94 = getelementptr i8, ptr %57, i32 576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 -65536) #6, !srcloc !106
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg, align 4
  %add.ptr96 = getelementptr i8, ptr %59, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 16777216) #6, !srcloc !106
  %60 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp4.i = icmp sgt i32 %61, 0
  br i1 %cmp4.i, label %if.end79.for.body.i_crit_edge, label %if.end79.denali_clear_irq_all.exit_crit_edge

if.end79.denali_clear_irq_all.exit_crit_edge:     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_clear_irq_all.exit

if.end79.for.body.i_crit_edge:                    ; preds = %if.end79
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end79.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end79.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg, align 4
  %mul.i.i = mul i32 %i.05.i, 80
  %add.i.i = add i32 %mul.i.i, 1040
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #6, !srcloc !106
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %64 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nbanks, align 4
  %cmp.i = icmp slt i32 %inc.i, %65
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.denali_clear_irq_all.exit_crit_edge

for.body.i.denali_clear_irq_all.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_clear_irq_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

denali_clear_irq_all.exit:                        ; preds = %for.body.i.denali_clear_irq_all.exit_crit_edge, %if.end79.denali_clear_irq_all.exit_crit_edge
  %dev97 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %66 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev97, align 4
  %irq = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 8
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %67, i32 noundef %69, ptr noundef nonnull @denali_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.11, ptr noundef %denali) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool99.not = icmp eq i32 %call.i, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %denali_clear_irq_all.exit
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev97, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end105:                                        ; preds = %denali_clear_irq_all.exit
  %72 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp7.i = icmp sgt i32 %73, 0
  br i1 %cmp7.i, label %if.end105.for.body.i160_crit_edge, label %if.end105.denali_enable_irq.exit_crit_edge

if.end105.denali_enable_irq.exit_crit_edge:       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_enable_irq.exit

if.end105.for.body.i160_crit_edge:                ; preds = %if.end105
  br label %for.body.i160

for.body.i160:                                    ; preds = %for.body.i160.for.body.i160_crit_edge, %if.end105.for.body.i160_crit_edge
  %i.08.i = phi i32 [ %inc.i158, %for.body.i160.for.body.i160_crit_edge ], [ 0, %if.end105.for.body.i160_crit_edge ]
  %74 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg, align 4
  %mul.i = mul i32 %i.08.i, 80
  %add.i = add i32 %mul.i, 1056
  %add.ptr.i = getelementptr i8, ptr %75, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !106
  %inc.i158 = add nuw nsw i32 %i.08.i, 1
  %76 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nbanks, align 4
  %cmp.i159 = icmp slt i32 %inc.i158, %77
  br i1 %cmp.i159, label %for.body.i160.for.body.i160_crit_edge, label %for.body.i160.denali_enable_irq.exit_crit_edge

for.body.i160.denali_enable_irq.exit_crit_edge:   ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_enable_irq.exit

for.body.i160.for.body.i160_crit_edge:            ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i160

denali_enable_irq.exit:                           ; preds = %for.body.i160.denali_enable_irq.exit_crit_edge, %if.end105.denali_enable_irq.exit_crit_edge
  %78 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg, align 4
  %add.ptr2.i = getelementptr i8, ptr %79, i32 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #6, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %denali_enable_irq.exit, %do.end103
  %retval.0 = phi i32 [ %call.i, %do.end103 ], [ 0, %denali_enable_irq.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @denali_setup_dma64(ptr noundef %denali, i32 noundef %dma_addr, i32 noundef %page, i1 noundef zeroext %write) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active_bank = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 15
  %0 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_bank, align 4
  %shl = shl i32 %1, 24
  %or = or i32 %shl, %page
  %or1 = or i32 %or, 134217728
  %host_write = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 21
  %2 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_write, align 4
  %or3 = select i1 %write, i32 20979969, i32 20979713
  tail call void %3(ptr noundef %denali, i32 noundef %or1, i32 noundef %or3) #6
  %4 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_write, align 4
  tail call void %5(ptr noundef %denali, i32 noundef %or1, i32 noundef %dma_addr) #6
  %6 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_write, align 4
  tail call void %7(ptr noundef %denali, i32 noundef %or1, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @denali_setup_dma32(ptr noundef %denali, i32 noundef %dma_addr, i32 noundef %page, i1 noundef zeroext %write) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active_bank = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 15
  %0 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_bank, align 4
  %shl = shl i32 %1, 24
  %or = or i32 %shl, 134217728
  %host_write = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 21
  %2 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_write, align 4
  %or1 = or i32 %or, %page
  %or3 = select i1 %write, i32 8449, i32 8193
  tail call void %3(ptr noundef %denali, i32 noundef %or1, i32 noundef %or3) #6
  %4 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_write, align 4
  %6 = lshr i32 %dma_addr, 8
  %shl5 = and i32 %6, 16776960
  %or6 = or i32 %or, %shl5
  tail call void %5(ptr noundef %denali, i32 noundef %or6, i32 noundef 8704) #6
  %7 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_write, align 4
  %and = shl i32 %dma_addr, 8
  %shl8 = and i32 %and, 16776960
  %or9 = or i32 %or, %shl8
  tail call void %8(ptr noundef %denali, i32 noundef %or9, i32 noundef 8960) #6
  %9 = ptrtoint ptr %host_write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_write, align 4
  %or11 = or i32 %shl, 134299648
  tail call void %10(ptr noundef %denali, i32 noundef %or11, i32 noundef 9216) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_indexed_read(ptr nocapture noundef readonly %denali, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #6, !srcloc !106
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !103
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @denali_indexed_write(ptr nocapture noundef readonly %denali, i32 noundef %addr, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #6, !srcloc !106
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %data) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #6, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_direct_read(ptr nocapture noundef readonly %denali, i32 noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !103
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @denali_direct_write(ptr nocapture noundef readonly %denali, i32 noundef %addr, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 6
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %data) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_isr(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #6
  %nbanks = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 16
  %0 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 5
  %active_bank = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 15
  %irq_status4 = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 10
  %irq_mask = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 9
  %complete = getelementptr inbounds %struct.denali_controller, ptr %dev_id, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.026 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %mul = mul i32 %i.027, 80
  %add = add i32 %mul, 1040
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.not, i32 %ret.026, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !106
  %7 = ptrtoint ptr %active_bank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_bank, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027, i32 %8)
  %cmp1.not = icmp eq i32 %i.027, %8
  br i1 %cmp1.not, label %if.end3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %10 = ptrtoint ptr %irq_status4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status4, align 4
  %or = or i32 %11, %9
  store i32 %or, ptr %irq_status4, align 4
  %12 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_mask, align 4
  %and = and i32 %13, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end3.for.inc_crit_edge, label %if.then7

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @complete(ptr noundef %complete) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %14 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbanks, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #6
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @denali_remove(ptr noundef readonly %denali) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chips = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 2
  %0 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chips, align 4
  %cmp.not48 = icmp eq ptr %1, %chips
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in49 = phi ptr [ %.pn52, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dchip.051 = getelementptr i8, ptr %.pn.in49, i32 -2168
  %2 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn52 = load ptr, ptr %.pn.in49, align 8
  %call9 = tail call i32 @mtd_device_unregister(ptr noundef %dchip.051) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !107

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1370, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %dchip.051) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in49) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in49, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in49 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in49, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in49, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn52, %chips
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %nbanks.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 16
  %11 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbanks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.i = icmp sgt i32 %12, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %for.end.denali_disable_irq.exit_crit_edge

for.end.denali_disable_irq.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_disable_irq.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %reg.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %mul.i = mul i32 %i.08.i, 80
  %add.i = add i32 %mul.i, 1056
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !106
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %15 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbanks.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.denali_disable_irq.exit_crit_edge

for.body.i.denali_disable_irq.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %denali_disable_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

denali_disable_irq.exit:                          ; preds = %for.body.i.denali_disable_irq.exit_crit_edge, %for.end.denali_disable_irq.exit_crit_edge
  %reg1.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 5
  %17 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @denali_select_target(ptr nocapture noundef readonly %chip, i32 noundef %cs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %arrayidx = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %active_bank = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %active_bank to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %active_bank, align 4
  %phys_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 18
  %5 = ptrtoint ptr %phys_erase_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_erase_shift, align 8
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %7 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_shift, align 4
  %sub = sub i32 %6, %8
  %shl = shl nuw i32 1, %sub
  %reg = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #6, !srcloc !106
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %12 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %options, align 8
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %add.ptr4 = getelementptr i8, ptr %15, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %16 = shl i32 %13, 23
  %17 = and i32 %16, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %17) #6, !srcloc !106
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %18 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %writesize, align 4
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg, align 4
  %add.ptr6 = getelementptr i8, ptr %21, i32 368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %22) #6, !srcloc !106
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %23 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobsize, align 4
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 4
  %add.ptr8 = getelementptr i8, ptr %26, i32 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %27) #6, !srcloc !106
  %28 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %options, align 8
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg, align 4
  %add.ptr14 = getelementptr i8, ptr %31, i32 400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %32 = shl i32 %29, 10
  %33 = and i32 %32, 16777216
  %34 = xor i32 %33, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %34) #6, !srcloc !106
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %35 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %strength, align 4
  %and50 = and i32 %36, 31
  %or = or i32 %and50, 65536
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg, align 4
  %add.ptr52 = getelementptr i8, ptr %38, i32 432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %39) #6, !srcloc !106
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 8
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %add.ptr55 = getelementptr i8, ptr %43, i32 1712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %44) #6, !srcloc !106
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 8
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg, align 4
  %add.ptr59 = getelementptr i8, ptr %48, i32 1728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %49) #6, !srcloc !106
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %50 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %steps, align 4
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg, align 4
  %add.ptr62 = getelementptr i8, ptr %53, i32 1744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %54) #6, !srcloc !106
  %55 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %options, align 8
  %and64 = and i32 %56, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end67, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwhr2_and_we_2_re = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 1
  %57 = ptrtoint ptr %hwhr2_and_we_2_re to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hwhr2_and_we_2_re, align 4
  %59 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg, align 4
  %add.ptr69 = getelementptr i8, ptr %60, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %61) #6, !srcloc !106
  %tcwaw_and_addr_2_data = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 2
  %62 = ptrtoint ptr %tcwaw_and_addr_2_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tcwaw_and_addr_2_data, align 4
  %64 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg, align 4
  %add.ptr71 = getelementptr i8, ptr %65, i32 272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %66) #6, !srcloc !106
  %re_2_we = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 3
  %67 = ptrtoint ptr %re_2_we to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %re_2_we, align 4
  %69 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg, align 4
  %add.ptr73 = getelementptr i8, ptr %70, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %71) #6, !srcloc !106
  %acc_clks = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 4
  %72 = ptrtoint ptr %acc_clks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %acc_clks, align 4
  %74 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg, align 4
  %add.ptr75 = getelementptr i8, ptr %75, i32 304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %76) #6, !srcloc !106
  %rdwr_en_lo_cnt = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 5
  %77 = ptrtoint ptr %rdwr_en_lo_cnt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rdwr_en_lo_cnt, align 4
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg, align 4
  %add.ptr77 = getelementptr i8, ptr %80, i32 496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %81) #6, !srcloc !106
  %rdwr_en_hi_cnt = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 6
  %82 = ptrtoint ptr %rdwr_en_hi_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rdwr_en_hi_cnt, align 4
  %84 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg, align 4
  %add.ptr79 = getelementptr i8, ptr %85, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %86) #6, !srcloc !106
  %cs_setup_cnt = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 7
  %87 = ptrtoint ptr %cs_setup_cnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cs_setup_cnt, align 4
  %89 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg, align 4
  %add.ptr81 = getelementptr i8, ptr %90, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %91) #6, !srcloc !106
  %re_2_re = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %cs, i32 8
  %92 = ptrtoint ptr %re_2_re to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %re_2_re, align 4
  %94 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg, align 4
  %add.ptr83 = getelementptr i8, ptr %95, i32 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %96) #6, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @denali_dma_xfer(ptr noundef %denali, ptr noundef %buf, i32 noundef %size, i32 noundef %page, i1 noundef zeroext %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %write, i32 1, i32 2
  %dev = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !107

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #6
  br label %do.body

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %buf, i32 noundef %size) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %size, i32 noundef %cond, i32 noundef 0) #6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.body_crit_edge, label %if.end13

dma_map_single_attrs.exit.do.body_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %dma_map_single_attrs.exit.do.body_crit_edge, %dma_map_single_attrs.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @denali_dma_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@denali_dma_xfer, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !108

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @denali_dma_xfer.__UNIQUE_ID_ddebug288, ptr noundef %13, ptr noundef nonnull @.str.24) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call12 = tail call fastcc i32 @denali_pio_xfer(ptr noundef %denali, ptr noundef %buf, i32 noundef %size, i32 noundef %page, i1 noundef zeroext %write)
  br label %cleanup

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  br i1 %write, label %if.end13.if.end20_crit_edge, label %if.else

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %caps = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 18
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %. = select i1 %tobool16.not, i32 2, i32 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end13.if.end20_crit_edge
  %irq_mask.0 = phi i32 [ 20, %if.end13.if.end20_crit_edge ], [ 4, %if.else ]
  %ecc_err_mask.0 = phi i32 [ 0, %if.end13.if.end20_crit_edge ], [ %., %if.else ]
  %reg = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 5
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !106
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 1792
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %irq_lock.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %irq_status.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 10
  %21 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %irq_status.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 9
  %22 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %irq_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #6
  %setup_dma = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 22
  %23 = ptrtoint ptr %setup_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %setup_dma, align 4
  tail call void %24(ptr noundef %denali, i32 noundef %call41.i, i32 noundef %page, i1 noundef zeroext %write) #6
  %call2.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %25 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_status.i, align 4
  %and.i76 = and i32 %26, %irq_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool.not.i = icmp eq i32 %and.i76, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i77

if.then.i77:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i75) #6
  br label %denali_wait_for_irq.exit

if.end.i:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %irq_mask.0, ptr %irq_mask.i, align 4
  %complete.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 7
  %28 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %complete.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i75) #6
  %call11.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end17.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef %irq_mask.0) #9
  br label %denali_wait_for_irq.exit

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_status.i, align 4
  br label %denali_wait_for_irq.exit

denali_wait_for_irq.exit:                         ; preds = %if.end17.i, %do.end16.i, %if.then.i77
  %retval.0.i78 = phi i32 [ %26, %if.then.i77 ], [ %32, %if.end17.i ], [ 0, %do.end16.i ]
  %and26 = and i32 %retval.0.i78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and30 = and i32 %retval.0.i78, %ecc_err_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -74
  %ret.0 = select i1 %tobool27.not, i32 -5, i32 %spec.select
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 4
  %add.ptr36 = getelementptr i8, ptr %34, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #6, !srcloc !106
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %call41.i, i32 noundef %size, i32 noundef %cond, i32 noundef 0) #6
  %and38 = and i32 %retval.0.i78, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %denali_wait_for_irq.exit.cleanup_crit_edge, label %if.then40

denali_wait_for_irq.exit.cleanup_crit_edge:       ; preds = %denali_wait_for_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %denali_wait_for_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = call ptr @memset(ptr %buf, i32 255, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %denali_wait_for_irq.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call12, %do.end ], [ %ret.0, %if.then40 ], [ %ret.0, %denali_wait_for_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @denali_pio_xfer(ptr noundef %denali, ptr nocapture noundef %buf, i32 noundef %size, i32 noundef %page, i1 noundef zeroext %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active_bank.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 15
  %0 = ptrtoint ptr %active_bank.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_bank.i, align 4
  %shl.i = shl i32 %1, 24
  %or.i = or i32 %shl.i, %page
  %or1.i = or i32 %or.i, 67108864
  br i1 %write, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq_lock.i.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #6
  %irq_status.i.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 10
  %2 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irq_status.i.i, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 9
  %3 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %irq_mask.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp13.not.i = icmp ult i32 %size, 4
  br i1 %cmp13.not.i, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %div10.i = lshr i32 %size, 2
  %host_write.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %host_write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_write.i, align 4
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  tail call void %5(ptr noundef %denali, i32 noundef %or1.i, i32 noundef %7) #6
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div10.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %call2.i12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #6
  %8 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_status.i.i, align 4
  %and.i.i = and i32 %9, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i12.i) #6
  br label %denali_pio_write.exit

if.end.i.i:                                       ; preds = %for.end.i
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 144, ptr %irq_mask.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 7
  %11 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %complete.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i12.i) #6
  %call11.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.end16.i.i, label %if.end17.i.i

do.end16.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef 144) #9
  br label %denali_pio_write.exit

if.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_status.i.i, align 4
  br label %denali_pio_write.exit

denali_pio_write.exit:                            ; preds = %if.end17.i.i, %do.end16.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %9, %if.then.i.i ], [ %15, %if.end17.i.i ], [ 0, %do.end16.i.i ]
  %and.i = and i32 %retval.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 -5, i32 0
  br label %return

if.else:                                          ; preds = %entry
  %caps.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 18
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps.i, align 4
  %and.i10 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  %..i12 = select i1 %tobool.not.i11, i32 2, i32 1
  %irq_lock.i.i13 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 11
  %call2.i.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i13) #6
  %irq_status.i.i15 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 10
  %18 = ptrtoint ptr %irq_status.i.i15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %irq_status.i.i15, align 4
  %irq_mask.i.i16 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 9
  %19 = ptrtoint ptr %irq_mask.i.i16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irq_mask.i.i16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i13, i32 noundef %call2.i.i14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp33.not.i = icmp ult i32 %size, 4
  br i1 %cmp33.not.i, label %if.else.for.end.i24_crit_edge, label %for.body.lr.ph.i17

if.else.for.end.i24_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i24

for.body.lr.ph.i17:                               ; preds = %if.else
  %div27.i = lshr i32 %size, 2
  %host_read.i = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 20
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %for.body.lr.ph.i17
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i19, %for.body.i21.for.body.i21_crit_edge ]
  %20 = ptrtoint ptr %host_read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_read.i, align 4
  %call.i = tail call i32 %21(ptr noundef %denali, i32 noundef %or1.i) #6
  %arrayidx.i18 = getelementptr i32, ptr %buf, i32 %i.034.i
  %22 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %arrayidx.i18, align 4
  %inc.i19 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i20 = icmp eq i32 %inc.i19, %div27.i
  br i1 %exitcond.not.i20, label %for.body.i21.for.end.i24_crit_edge, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i21

for.body.i21.for.end.i24_crit_edge:               ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i24

for.end.i24:                                      ; preds = %for.body.i21.for.end.i24_crit_edge, %if.else.for.end.i24_crit_edge
  %call2.i29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i13) #6
  %23 = ptrtoint ptr %irq_status.i.i15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_status.i.i15, align 4
  %and.i.i22 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i28, label %denali_wait_for_irq.exit.thread35.i

denali_wait_for_irq.exit.thread35.i:              ; preds = %for.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i13, i32 noundef %call2.i29.i) #6
  br label %if.end6.i

if.end.i.i28:                                     ; preds = %for.end.i24
  %25 = ptrtoint ptr %irq_mask.i.i16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32768, ptr %irq_mask.i.i16, align 4
  %complete.i.i25 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 7
  %26 = ptrtoint ptr %complete.i.i25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %complete.i.i25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i13, i32 noundef %call2.i29.i) #6
  %call11.i.i26 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i.i25, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i26)
  %tobool12.not.i.i27 = icmp eq i32 %call11.i.i26, 0
  br i1 %tobool12.not.i.i27, label %denali_wait_for_irq.exit.thread.i, label %denali_wait_for_irq.exit.i

denali_wait_for_irq.exit.thread.i:                ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i29 = getelementptr inbounds %struct.denali_controller, ptr %denali, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef 32768) #9
  br label %return

denali_wait_for_irq.exit.i:                       ; preds = %if.end.i.i28
  %29 = ptrtoint ptr %irq_status.i.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_status.i.i15, align 4
  %.pre.i = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %denali_wait_for_irq.exit.i.return_crit_edge, label %denali_wait_for_irq.exit.i.if.end6.i_crit_edge

denali_wait_for_irq.exit.i.if.end6.i_crit_edge:   ; preds = %denali_wait_for_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

denali_wait_for_irq.exit.i.return_crit_edge:      ; preds = %denali_wait_for_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6.i:                                        ; preds = %denali_wait_for_irq.exit.i.if.end6.i_crit_edge, %denali_wait_for_irq.exit.thread35.i
  %retval.0.i38.i = phi i32 [ %24, %denali_wait_for_irq.exit.thread35.i ], [ %30, %denali_wait_for_irq.exit.i.if.end6.i_crit_edge ]
  %and7.i = and i32 %retval.0.i38.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = call ptr @memset(ptr %buf, i32 255, i32 %size)
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %and11.i = and i32 %retval.0.i38.i, %..i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %cond.i = select i1 %tobool12.not.i, i32 0, i32 -74
  br label %return

return:                                           ; preds = %if.end10.i, %denali_wait_for_irq.exit.i.return_crit_edge, %denali_wait_for_irq.exit.thread.i, %denali_pio_write.exit
  %retval.0 = phi i32 [ %..i, %denali_pio_write.exit ], [ %cond.i, %if.end10.i ], [ -5, %denali_wait_for_irq.exit.i.return_crit_edge ], [ -5, %denali_wait_for_irq.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @denali_oob_xfer(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %writesize3 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize3, align 4
  %oobsize4 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize4, align 4
  %oob_skip_bytes = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_skip_bytes, align 4
  br i1 %write, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %3, ptr noundef %buf, i32 noundef %7, i1 noundef zeroext false) #6
  br label %denali_change_column.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %3, ptr noundef %buf, i32 noundef %7, i1 noundef zeroext false) #6
  br label %denali_change_column.exit

denali_change_column.exit:                        ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %if.end, label %denali_change_column.exit.cleanup_crit_edge

denali_change_column.exit.cleanup_crit_edge:      ; preds = %denali_change_column.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %denali_change_column.exit
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %8 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp113 = icmp sgt i32 %9, 0
  br i1 %cmp113, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %buf, i32 %7
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %add12 = add i32 %5, %3
  %add34 = add i32 %7, %3
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %9, %for.body.lr.ph ], [ %17, %if.end41.for.body_crit_edge ]
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end41.for.body_crit_edge ]
  %buf.addr.0114 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr42, %if.end41.for.body_crit_edge ]
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytes, align 4
  %add = add i32 %14, %12
  %mul = mul i32 %add, %i.0116
  %add8 = add i32 %mul, %12
  %sub = add nsw i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0116, i32 %sub)
  %cmp10 = icmp eq i32 %i.0116, %sub
  %15 = add i32 %add8, %7
  %sub14 = sub i32 %add12, %15
  %len.0 = select i1 %cmp10, i32 %sub14, i32 %14
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add8)
  %cmp17.not = icmp sgt i32 %3, %add8
  br i1 %cmp17.not, label %if.else20, label %for.body.if.end36_crit_edge

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.else20:                                        ; preds = %for.body
  %add21 = add i32 %len.0, %add8
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %3)
  %cmp22 = icmp sgt i32 %add21, %3
  br i1 %cmp22, label %if.then23, label %if.else20.if.end36_crit_edge

if.else20.if.end36_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then23:                                        ; preds = %if.else20
  %sub24 = sub i32 %3, %add8
  br i1 %write, label %if.then.i102, label %if.else.i104

if.then.i102:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %call.i101 = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %add8, ptr noundef %buf.addr.0114, i32 noundef %sub24, i1 noundef zeroext false) #6
  br label %denali_change_column.exit106

if.else.i104:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i103 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %add8, ptr noundef %buf.addr.0114, i32 noundef %sub24, i1 noundef zeroext false) #6
  br label %denali_change_column.exit106

denali_change_column.exit106:                     ; preds = %if.else.i104, %if.then.i102
  %retval.0.i105 = phi i32 [ %call.i101, %if.then.i102 ], [ %call1.i103, %if.else.i104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i105)
  %tobool27.not = icmp eq i32 %retval.0.i105, 0
  br i1 %tobool27.not, label %if.end29, label %denali_change_column.exit106.cleanup_crit_edge

denali_change_column.exit106.cleanup_crit_edge:   ; preds = %denali_change_column.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %denali_change_column.exit106
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31 = getelementptr i8, ptr %buf.addr.0114, i32 %sub24
  %sub33 = sub i32 %len.0, %sub24
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %if.else20.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %buf.addr.1 = phi ptr [ %add.ptr31, %if.end29 ], [ %buf.addr.0114, %if.else20.if.end36_crit_edge ], [ %buf.addr.0114, %for.body.if.end36_crit_edge ]
  %pos.0 = phi i32 [ %add34, %if.end29 ], [ %add8, %if.else20.if.end36_crit_edge ], [ %15, %for.body.if.end36_crit_edge ]
  %len.1 = phi i32 [ %sub33, %if.end29 ], [ %len.0, %if.else20.if.end36_crit_edge ], [ %len.0, %for.body.if.end36_crit_edge ]
  br i1 %write, label %if.then.i108, label %if.else.i110

if.then.i108:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call.i107 = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %pos.0, ptr noundef %buf.addr.1, i32 noundef %len.1, i1 noundef zeroext false) #6
  br label %denali_change_column.exit112

if.else.i110:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i109 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %pos.0, ptr noundef %buf.addr.1, i32 noundef %len.1, i1 noundef zeroext false) #6
  br label %denali_change_column.exit112

denali_change_column.exit112:                     ; preds = %if.else.i110, %if.then.i108
  %retval.0.i111 = phi i32 [ %call.i107, %if.then.i108 ], [ %call1.i109, %if.else.i110 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i111)
  %tobool39.not = icmp eq i32 %retval.0.i111, 0
  br i1 %tobool39.not, label %if.end41, label %denali_change_column.exit112.cleanup_crit_edge

denali_change_column.exit112.cleanup_crit_edge:   ; preds = %denali_change_column.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %denali_change_column.exit112
  %add.ptr42 = getelementptr i8, ptr %buf.addr.1, i32 %len.1
  %inc = add nuw nsw i32 %i.0116, 1
  %16 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %if.end41.for.body_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %denali_change_column.exit112.cleanup_crit_edge, %denali_change_column.exit106.cleanup_crit_edge, %if.end.cleanup_crit_edge, %denali_change_column.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %denali_change_column.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i105, %denali_change_column.exit106.cleanup_crit_edge ], [ %retval.0.i111, %denali_change_column.exit112.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @denali_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp = icmp sgt i32 %section, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %oob_skip_bytes = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oob_skip_bytes, align 4
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %oobregion, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %5 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total, align 8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @denali_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp = icmp sgt i32 %section, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 8
  %oob_skip_bytes = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oob_skip_bytes, align 4
  %add = add i32 %5, %3
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %8, %add
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_attach_chip(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %ecc_caps = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %ecc_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ecc_caps, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %oob_skip_bytes = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %oob_skip_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oob_skip_bytes, align 4
  %sub = sub i32 %5, %7
  %call2 = tail call i32 @nand_ecc_choose_conf(ptr noundef %chip, ptr noundef %3, i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30) #9
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @denali_attach_chip.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@denali_attach_chip, %if.then8)) #6
          to label %do.end14 [label %if.then8], !srcloc !108

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %14 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %strength, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %16 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @denali_attach_chip.__UNIQUE_ID_ddebug361, ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body3
  %18 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller.i, align 4
  %reg.i = getelementptr inbounds %struct.denali_controller, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 592
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !103
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %devs_per_cs.i = getelementptr inbounds %struct.denali_controller, ptr %19, i32 0, i32 13
  %24 = ptrtoint ptr %devs_per_cs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %devs_per_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.then.i, label %do.end14.if.end.i_crit_edge

do.end14.if.end.i_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %devs_per_cs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %devs_per_cs.i, align 4
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %27, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 16777216) #6, !srcloc !106
  %28 = ptrtoint ptr %devs_per_cs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %devs_per_cs.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end14.if.end.i_crit_edge
  %29 = phi i32 [ %.pr.i, %if.then.i ], [ %23, %do.end14.if.end.i_crit_edge ]
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %29, label %do.end.i [
    i32 1, label %if.end.i.cleanup_crit_edge
    i32 2, label %if.end16.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.denali_controller, ptr %19, i32 0, i32 1
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.33, i32 noundef %29) #9
  br label %cleanup

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagesize.i, align 4
  %shl.i = shl i32 %34, 1
  store i32 %shl.i, ptr %pagesize.i, align 4
  %oobsize.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %oobsize.i, align 4
  %shl17.i = shl i32 %36, 1
  store i32 %shl17.i, ptr %oobsize.i, align 4
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 2
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size.i, align 8
  %shl18.i = shl i64 %38, 1
  store i64 %shl18.i, ptr %size.i, align 8
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %39 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %erasesize.i, align 8
  %shl19.i = shl i32 %40, 1
  store i32 %shl19.i, ptr %erasesize.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %41 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %writesize.i, align 4
  %shl20.i = shl i32 %42, 1
  store i32 %shl20.i, ptr %writesize.i, align 4
  %43 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oobsize, align 4
  %shl22.i = shl i32 %44, 1
  store i32 %shl22.i, ptr %oobsize, align 4
  %page_shift.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %45 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_shift.i, align 4
  %add.i = add i32 %46, 1
  store i32 %add.i, ptr %page_shift.i, align 4
  %phys_erase_shift.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 18
  %47 = ptrtoint ptr %phys_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phys_erase_shift.i, align 8
  %add23.i = add i32 %48, 1
  store i32 %add23.i, ptr %phys_erase_shift.i, align 8
  %bbt_erase_shift.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 9
  %49 = ptrtoint ptr %bbt_erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bbt_erase_shift.i, align 4
  %add24.i = add i32 %50, 1
  store i32 %add24.i, ptr %bbt_erase_shift.i, align 4
  %chip_shift.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 19
  %51 = ptrtoint ptr %chip_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chip_shift.i, align 4
  %add25.i = add i32 %52, 1
  store i32 %add25.i, ptr %chip_shift.i, align 4
  %pagemask.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 20
  %53 = ptrtoint ptr %pagemask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagemask.i, align 8
  %shl26.i = shl i32 %54, 1
  store i32 %shl26.i, ptr %pagemask.i, align 8
  %size27.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %55 = ptrtoint ptr %size27.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size27.i, align 8
  %shl28.i = shl i32 %56, 1
  store i32 %shl28.i, ptr %size27.i, align 8
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %57 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bytes.i, align 4
  %shl30.i = shl i32 %58, 1
  store i32 %shl30.i, ptr %bytes.i, align 4
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %59 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %strength.i, align 4
  %shl32.i = shl i32 %60, 1
  store i32 %shl32.i, ptr %strength.i, align 4
  %oob_skip_bytes.i = getelementptr inbounds %struct.denali_controller, ptr %19, i32 0, i32 14
  %61 = ptrtoint ptr %oob_skip_bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %oob_skip_bytes.i, align 4
  %shl33.i = shl i32 %62, 1
  store i32 %shl33.i, ptr %oob_skip_bytes.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %do.end.i, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %do.end.i ], [ 0, %if.end16.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  tail call fastcc void @denali_select_target(ptr noundef %chip, i32 noundef %1)
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %irq_status.i = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq_status.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.denali_controller, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %irq_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #6
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %6 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19.not = icmp eq i32 %7, 0
  br i1 %cmp19.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %options18.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020
  %10 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %13, label %land.end27.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb22.i
  ]

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1
  %host_write.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 21
  %active_bank.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 15
  %15 = ptrtoint ptr %host_write.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_write.i.i, align 4
  %17 = ptrtoint ptr %active_bank.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_bank.i.i, align 4
  %shl.i.i = shl i32 %18, 24
  %or.i.i = or i32 %shl.i.i, 201326592
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctx.i, align 1
  %conv.i.i = zext i8 %20 to i32
  tail call void %16(ptr noundef %11, i32 noundef %or.i.i, i32 noundef %conv.i.i) #6
  br label %for.inc

sw.bb1.i:                                         ; preds = %for.body
  %ctx2.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addrs.i, align 4
  %23 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp5.not.i.i, label %sw.bb1.i.for.inc_crit_edge, label %for.body.lr.ph.i.i

sw.bb1.i.for.inc_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i.i:                               ; preds = %sw.bb1.i
  %host_write.i79.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 21
  %active_bank.i80.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 15
  br label %for.body.i88.i

for.body.i88.i:                                   ; preds = %for.body.i88.i.for.body.i88.i_crit_edge, %for.body.lr.ph.i.i
  %i.06.i81.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i86.i, %for.body.i88.i.for.body.i88.i_crit_edge ]
  %25 = ptrtoint ptr %host_write.i79.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_write.i79.i, align 4
  %27 = ptrtoint ptr %active_bank.i80.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_bank.i80.i, align 4
  %shl.i82.i = shl i32 %28, 24
  %or.i83.i = or i32 %shl.i82.i, 201326593
  %arrayidx.i84.i = getelementptr i8, ptr %22, i32 %i.06.i81.i
  %29 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i84.i, align 1
  %conv.i85.i = zext i8 %30 to i32
  tail call void %26(ptr noundef %11, i32 noundef %or.i83.i, i32 noundef %conv.i85.i) #6
  %inc.i86.i = add nuw i32 %i.06.i81.i, 1
  %exitcond.not.i87.i = icmp eq i32 %inc.i86.i, %24
  br i1 %exitcond.not.i87.i, label %for.body.i88.i.for.inc_crit_edge, label %for.body.i88.i.for.body.i88.i_crit_edge

for.body.i88.i.for.body.i88.i_crit_edge:          ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i88.i

for.body.i88.i.for.inc_crit_edge:                 ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb4.i:                                         ; preds = %for.body
  %ctx5.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf.i, align 4
  %33 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctx5.i, align 4
  %force_8bit.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %force_8bit.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %land.end.i, label %land.end.thread.i

land.end.thread.i:                                ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.not.i.i106.i = icmp eq i32 %34, 0
  br i1 %cmp1.not.i.i106.i, label %land.end.thread.i.for.inc_crit_edge, label %land.end.thread.i.for.body.lr.ph.i4.i.i_crit_edge

land.end.thread.i.for.body.lr.ph.i4.i.i_crit_edge: ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i4.i.i

land.end.thread.i.for.inc_crit_edge:              ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.end.i:                                       ; preds = %sw.bb4.i
  %37 = ptrtoint ptr %options18.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %options18.i, align 8
  %and.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool8.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.end.i
  br i1 %cmp1.not.i.i.i, label %if.then.i.i.for.inc_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.i.for.inc_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i.i
  %host_read.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 20
  %active_bank.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 15
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %add3.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %39 = ptrtoint ptr %host_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host_read.i.i.i, align 4
  %41 = ptrtoint ptr %active_bank.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_bank.i.i.i, align 4
  %shl.i.i.i = shl i32 %42, 24
  %or.i.i.i = or i32 %shl.i.i.i, 201326594
  %call.i.i.i = tail call i32 %40(ptr noundef %11, i32 noundef %or.i.i.i) #6
  %conv.i.i.i = trunc i32 %call.i.i.i to i8
  %arrayidx.i.i.i = getelementptr i8, ptr %32, i32 %i.02.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i.i.i, ptr %arrayidx.i.i.i, align 1
  %shr.i.i.i = lshr i32 %call.i.i.i, 16
  %conv1.i.i.i = trunc i32 %shr.i.i.i to i8
  %add.i.i.i = or i32 %i.02.i.i.i, 1
  %arrayidx2.i.i.i = getelementptr i8, ptr %32, i32 %add.i.i.i
  %44 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv1.i.i.i, ptr %arrayidx2.i.i.i, align 1
  %add3.i.i.i = add i32 %i.02.i.i.i, 2
  %cmp.i.i.i = icmp ult i32 %add3.i.i.i, %34
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.inc_crit_edge

for.body.i.i.i.for.inc_crit_edge:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

if.else.i.i:                                      ; preds = %land.end.i
  br i1 %cmp1.not.i.i.i, label %if.else.i.i.for.inc_crit_edge, label %if.else.i.i.for.body.lr.ph.i4.i.i_crit_edge

if.else.i.i.for.body.lr.ph.i4.i.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i4.i.i

if.else.i.i.for.inc_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i4.i.i:                            ; preds = %if.else.i.i.for.body.lr.ph.i4.i.i_crit_edge, %land.end.thread.i.for.body.lr.ph.i4.i.i_crit_edge
  %host_read.i2.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 20
  %active_bank.i3.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 15
  br label %for.body.i11.i.i

for.body.i11.i.i:                                 ; preds = %for.body.i11.i.i.for.body.i11.i.i_crit_edge, %for.body.lr.ph.i4.i.i
  %i.02.i5.i.i = phi i32 [ 0, %for.body.lr.ph.i4.i.i ], [ %inc.i.i.i, %for.body.i11.i.i.for.body.i11.i.i_crit_edge ]
  %45 = ptrtoint ptr %host_read.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_read.i2.i.i, align 4
  %47 = ptrtoint ptr %active_bank.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %active_bank.i3.i.i, align 4
  %shl.i6.i.i = shl i32 %48, 24
  %or.i7.i.i = or i32 %shl.i6.i.i, 201326594
  %call.i8.i.i = tail call i32 %46(ptr noundef %11, i32 noundef %or.i7.i.i) #6
  %conv.i9.i.i = trunc i32 %call.i8.i.i to i8
  %arrayidx.i10.i.i = getelementptr i8, ptr %32, i32 %i.02.i5.i.i
  %49 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i9.i.i, ptr %arrayidx.i10.i.i, align 1
  %inc.i.i.i = add nuw i32 %i.02.i5.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %34
  br i1 %exitcond.not.i.i.i, label %for.body.i11.i.i.for.inc_crit_edge, label %for.body.i11.i.i.for.body.i11.i.i_crit_edge

for.body.i11.i.i.for.body.i11.i.i_crit_edge:      ; preds = %for.body.i11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i11.i.i

for.body.i11.i.i.for.inc_crit_edge:               ; preds = %for.body.i11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb9.i:                                         ; preds = %for.body
  %ctx10.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1
  %buf11.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %buf11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf11.i, align 4
  %52 = ptrtoint ptr %ctx10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctx10.i, align 4
  %force_8bit15.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.020, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %force_8bit15.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %force_8bit15.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool16.not.i = icmp eq i8 %55, 0
  br i1 %tobool16.not.i, label %land.end21.i, label %land.end21.thread.i

land.end21.thread.i:                              ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp1.not.i.i90108.i = icmp eq i32 %53, 0
  br i1 %cmp1.not.i.i90108.i, label %land.end21.thread.i.for.inc_crit_edge, label %land.end21.thread.i.for.body.lr.ph.i3.i.i_crit_edge

land.end21.thread.i.for.body.lr.ph.i3.i.i_crit_edge: ; preds = %land.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i3.i.i

land.end21.thread.i.for.inc_crit_edge:            ; preds = %land.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.end21.i:                                     ; preds = %sw.bb9.i
  %56 = ptrtoint ptr %options18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %options18.i, align 8
  %and19.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp1.not.i.i90.i = icmp eq i32 %53, 0
  br i1 %tobool20.not.i, label %if.else.i103.i, label %if.then.i91.i

if.then.i91.i:                                    ; preds = %land.end21.i
  br i1 %cmp1.not.i.i90.i, label %if.then.i91.i.for.inc_crit_edge, label %for.body.lr.ph.i.i93.i

if.then.i91.i.for.inc_crit_edge:                  ; preds = %if.then.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i.i93.i:                           ; preds = %if.then.i91.i
  %host_write.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 21
  %active_bank.i.i92.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 15
  br label %for.body.i.i102.i

for.body.i.i102.i:                                ; preds = %for.body.i.i102.i.for.body.i.i102.i_crit_edge, %for.body.lr.ph.i.i93.i
  %i.02.i.i94.i = phi i32 [ 0, %for.body.lr.ph.i.i93.i ], [ %add5.i.i.i, %for.body.i.i102.i.for.body.i.i102.i_crit_edge ]
  %58 = ptrtoint ptr %host_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host_write.i.i.i, align 4
  %60 = ptrtoint ptr %active_bank.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %active_bank.i.i92.i, align 4
  %shl.i.i95.i = shl i32 %61, 24
  %or.i.i96.i = or i32 %shl.i.i95.i, 201326594
  %add.i.i97.i = or i32 %i.02.i.i94.i, 1
  %arrayidx.i.i98.i = getelementptr i8, ptr %51, i32 %add.i.i97.i
  %62 = ptrtoint ptr %arrayidx.i.i98.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i98.i, align 1
  %conv.i.i99.i = zext i8 %63 to i32
  %shl1.i.i.i = shl nuw nsw i32 %conv.i.i99.i, 16
  %arrayidx2.i.i100.i = getelementptr i8, ptr %51, i32 %i.02.i.i94.i
  %64 = ptrtoint ptr %arrayidx2.i.i100.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx2.i.i100.i, align 1
  %conv3.i.i.i = zext i8 %65 to i32
  %or4.i.i.i = or i32 %shl1.i.i.i, %conv3.i.i.i
  tail call void %59(ptr noundef %11, i32 noundef %or.i.i96.i, i32 noundef %or4.i.i.i) #6
  %add5.i.i.i = add i32 %i.02.i.i94.i, 2
  %cmp.i.i101.i = icmp ult i32 %add5.i.i.i, %53
  br i1 %cmp.i.i101.i, label %for.body.i.i102.i.for.body.i.i102.i_crit_edge, label %for.body.i.i102.i.for.inc_crit_edge

for.body.i.i102.i.for.inc_crit_edge:              ; preds = %for.body.i.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.i.i102.i.for.body.i.i102.i_crit_edge:    ; preds = %for.body.i.i102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i102.i

if.else.i103.i:                                   ; preds = %land.end21.i
  br i1 %cmp1.not.i.i90.i, label %if.else.i103.i.for.inc_crit_edge, label %if.else.i103.i.for.body.lr.ph.i3.i.i_crit_edge

if.else.i103.i.for.body.lr.ph.i3.i.i_crit_edge:   ; preds = %if.else.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i3.i.i

if.else.i103.i.for.inc_crit_edge:                 ; preds = %if.else.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.lr.ph.i3.i.i:                            ; preds = %if.else.i103.i.for.body.lr.ph.i3.i.i_crit_edge, %land.end21.thread.i.for.body.lr.ph.i3.i.i_crit_edge
  %host_write.i1.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 21
  %active_bank.i2.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 15
  br label %for.body.i8.i.i

for.body.i8.i.i:                                  ; preds = %for.body.i8.i.i.for.body.i8.i.i_crit_edge, %for.body.lr.ph.i3.i.i
  %i.06.i.i.i = phi i32 [ 0, %for.body.lr.ph.i3.i.i ], [ %inc.i.i104.i, %for.body.i8.i.i.for.body.i8.i.i_crit_edge ]
  %66 = ptrtoint ptr %host_write.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host_write.i1.i.i, align 4
  %68 = ptrtoint ptr %active_bank.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %active_bank.i2.i.i, align 4
  %shl.i4.i.i = shl i32 %69, 24
  %or.i5.i.i = or i32 %shl.i4.i.i, 201326594
  %arrayidx.i6.i.i = getelementptr i8, ptr %51, i32 %i.06.i.i.i
  %70 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i6.i.i, align 1
  %conv.i7.i.i = zext i8 %71 to i32
  tail call void %67(ptr noundef %11, i32 noundef %or.i5.i.i, i32 noundef %conv.i7.i.i) #6
  %inc.i.i104.i = add nuw i32 %i.06.i.i.i, 1
  %exitcond.not.i.i105.i = icmp eq i32 %inc.i.i104.i, %53
  br i1 %exitcond.not.i.i105.i, label %for.body.i8.i.i.for.inc_crit_edge, label %for.body.i8.i.i.for.body.i8.i.i_crit_edge

for.body.i8.i.i.for.body.i8.i.i_crit_edge:        ; preds = %for.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i8.i.i

for.body.i8.i.i.for.inc_crit_edge:                ; preds = %for.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb22.i:                                        ; preds = %for.body
  %irq_lock.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 11
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i.i) #6
  %irq_status5.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 10
  %72 = ptrtoint ptr %irq_status5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq_status5.i.i.i, align 4
  %and.i.i.i = and i32 %73, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i.i, i32 noundef %call2.i.i.i) #6
  br label %denali_exec_waitrdy.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb22.i
  %irq_mask7.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 9
  %74 = ptrtoint ptr %irq_mask7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4096, ptr %irq_mask7.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 7
  %75 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %complete.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i.i, i32 noundef %call2.i.i.i) #6
  %call11.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i.i.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.end16.i.i.i, label %if.end17.i.i.i

do.end16.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 1
  %76 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.27, i32 noundef 4096) #9
  br label %denali_exec_waitrdy.exit.i

if.end17.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %irq_status5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq_status5.i.i.i, align 4
  br label %denali_exec_waitrdy.exit.i

denali_exec_waitrdy.exit.i:                       ; preds = %if.end17.i.i.i, %do.end16.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %73, %if.then.i.i.i ], [ %79, %if.end17.i.i.i ], [ 0, %do.end16.i.i.i ]
  %call2.i3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i.i) #6
  %80 = ptrtoint ptr %irq_status5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %irq_status5.i.i.i, align 4
  %irq_mask.i.i.i = getelementptr inbounds %struct.denali_controller, ptr %11, i32 0, i32 9
  %81 = ptrtoint ptr %irq_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %irq_mask.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i.i, i32 noundef %call2.i3.i.i) #6
  %and.i.i = and i32 %retval.0.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %denali_exec_waitrdy.exit.i.cleanup_crit_edge, label %denali_exec_waitrdy.exit.i.for.inc_crit_edge

denali_exec_waitrdy.exit.i.for.inc_crit_edge:     ; preds = %denali_exec_waitrdy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

denali_exec_waitrdy.exit.i.cleanup_crit_edge:     ; preds = %denali_exec_waitrdy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.end27.i:                                     ; preds = %for.body
  %.b78.i = load i1, ptr @denali_exec_instr.__already_done, align 1
  br i1 %.b78.i, label %land.end27.i.cleanup_crit_edge, label %if.then.i, !prof !107

land.end27.i.cleanup_crit_edge:                   ; preds = %land.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %land.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @denali_exec_instr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1142, i32 noundef 9, ptr noundef nonnull @.str.35, i32 noundef %13) #6
  br label %cleanup

for.inc:                                          ; preds = %denali_exec_waitrdy.exit.i.for.inc_crit_edge, %for.body.i8.i.i.for.inc_crit_edge, %if.else.i103.i.for.inc_crit_edge, %for.body.i.i102.i.for.inc_crit_edge, %if.then.i91.i.for.inc_crit_edge, %land.end21.thread.i.for.inc_crit_edge, %for.body.i11.i.i.for.inc_crit_edge, %if.else.i.i.for.inc_crit_edge, %for.body.i.i.i.for.inc_crit_edge, %if.then.i.i.for.inc_crit_edge, %land.end.thread.i.for.inc_crit_edge, %for.body.i88.i.for.inc_crit_edge, %sw.bb1.i.for.inc_crit_edge, %sw.bb.i
  %inc = add nuw i32 %i.020, 1
  %82 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %83
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.i, %land.end27.i.cleanup_crit_edge, %denali_exec_waitrdy.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %land.end27.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -5, %denali_exec_waitrdy.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_setup_interface(ptr nocapture noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_x_rate = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk_x_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_x_rate, align 4
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 1000000000000) #10, !srcloc !109
  %asmresult1.i = extractvalue { i64, i64 } %8, 1
  %extract.t1261 = trunc i64 %asmresult1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t1261)
  %tobool189.not = icmp eq i32 %extract.t1261, 0
  br i1 %tobool189.not, label %if.end.cleanup_crit_edge, label %if.end416

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end416:                                        ; preds = %if.end
  %clk_rate = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_rate, align 4
  %div1941154 = lshr i32 %10, 1
  %add195 = add i32 %div1941154, %7
  %div410 = udiv i32 %add195, %10
  %11 = add i32 %div410, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %11)
  %12 = icmp ult i32 %11, -3
  br i1 %12, label %if.end416.cleanup_crit_edge, label %if.end425

if.end416.cleanup_crit_edge:                      ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end425:                                        ; preds = %if.end416
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chipnr)
  %cmp426 = icmp eq i32 %chipnr, -1
  br i1 %cmp426, label %if.end425.cleanup_crit_edge, label %if.end429

if.end425.cleanup_crit_edge:                      ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end429:                                        ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #8
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 26
  %13 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tRHW_min, align 8
  %add431 = add i32 %extract.t1261, -1
  %reg = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 288
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %sub432 = add i32 %add431, %14
  %div433 = udiv i32 %sub432, %extract.t1261
  %18 = tail call i32 @llvm.smin.i32(i32 %div433, i32 63)
  %19 = and i32 %17, -1056964609
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and463 = and i32 %18, 63
  %or464 = or i32 %20, %and463
  %re_2_we465 = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 3
  %21 = ptrtoint ptr %re_2_we465 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or464, ptr %re_2_we465, align 4
  %tRHZ_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 27
  %22 = ptrtoint ptr %tRHZ_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tRHZ_max, align 4
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg, align 4
  %add.ptr477 = getelementptr i8, ptr %25, i32 656
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr477) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %sub467 = add i32 %add431, %23
  %div468 = udiv i32 %sub467, %extract.t1261
  %27 = tail call i32 @llvm.smin.i32(i32 %div468, i32 63)
  %28 = and i32 %26, -1056964609
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %and503 = and i32 %27, 63
  %or504 = or i32 %29, %and503
  %re_2_re505 = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 8
  %30 = ptrtoint ptr %re_2_re505 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or504, ptr %re_2_re505, align 4
  %tCCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tCCS_min, align 8
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %33 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tWHR_min, align 4
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %add.ptr524 = getelementptr i8, ptr %36, i32 256
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr524) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %38 = tail call i32 @llvm.umax.i32(i32 %32, i32 %34)
  %sub514 = add i32 %add431, %38
  %div515 = udiv i32 %sub514, %extract.t1261
  %39 = tail call i32 @llvm.smin.i32(i32 %div515, i32 63)
  %40 = and i32 %37, -1056964609
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %and550 = and i32 %39, 63
  %or551 = or i32 %41, %and550
  %hwhr2_and_we_2_re = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 1
  %42 = ptrtoint ptr %hwhr2_and_we_2_re to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or551, ptr %hwhr2_and_we_2_re, align 4
  %revision = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 17
  %43 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %revision, align 4
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %45 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tADL_min, align 4
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg, align 4
  %add.ptr568 = getelementptr i8, ptr %48, i32 272
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr568) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %sub558 = add i32 %add431, %46
  %div559 = udiv i32 %sub558, %extract.t1261
  call void @__sanitizer_cov_trace_const_cmp4(i32 1281, i32 %44)
  %cmp552 = icmp ult i32 %44, 1281
  %spec.select = select i1 %cmp552, i32 63, i32 127
  %50 = tail call i32 @llvm.smin.i32(i32 %div559, i32 %spec.select)
  %51 = and i32 %49, -2130706433
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %and594 = and i32 %50, 127
  %or595 = or i32 %52, %and594
  %tcwaw_and_addr_2_data = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 2
  %53 = ptrtoint ptr %tcwaw_and_addr_2_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or595, ptr %tcwaw_and_addr_2_data, align 4
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %54 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tREH_min, align 8
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %56 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tWH_min, align 8
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg, align 4
  %add.ptr614 = getelementptr i8, ptr %59, i32 512
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr614) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %61 = tail call i32 @llvm.umax.i32(i32 %55, i32 %57)
  %sub604 = add i32 %add431, %61
  %div605 = udiv i32 %sub604, %extract.t1261
  %62 = tail call i32 @llvm.smin.i32(i32 %div605, i32 31)
  %63 = and i32 %60, -520093697
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %and640 = and i32 %62, 31
  %or641 = or i32 %64, %and640
  %rdwr_en_hi_cnt = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 6
  %65 = ptrtoint ptr %rdwr_en_hi_cnt to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or641, ptr %rdwr_en_hi_cnt, align 4
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %66 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tREA_max, align 4
  %add643 = add i32 %extract.t1261, 9999
  %sub644 = add i32 %add643, %67
  %div645 = udiv i32 %sub644, %extract.t1261
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %68 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tRP_min, align 4
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %70 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tWP_min, align 8
  %72 = tail call i32 @llvm.umax.i32(i32 %69, i32 %71)
  %sub654 = add i32 %add431, %72
  %div655 = udiv i32 %sub654, %extract.t1261
  %tRHOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 25
  %73 = ptrtoint ptr %tRHOH_min to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tRHOH_min, align 4
  %div656 = udiv i32 %74, %extract.t1261
  %sub657 = sub i32 %div645, %div656
  %75 = tail call i32 @llvm.smax.i32(i32 %div655, i32 %sub657)
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %76 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tRC_min, align 8
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %78 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tWC_min, align 4
  %80 = tail call i32 @llvm.umax.i32(i32 %77, i32 %79)
  %sub673 = add i32 %add431, %80
  %div674 = udiv i32 %sub673, %extract.t1261
  %sub675 = sub i32 %div674, %62
  %81 = tail call i32 @llvm.smax.i32(i32 %75, i32 %sub675)
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 31)
  %sub693 = add i32 %add431, %74
  %div694 = udiv i32 %sub693, %extract.t1261
  %add690 = add i32 %div694, %div645
  %add695 = add i32 %add690, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %add695)
  %cmp698 = icmp ult i32 %add695, 30
  %div6961155 = lshr i32 %add695, 1
  %cond703 = select i1 %cmp698, i32 %div6961155, i32 15
  %83 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg, align 4
  %add.ptr705 = getelementptr i8, ptr %84, i32 304
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr705) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %86 = and i32 %85, -251658241
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %and731 = and i32 %cond703, 15
  %or732 = or i32 %and731, %87
  %acc_clks733 = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 4
  %88 = ptrtoint ptr %acc_clks733 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or732, ptr %acc_clks733, align 4
  %89 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg, align 4
  %add.ptr735 = getelementptr i8, ptr %90, i32 496
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr735) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %92 = and i32 %91, -520093697
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %and761 = and i32 %82, 31
  %or762 = or i32 %93, %and761
  %rdwr_en_lo_cnt = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 5
  %94 = ptrtoint ptr %rdwr_en_lo_cnt to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or762, ptr %rdwr_en_lo_cnt, align 4
  %tCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 16
  %95 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tCS_min, align 8
  %tCEA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 8
  %97 = ptrtoint ptr %tCEA_max to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tCEA_max, align 8
  %99 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg, align 4
  %add.ptr793 = getelementptr i8, ptr %100, i32 544
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr793) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %sub764 = add i32 %add431, %96
  %div765 = udiv i32 %sub764, %extract.t1261
  %sub766 = sub i32 %div765, %82
  %sub768 = add i32 %add431, %98
  %div769 = udiv i32 %sub768, %extract.t1261
  %sub770 = sub i32 %div769, %cond703
  %102 = tail call i32 @llvm.smax.i32(i32 %sub766, i32 %sub770)
  %103 = tail call i32 @llvm.smax.i32(i32 %102, i32 0)
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 31)
  %105 = and i32 %101, -520093697
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %or820 = or i32 %104, %106
  %cs_setup_cnt = getelementptr %struct.denali_chip, ptr %chip, i32 0, i32 3, i32 %chipnr, i32 7
  %107 = ptrtoint ptr %cs_setup_cnt to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or820, ptr %cs_setup_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end429, %if.end425.cleanup_crit_edge, %if.end416.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end429 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end416.cleanup_crit_edge ], [ 0, %if.end425.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__ksymtab_denali_calc_ecc_bytes, !1, !"__ksymtab_denali_calc_ecc_bytes", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/denali.c", i32 920, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1194, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @denali_chip_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @denali_chip_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1200, i32 5}
!12 = !{ptr @denali_chip_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @denali_chip_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1210, i32 6}
!16 = !{ptr @denali_chip_init._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @denali_chip_init._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1226, i32 15}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1257, i32 3}
!22 = !{ptr @denali_chip_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @denali_chip_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_denali_chip_init, !25, !"__ksymtab_denali_chip_init", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1270, i32 1}
!26 = !{ptr @denali_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1280, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1305, i32 4}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @denali_init._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @denali_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1351, i32 3}
!37 = !{ptr @denali_init._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @denali_init._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_denali_init, !40, !"__ksymtab_denali_init", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1359, i32 1}
!41 = !{ptr @__ksymtab_denali_remove, !42, !"__ksymtab_denali_remove", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1377, i32 1}
!43 = !{ptr @__UNIQUE_ID_description367, !44, !"__UNIQUE_ID_description367", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1379, i32 1}
!45 = !{ptr @__UNIQUE_ID_author368, !46, !"__UNIQUE_ID_author368", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1380, i32 1}
!47 = !{ptr @__UNIQUE_ID_file369, !48, !"__UNIQUE_ID_file369", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1381, i32 1}
!49 = !{ptr @__UNIQUE_ID_license370, !48, !"__UNIQUE_ID_license370", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/denali.c", i32 663, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @denali_dma_xfer.__UNIQUE_ID_ddebug288, !51, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/denali.c", i32 184, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @denali_wait_for_irq._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @denali_wait_for_irq._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @denali_ooblayout_ops, !65, !"denali_ooblayout_ops", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/denali.c", i32 952, i32 39}
!66 = !{ptr @nand_controller_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @denali_controller_ops, !70, !"denali_controller_ops", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1173, i32 41}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1021, i32 3}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @denali_attach_chip._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @denali_attach_chip._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1025, i32 2}
!78 = !{ptr @denali_attach_chip.__UNIQUE_ID_ddebug361, !77, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/denali.c", i32 987, i32 3}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @denali_multidev_fixup._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @denali_multidev_fixup._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/denali.c", i32 1141, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"data_setup_on_host", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/denali.c", i32 767, i32 28}
!89 = !{ptr @init_completion.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../include/linux/completion.h", i32 87, i32 2}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i32 0, i32 33}
!102 = !{i8 0, i8 2}
!103 = !{i64 6280129}
!104 = !{i64 2153820478}
!105 = !{i64 2153821833}
!106 = !{i64 6279711}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 2148395773, i64 2148395778, i64 2148395791, i64 2148395835, i64 2148395869, i64 2148395890}
!109 = !{i64 2148420960, i64 2148421240, i64 2148421574, i64 2148421908}
