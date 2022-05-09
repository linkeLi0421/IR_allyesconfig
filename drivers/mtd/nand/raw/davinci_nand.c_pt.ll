; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/davinci_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/davinci_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.davinci_nand_pdata = type { i32, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.davinci_nand_info = type { %struct.nand_controller, %struct.nand_chip, ptr, i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.46 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.46 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.43, i32 }
%union.anon.43 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.44, i8 }
%union.anon.44 = type { ptr }
%struct.mtd_oob_region = type { i32, i32 }

@__UNIQUE_ID_alias200 = internal constant [41 x i8] c"davinci_nand.alias=platform:davinci_nand\00", section ".modinfo", align 1
@__initcall__kmod_davinci_nand__201_852_nand_davinci_driver_init6 = internal global ptr @nand_davinci_driver_init, section ".initcall6.init", align 4
@nand_davinci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nand_davinci_probe, ptr @nand_davinci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_nand_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nand_davinci_driver_exit = internal global ptr @nand_davinci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file202 = internal constant [52 x i8] c"davinci_nand.file=drivers/mtd/nand/raw/davinci_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [25 x i8] c"davinci_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [38 x i8] c"davinci_nand.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [51 x i8] c"davinci_nand.description=Davinci NAND flash driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"davinci_nand\00", [19 x i8] zeroinitializer }, align 32
@davinci_nand_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@nand_davinci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resource missing\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nand_davinci_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/davinci_nand.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nand_davinci_probe._entry_ptr = internal global ptr @nand_davinci_probe._entry, section ".printk_index", align 4
@nand_davinci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ioremap failed for resource %pR\0A\00", [63 x i8] zeroinitializer }, align 32
@nand_davinci_probe._entry_ptr.8 = internal global ptr @nand_davinci_probe._entry.6, section ".printk_index", align 4
@davinci_nand_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@davinci_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @davinci_nand_attach_chip, ptr null, ptr @davinci_nand_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@nand_davinci_probe.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no NAND chip(s) found\0A\00", [41 x i8] zeroinitializer }, align 32
@nand_davinci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 814, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"controller rev. %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nand_davinci_probe._entry_ptr.13 = internal global ptr @nand_davinci_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,davinci-chipselect\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,davinci-mask-ale\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,davinci-mask-cle\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,davinci-mask-chipsel\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,davinci-ecc-mode\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,davinci-ecc-bits\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,davinci-nand-buswidth\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,davinci-nand-use-bbt\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,keystone-nand\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davinci_nand_lock\00", [46 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@davinci_nand_attach_chip.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"davinci_nand_attach_chip\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"too small\0A\00", [21 x i8] zeroinitializer }, align 32
@ecc4_busy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@hwecc4_small_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @hwecc4_ooblayout_small_ecc, ptr @hwecc4_ooblayout_small_free }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"nand_davinci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 842, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 846, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"davinci_nand_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 423, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 742, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 758, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"davinci_nand_lock\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"davinci_nand_controller_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 704, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 801, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 813, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 445, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 451, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 454, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 457, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 460, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 461, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 463, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 465, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 469, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 473, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 477, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 492, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 464, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 62, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1105, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 540, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"ecc4_busy\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [27 x i8] c"hwecc4_small_ooblayout_ops\00", align 1
@___asan_gen_.142 = private constant [39 x i8] c"../drivers/mtd/nand/raw/davinci_nand.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 417, i32 39 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias200, ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_nand_davinci_driver_exit, ptr @__initcall__kmod_davinci_nand__201_852_nand_davinci_driver_init6, ptr @nand_davinci_driver_exit, ptr @nand_davinci_probe._entry, ptr @nand_davinci_probe._entry.10, ptr @nand_davinci_probe._entry.6, ptr @nand_davinci_probe._entry_ptr, ptr @nand_davinci_probe._entry_ptr.13, ptr @nand_davinci_probe._entry_ptr.8, ptr @nand_davinci_driver, ptr @.str, ptr @davinci_nand_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @davinci_nand_lock, ptr @davinci_nand_controller_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @nand_controller_init.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ecc4_busy, ptr @hwecc4_small_ooblayout_ops], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_davinci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_nand_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_davinci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_davinci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_nand_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_davinci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc4_busy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwecc4_small_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_davinci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nand_davinci_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nand_davinci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @nand_davinci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_davinci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nand_davinci_get_pdata(ptr noundef %pdev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %core_chipsel = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %core_chipsel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_chipsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp6 = icmp ugt i32 %2, 3
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2304, i32 noundef 3520) #10
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %tobool15.not = icmp eq ptr %call13, null
  %tobool17.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call13) #10
  %cmp.i186 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %5 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call14, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call14, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %call29 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %6, i32 noundef %add.i) #10
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %call14) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %pdev37 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %pdev37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev37, align 8
  %base38 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %base38 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call29, ptr %base38, align 8
  %vaddr39 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %vaddr39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %vaddr39, align 4
  %chip = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %15 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %16 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end36.nand_set_flash_node.exit_crit_edge

if.end36.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef %14, ptr noundef nonnull @.str.26, ptr noundef %name.i.i) #10
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end36.nand_set_flash_node.exit_crit_edge
  %bbt_options = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 10
  %18 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bbt_options, align 4
  %bbt_options46 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %bbt_options46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bbt_options46, align 8
  %options = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 9
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options, align 4
  %options48 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %options48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %options48, align 8
  %bbt_td = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 11
  %24 = ptrtoint ptr %bbt_td to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bbt_td, align 4
  %bbt_td50 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %bbt_td50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %bbt_td50, align 4
  %bbt_md = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 12
  %27 = ptrtoint ptr %bbt_md to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bbt_md, align 4
  %bbt_md52 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 14
  %29 = ptrtoint ptr %bbt_md52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %bbt_md52, align 8
  %timing = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 13
  %30 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %timing, align 4
  %timing53 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 11
  %32 = ptrtoint ptr %timing53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %timing53, align 4
  %33 = ptrtoint ptr %vaddr39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vaddr39, align 4
  %current_cs = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %current_cs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %current_cs, align 8
  %36 = ptrtoint ptr %core_chipsel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_chipsel, align 4
  %core_chipsel56 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 10
  %38 = ptrtoint ptr %core_chipsel56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %core_chipsel56, align 8
  %mask_chipsel = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 3
  %39 = ptrtoint ptr %mask_chipsel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask_chipsel, align 4
  %mask_chipsel57 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %mask_chipsel57 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mask_chipsel57, align 4
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool58.not = icmp eq i32 %43, 0
  %. = select i1 %tobool58.not, i32 8, i32 %43
  %mask_ale59 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %mask_ale59 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %., ptr %mask_ale59, align 8
  %mask_cle = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 1
  %45 = ptrtoint ptr %mask_cle to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask_cle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool60.not = icmp eq i32 %46, 0
  %cond64 = select i1 %tobool60.not, i32 16, i32 %46
  %mask_cle65 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 9
  %47 = ptrtoint ptr %mask_cle65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond64, ptr %mask_cle65, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %48 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base38, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 96
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !89
  %51 = ptrtoint ptr %core_chipsel56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %core_chipsel56, align 8
  %shl = shl nuw i32 1, %52
  %or = or i32 %shl, %50
  %53 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base38, align 8
  %add.ptr.i188 = getelementptr i8, ptr %54, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %or) #10, !srcloc !90
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @nand_controller_init.__key) #10
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @davinci_nand_controller_ops, ptr %ops, align 4
  %controller71 = getelementptr inbounds %struct.davinci_nand_info, ptr %call.i, i32 0, i32 1, i32 32
  %56 = ptrtoint ptr %controller71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %controller71, align 4
  %57 = ptrtoint ptr %mask_chipsel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask_chipsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool74.not = icmp eq i32 %58, 0
  %cond75 = select i1 %tobool74.not, i32 1, i32 2
  %call.i189 = tail call i32 @nand_scan_with_ids(ptr noundef %chip, i32 noundef %cond75, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %cmp77 = icmp slt i32 %call.i189, 0
  br i1 %cmp77, label %do.body79, label %if.end89

do.body79:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_davinci_probe.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_davinci_probe, %if.then84)) #10
          to label %cleanup [label %if.then84], !srcloc !91

if.then84:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nand_davinci_probe.__UNIQUE_ID_ddebug199, ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end89:                                         ; preds = %nand_set_flash_node.exit
  %parts = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 4
  %59 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parts, align 4
  %tobool90.not = icmp eq ptr %60, null
  br i1 %tobool90.not, label %if.else, label %if.then91

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %nr_parts = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call, i32 0, i32 5
  %61 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_parts, align 4
  %call93 = tail call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef null, ptr noundef null, ptr noundef nonnull %60, i32 noundef %62) #10
  br label %if.end95

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %call94 = tail call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  br label %if.end95

if.end95:                                         ; preds = %if.else, %if.then91
  %ret.0 = phi i32 [ %call93, %if.then91 ], [ %call94, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp96 = icmp slt i32 %ret.0, 0
  br i1 %cmp96, label %err_cleanup_nand, label %if.end98

if.end98:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base38, align 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !89
  %shr = lshr i32 %65, 8
  %and = and i32 %shr, 255
  %and104 = and i32 %65, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %and, i32 noundef %and104) #13
  br label %cleanup

err_cleanup_nand:                                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nand_cleanup(ptr noundef %chip) #10
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup_nand, %if.end98, %if.then84, %do.body79, %do.end34, %if.then24, %do.end, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %4, %if.then24 ], [ %ret.0, %err_cleanup_nand ], [ 0, %if.end98 ], [ -99, %do.end34 ], [ -22, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call.i189, %if.then84 ], [ %call.i189, %do.body79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_davinci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.davinci_nand_info, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %placement = getelementptr inbounds %struct.davinci_nand_info, ptr %1, i32 0, i32 1, i32 33, i32 1
  %2 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %placement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 false, ptr @ecc4_busy, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %chip1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !92

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 836, i32 noundef 9, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nand_davinci_get_pdata(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %mode = alloca ptr, align 4
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end83_crit_edge

entry.if.end83_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end83_crit_edge, label %if.then

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #10
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #10
  %5 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %prop, align 4, !annotation !93
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #10
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %platform_data.i, align 8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool12.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool12.not, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end
  %9 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prop, align 4
  %core_chipsel = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %core_chipsel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %core_chipsel, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i111 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.15, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i111)
  %tobool19.not = icmp sgt i32 %call.i.i111, -1
  br i1 %tobool19.not, label %if.then20, label %if.then13.if.end21_crit_edge

if.then13.if.end21_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prop, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then13.if.end21_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i.i112 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i112)
  %tobool25.not = icmp sgt i32 %call.i.i112, -1
  br i1 %tobool25.not, label %if.then26, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prop, align 4
  %mask_cle = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %mask_cle to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mask_cle, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i.i113 = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i113)
  %tobool31.not = icmp sgt i32 %call.i.i113, -1
  br i1 %tobool31.not, label %if.then32, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prop, align 4
  %mask_chipsel = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %mask_chipsel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mask_chipsel, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end27.if.end33_crit_edge
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call36 = call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef nonnull %mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end33.if.end53_crit_edge

if.end33.if.end53_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then38:                                        ; preds = %if.end33
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mode, align 4
  %call39 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.19, ptr noundef %30, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.then38.if.end42_crit_edge

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %engine_type = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %engine_type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %engine_type, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then38.if.end42_crit_edge
  %call43 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.20, ptr noundef %30, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %engine_type46 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %engine_type46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %engine_type46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %call48 = call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.21, ptr noundef %30, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %engine_type51 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %engine_type51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %engine_type51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge, %if.end33.if.end53_crit_edge
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call.i.i114 = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.22, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i114)
  %tobool57.not = icmp sgt i32 %call.i.i114, -1
  br i1 %tobool57.not, label %if.then58, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prop, align 4
  %conv = trunc i32 %37 to i8
  %ecc_bits = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %ecc_bits, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end53.if.end59_crit_edge
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.i.i115 = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.23, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i115)
  %tobool63.not = icmp sgt i32 %call.i.i115, -1
  br i1 %tobool63.not, label %land.lhs.true64, label %if.end59.if.end67_crit_edge

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.lhs.true64:                                  ; preds = %if.end59
  %41 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %42)
  %cmp = icmp eq i32 %42, 16
  br i1 %cmp, label %if.then66, label %land.lhs.true64.if.end67_crit_edge

land.lhs.true64.if.end67_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  %options = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %options, align 4
  %or = or i32 %44, 2
  store i32 %or, ptr %options, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true64.if.end67_crit_edge, %if.end59.if.end67_crit_edge
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call.i116 = call ptr @of_find_property(ptr noundef %46, ptr noundef nonnull @.str.24, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i116, null
  br i1 %tobool.i.not, label %if.end67.if.end72_crit_edge, label %if.then71

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %bbt_options = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 10
  %47 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 131072, ptr %bbt_options, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end67.if.end72_crit_edge
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call75 = call i32 @of_device_is_compatible(ptr noundef %49, ptr noundef nonnull @.str.25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end72.cleanup.thread_crit_edge, label %if.then77

if.end72.cleanup.thread_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %options78 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call.i, i32 0, i32 9
  %50 = ptrtoint ptr %options78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %options78, align 4
  %or79 = or i32 %51, 512
  store i32 %or79, ptr %options78, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then77, %if.end72.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  br label %if.end83

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  br label %return

if.end83:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end83_crit_edge, %entry.if.end83_crit_edge
  %52 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform_data.i, align 8
  br label %return

return:                                           ; preds = %if.end83, %cleanup
  %retval.1 = phi ptr [ %53, %if.end83 ], [ %retval.0, %cleanup ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %chip, i32 2168
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call2 = tail call fastcc ptr @nand_davinci_get_pdata(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup72

if.end:                                           ; preds = %entry
  %engine_type = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call2, i32 0, i32 6
  %3 = ptrtoint ptr %engine_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %engine_type, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %5 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ecc, align 8
  %ecc_placement = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call2, i32 0, i32 7
  %6 = ptrtoint ptr %ecc_placement to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_placement, align 4
  %placement = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 1
  %8 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %placement, align 4
  %9 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.cleanup72_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb12
  ]

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ecc_bits = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call2, i32 0, i32 8
  %10 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ecc_bits, align 4
  br label %cleanup72

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ecc_bits10 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call2, i32 0, i32 8
  %11 = ptrtoint ptr %ecc_bits10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ecc_bits10, align 4
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %algo, align 8
  br label %cleanup72

sw.bb12:                                          ; preds = %if.end
  %ecc_bits13 = getelementptr inbounds %struct.davinci_nand_pdata, ptr %call2, i32 0, i32 8
  %13 = ptrtoint ptr %ecc_bits13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ecc_bits13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp = icmp eq i8 %14, 4
  br i1 %cmp, label %if.then15, label %if.else56

if.then15:                                        ; preds = %sw.bb12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize, align 4
  %div111 = lshr i32 %16, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %16)
  %tobool.not = icmp ult i32 %16, 512
  br i1 %tobool.not, label %if.then15.do.body_crit_edge, label %lor.lhs.false

if.then15.do.body_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then15
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp16 = icmp ult i32 %18, 16
  br i1 %cmp16, label %lor.lhs.false.do.body_crit_edge, label %if.end26

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then15.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_nand_attach_chip.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_nand_attach_chip, %if.then23)) #10
          to label %cleanup72 [label %if.then23], !srcloc !91

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_nand_attach_chip.__UNIQUE_ID_ddebug198, ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %cleanup72

if.end26:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %.b112 = load i1, ptr @ecc4_busy, align 1
  br i1 %.b112, label %if.end29.thread, label %if.end33

if.end29.thread:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  br label %cleanup72

if.end33:                                         ; preds = %if.end26
  store i1 true, ptr @ecc4_busy, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @davinci_nand_lock) #10
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %21 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nand_davinci_calculate_4bit, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %22 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nand_davinci_correct_4bit, ptr %correct, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %23 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nand_davinci_hwctl_4bit, ptr %hwctl, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %bytes, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 10
  %25 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %options, align 8
  %algo40 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %26 = ptrtoint ptr %algo40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %algo40, align 8
  %27 = zext i32 %div111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %div111, label %if.end33.cleanup72_crit_edge [
    i32 1, label %if.then43
    i32 4, label %if.end33.if.then50_crit_edge
    i32 8, label %if.end33.if.then50_crit_edge124
  ]

if.end33.if.then50_crit_edge124:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.end33.if.then50_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.end33.cleanup72_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.then43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %28 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hwecc4_small_ooblayout_ops, ptr %ooblayout1.i, align 8
  br label %if.end67

if.then50:                                        ; preds = %if.end33.if.then50_crit_edge, %if.end33.if.then50_crit_edge124
  %call51 = tail call ptr @nand_get_large_page_ooblayout() #10
  %ooblayout1.i113 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %29 = ptrtoint ptr %ooblayout1.i113 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call51, ptr %ooblayout1.i113, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %30 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nand_read_page_hwecc_oob_first, ptr %read_page, align 8
  br label %if.end67

if.else56:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %calculate58 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %31 = ptrtoint ptr %calculate58 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nand_davinci_calculate_1bit, ptr %calculate58, align 8
  %correct60 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %32 = ptrtoint ptr %correct60 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nand_davinci_correct_1bit, ptr %correct60, align 4
  %hwctl62 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %33 = ptrtoint ptr %hwctl62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nand_davinci_hwctl_1bit, ptr %hwctl62, align 4
  %bytes64 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %34 = ptrtoint ptr %bytes64 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %bytes64, align 4
  %algo66 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %35 = ptrtoint ptr %algo66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %algo66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else56, %if.then50, %if.then43
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %36 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 512, ptr %size, align 8
  %37 = ptrtoint ptr %ecc_bits13 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ecc_bits13, align 4
  %conv70 = zext i8 %38 to i32
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %39 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv70, ptr %strength, align 4
  br label %cleanup72

cleanup72:                                        ; preds = %if.end67, %if.end33.cleanup72_crit_edge, %if.end29.thread, %if.then23, %do.body, %sw.bb9, %sw.bb, %if.end.cleanup72_crit_edge, %if.then
  %retval.1 = phi i32 [ %2, %if.then ], [ -22, %if.end.cleanup72_crit_edge ], [ 0, %if.end67 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ -22, %do.body ], [ -16, %if.end29.thread ], [ -5, %if.end33.cleanup72_crit_edge ], [ -22, %if.then23 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_nand_exec_op(ptr nocapture noundef %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup6_crit_edge, label %if.end

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup6

if.end:                                           ; preds = %entry
  %vaddr = getelementptr i8, ptr %chip, i32 2180
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 4
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %mask_chipsel = getelementptr i8, ptr %chip, i32 2188
  %4 = ptrtoint ptr %mask_chipsel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_chipsel, align 4
  %mul = mul i32 %5, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %current_cs = getelementptr i8, ptr %chip, i32 2184
  %6 = ptrtoint ptr %current_cs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %current_cs, align 8
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22.not = icmp eq i32 %8, 0
  br i1 %cmp22.not, label %if.end.cleanup6_crit_edge, label %for.body.lr.ph

if.end.cleanup6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup6

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %base.i = getelementptr i8, ptr %chip, i32 2176
  %mask_ale.i = getelementptr i8, ptr %chip, i32 2192
  %mask_cle.i = getelementptr i8, ptr %chip, i32 2196
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %12, label %for.body.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb10.i
    i32 4, label %sw.bb18.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

for.cond.preheader.i:                             ; preds = %for.body
  %ctx2.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1
  %14 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp111.not.i = icmp eq i32 %15, 0
  br i1 %cmp111.not.i, label %for.cond.preheader.i.sw.epilog.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sw.epilog.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1, i32 0, i32 1
  br label %for.body.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctx.i, align 4
  %18 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %current_cs, align 8
  %20 = ptrtoint ptr %mask_cle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask_cle.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 %17) #10, !srcloc !95
  br label %sw.epilog.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0112.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %23, i32 %i.0112.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %26 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %current_cs, align 8
  %28 = ptrtoint ptr %mask_ale.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask_ale.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %25) #10, !srcloc !95
  %inc.i = add nuw i32 %i.0112.i, 1
  %30 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctx2.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %31
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog.i_crit_edge

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sw.bb6.i:                                         ; preds = %for.body
  %ctx7.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 4
  %34 = ptrtoint ptr %ctx7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx7.i, align 4
  %force_8bit.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %force_8bit.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i = icmp ne i8 %37, 0
  %38 = ptrtoint ptr %33 to i32
  %or.i.i = or i32 %35, %38
  %and1.i.i = and i32 %or.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %39 = or i1 %tobool.i, %tobool2.not.i.i
  br i1 %39, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %current_cs, align 8
  tail call void @__raw_readsb(ptr noundef %41, ptr noundef %33, i32 noundef %35) #10
  br label %sw.epilog.i

if.else.i.i:                                      ; preds = %sw.bb6.i
  %and.i.i = and i32 %or.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  %42 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %current_cs, align 8
  br i1 %tobool4.not.i.i, label %if.else7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i.i = lshr i32 %35, 1
  tail call void @__raw_readsw(ptr noundef %43, ptr noundef %33, i32 noundef %shr.i.i) #10
  br label %sw.epilog.i

if.else7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr9.i.i = lshr i32 %35, 2
  tail call void @__raw_readsl(ptr noundef %43, ptr noundef %33, i32 noundef %shr9.i.i) #10
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.body
  %ctx11.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1
  %buf12.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %buf12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf12.i, align 4
  %46 = ptrtoint ptr %ctx11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctx11.i, align 4
  %force_8bit16.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %force_8bit16.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %force_8bit16.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool17.i = icmp ne i8 %49, 0
  %50 = ptrtoint ptr %45 to i32
  %or.i91.i = or i32 %47, %50
  %and1.i92.i = and i32 %or.i91.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i92.i)
  %tobool2.not.i93.i = icmp ne i32 %and1.i92.i, 0
  %51 = or i1 %tobool17.i, %tobool2.not.i93.i
  br i1 %51, label %if.then.i95.i, label %if.else.i99.i

if.then.i95.i:                                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %current_cs, align 8
  tail call void @__raw_writesb(ptr noundef %53, ptr noundef %45, i32 noundef %47) #10
  br label %sw.epilog.i

if.else.i99.i:                                    ; preds = %sw.bb10.i
  %and.i96.i = and i32 %or.i91.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96.i)
  %tobool4.not.i97.i = icmp eq i32 %and.i96.i, 0
  %54 = ptrtoint ptr %current_cs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %current_cs, align 8
  br i1 %tobool4.not.i97.i, label %if.else7.i103.i, label %if.then5.i101.i

if.then5.i101.i:                                  ; preds = %if.else.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i100.i = lshr i32 %47, 1
  tail call void @__raw_writesw(ptr noundef %55, ptr noundef %45, i32 noundef %shr.i100.i) #10
  br label %sw.epilog.i

if.else7.i103.i:                                  ; preds = %if.else.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr9.i102.i = lshr i32 %47, 2
  tail call void @__raw_writesl(ptr noundef %55, ptr noundef %45, i32 noundef %shr9.i102.i) #10
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %for.body
  %ctx19.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 1
  %56 = ptrtoint ptr %ctx19.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctx19.i, align 4
  %mul.i = mul i32 %57, 1000
  %conv.i = zext i32 %mul.i to i64
  %call.i = tail call i64 @ktime_get() #10
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i.i = add i64 %mul.i.i, %call.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 668) #10
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 8
  %add.ptr30108.i = getelementptr i8, ptr %59, i32 100
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30108.i) #10, !srcloc !89
  %61 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool32.not110.i = icmp eq i32 %61, 0
  br i1 %tobool32.not110.i, label %if.end34.lr.ph.i, label %sw.bb18.i.sw.epilog.i_crit_edge

sw.bb18.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end34.lr.ph.i:                                 ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool35.not.i = icmp eq i32 %mul.i, 0
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then48.i.if.end34.i_crit_edge, %if.end34.lr.ph.i
  br i1 %tobool35.not.i, label %if.end34.i.if.then48.i_crit_edge, label %land.lhs.true.i

if.end34.i.if.then48.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

land.lhs.true.i:                                  ; preds = %if.end34.i
  %call36.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call36.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call36.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end50.i, label %land.lhs.true.i.if.then48.i_crit_edge

land.lhs.true.i.if.then48.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

if.then48.i:                                      ; preds = %land.lhs.true.i.if.then48.i_crit_edge, %if.end34.i.if.then48.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #10
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %63, i32 100
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #10, !srcloc !89
  %65 = and i32 %64, 16777216
  %tobool32.not.i = icmp eq i32 %65, 0
  br i1 %tobool32.not.i, label %if.then48.i.if.end34.i_crit_edge, label %if.then48.i.sw.epilog.i_crit_edge

if.then48.i.sw.epilog.i_crit_edge:                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then48.i.if.end34.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

for.end50.i:                                      ; preds = %land.lhs.true.i
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 8
  %add.ptr43.i = getelementptr i8, ptr %67, i32 100
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #10, !srcloc !89
  %69 = and i32 %68, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool53.not.i = icmp eq i32 %69, 0
  br i1 %tobool53.not.i, label %for.end50.i.cleanup6_crit_edge, label %for.end50.i.sw.epilog.i_crit_edge

for.end50.i.sw.epilog.i_crit_edge:                ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

for.end50.i.cleanup6_crit_edge:                   ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup6

sw.epilog.i:                                      ; preds = %for.end50.i.sw.epilog.i_crit_edge, %if.then48.i.sw.epilog.i_crit_edge, %sw.bb18.i.sw.epilog.i_crit_edge, %if.else7.i103.i, %if.then5.i101.i, %if.then.i95.i, %if.else7.i.i, %if.then5.i.i, %if.then.i.i, %for.body.i.sw.epilog.i_crit_edge, %sw.bb.i, %for.cond.preheader.i.sw.epilog.i_crit_edge, %for.body.sw.epilog.i_crit_edge
  %delay_ns.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.023, i32 2
  %70 = ptrtoint ptr %delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool57.not.i = icmp eq i32 %71, 0
  br i1 %tobool57.not.i, label %sw.epilog.i.for.inc_crit_edge, label %cond.false8.i.i

sw.epilog.i.for.inc_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.false8.i.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %71, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %div.i.i) #10
  br label %for.inc

for.inc:                                          ; preds = %cond.false8.i.i, %sw.epilog.i.for.inc_crit_edge
  %inc = add nuw i32 %i.023, 1
  %73 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %74
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup6_crit_edge

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup6

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %for.end50.i.cleanup6_crit_edge, %if.end.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup6_crit_edge ], [ 0, %if.end.cleanup6_crit_edge ], [ 0, %for.inc.cleanup6_crit_edge ], [ -110, %for.end50.i.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_davinci_calculate_4bit(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_readmode = getelementptr i8, ptr %chip, i32 2172
  %0 = ptrtoint ptr %is_readmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_readmode, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %base.i.i = getelementptr i8, ptr %chip, i32 2176
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %6, i32 196
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #10, !srcloc !89
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %9, i32 200
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #10, !srcloc !89
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %12, i32 204
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #10, !srcloc !89
  %conv = trunc i32 %4 to i8
  %incdec.ptr = getelementptr i8, ptr %ecc_code, i32 1
  %14 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %ecc_code, align 1
  %shr = lshr i32 %4, 8
  %and5 = and i32 %shr, 3
  %shr7 = lshr i32 %4, 14
  %and8 = and i32 %shr7, 252
  %or = or i32 %and5, %and8
  %conv9 = trunc i32 %or to i8
  %incdec.ptr10 = getelementptr i8, ptr %ecc_code, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %incdec.ptr, align 1
  %and.i = lshr i32 %4, 22
  %shr12 = and i32 %and.i, 15
  %and2.i = shl i32 %7, 4
  %or16 = or i32 %and2.i, %shr12
  %conv17 = trunc i32 %or16 to i8
  %incdec.ptr18 = getelementptr i8, ptr %ecc_code, i32 3
  %16 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %incdec.ptr10, align 1
  %shr20 = lshr i32 %7, 4
  %and21 = and i32 %shr20, 63
  %shr23 = lshr i32 %7, 10
  %and24 = and i32 %shr23, 192
  %or25 = or i32 %and21, %and24
  %conv26 = trunc i32 %or25 to i8
  %incdec.ptr27 = getelementptr i8, ptr %ecc_code, i32 4
  %17 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv26, ptr %incdec.ptr18, align 1
  %shr29 = lshr i32 %7, 18
  %conv31 = trunc i32 %shr29 to i8
  %incdec.ptr32 = getelementptr i8, ptr %ecc_code, i32 5
  %18 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv31, ptr %incdec.ptr27, align 1
  %conv.1 = trunc i32 %10 to i8
  %incdec.ptr.1 = getelementptr i8, ptr %ecc_code, i32 6
  %19 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.1, ptr %incdec.ptr32, align 1
  %shr.1 = lshr i32 %10, 8
  %and5.1 = and i32 %shr.1, 3
  %shr7.1 = lshr i32 %10, 14
  %and8.1 = and i32 %shr7.1, 252
  %or.1 = or i32 %and5.1, %and8.1
  %conv9.1 = trunc i32 %or.1 to i8
  %incdec.ptr10.1 = getelementptr i8, ptr %ecc_code, i32 7
  %20 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv9.1, ptr %incdec.ptr.1, align 1
  %and5.i = lshr i32 %10, 22
  %shr12.1 = and i32 %and5.i, 15
  %and8.i = shl i32 %13, 4
  %or16.1 = or i32 %and8.i, %shr12.1
  %conv17.1 = trunc i32 %or16.1 to i8
  %incdec.ptr18.1 = getelementptr i8, ptr %ecc_code, i32 8
  %21 = ptrtoint ptr %incdec.ptr10.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17.1, ptr %incdec.ptr10.1, align 1
  %shr20.1 = lshr i32 %13, 4
  %and21.1 = and i32 %shr20.1, 63
  %shr23.1 = lshr i32 %13, 10
  %and24.1 = and i32 %shr23.1, 192
  %or25.1 = or i32 %and21.1, %and24.1
  %conv26.1 = trunc i32 %or25.1 to i8
  %incdec.ptr27.1 = getelementptr i8, ptr %ecc_code, i32 9
  %22 = ptrtoint ptr %incdec.ptr18.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv26.1, ptr %incdec.ptr18.1, align 1
  %shr29.1 = lshr i32 %13, 18
  %conv31.1 = trunc i32 %shr29.1 to i8
  %23 = ptrtoint ptr %incdec.ptr27.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv31.1, ptr %incdec.ptr27.1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_davinci_correct_4bit(ptr nocapture noundef readonly %chip, ptr nocapture noundef %data, ptr noundef %ecc_code, ptr nocapture noundef readnone %null) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ecc_code to i32
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !92

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 267, i32 noundef 9, ptr noundef null) #10
  br label %cleanup173

if.end23:                                         ; preds = %entry
  %1 = ptrtoint ptr %ecc_code to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ecc_code, align 2
  %3 = and i16 %2, 1023
  %4 = lshr i16 %2, 10
  %arrayidx31 = getelementptr i16, ptr %ecc_code, i32 1
  %5 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx31, align 2
  %shl = shl i16 %6, 6
  %and33 = and i16 %shl, 960
  %or = or i16 %and33, %4
  %7 = lshr i16 %6, 4
  %8 = and i16 %7, 1023
  %9 = lshr i16 %6, 14
  %arrayidx46 = getelementptr i16, ptr %ecc_code, i32 2
  %10 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx46, align 2
  %shl48 = shl i16 %11, 2
  %and49 = and i16 %shl48, 1020
  %or50 = or i16 %and49, %9
  %12 = lshr i16 %11, 8
  %arrayidx56 = getelementptr i16, ptr %ecc_code, i32 3
  %13 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx56, align 2
  %shl58 = shl i16 %14, 8
  %and59 = and i16 %shl58, 768
  %or60 = or i16 %and59, %12
  %15 = lshr i16 %14, 2
  %16 = and i16 %15, 1023
  %17 = lshr i16 %14, 12
  %arrayidx73 = getelementptr i16, ptr %ecc_code, i32 4
  %18 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx73, align 2
  %shl75 = shl i16 %19, 4
  %and76 = and i16 %shl75, 1008
  %or77 = or i16 %and76, %17
  %20 = lshr i16 %19, 6
  %base.i = getelementptr i8, ptr %chip, i32 2176
  %conv88 = zext i16 %20 to i32
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  %add.ptr.i221 = getelementptr i8, ptr %22, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221, i32 %conv88) #10, !srcloc !90
  %conv88.1 = zext i16 %or77 to i32
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.1 = getelementptr i8, ptr %24, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.1, i32 %conv88.1) #10, !srcloc !90
  %conv88.2 = zext i16 %16 to i32
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.2 = getelementptr i8, ptr %26, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.2, i32 %conv88.2) #10, !srcloc !90
  %conv88.3 = zext i16 %or60 to i32
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.3 = getelementptr i8, ptr %28, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.3, i32 %conv88.3) #10, !srcloc !90
  %conv88.4 = zext i16 %or50 to i32
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.4 = getelementptr i8, ptr %30, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.4, i32 %conv88.4) #10, !srcloc !90
  %conv88.5 = zext i16 %8 to i32
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.5 = getelementptr i8, ptr %32, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.5, i32 %conv88.5) #10, !srcloc !90
  %conv88.6 = zext i16 %or to i32
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.6 = getelementptr i8, ptr %34, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.6, i32 %conv88.6) #10, !srcloc !90
  %conv88.7 = zext i16 %3 to i32
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i221.7 = getelementptr i8, ptr %36, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.7, i32 %conv88.7) #10, !srcloc !90
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i223 = getelementptr i8, ptr %38, i32 100
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #10, !srcloc !89
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 192
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !89
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %44, i32 196
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #10, !srcloc !89
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %47, i32 200
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #10, !srcloc !89
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %50, i32 204
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #10, !srcloc !89
  %and.i250 = or i32 %45, %42
  %or92251 = or i32 %and.i250, %48
  %or94252 = or i32 %or92251, %51
  %or96 = and i32 %or94252, 67044351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or96)
  %tobool97.not = icmp eq i32 %or96, 0
  br i1 %tobool97.not, label %if.end23.cleanup173_crit_edge, label %if.end99

if.end23.cleanup173_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup173

if.end99:                                         ; preds = %if.end23
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %add.ptr.i225 = getelementptr i8, ptr %53, i32 208
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #10, !srcloc !89
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 8
  %add.ptr.i227 = getelementptr i8, ptr %56, i32 96
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #10, !srcloc !89
  %or102 = or i32 %57, 8192
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 8
  %add.ptr.i229 = getelementptr i8, ptr %59, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %or102) #10, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 100
  %spec.select.i.neg257 = select i1 %cmp.i, i32 -1073741822, i32 -1
  %add.neg = sub i32 %spec.select.i.neg257, %60
  br label %do.body104

do.body104:                                       ; preds = %land.rhs.do.body104_crit_edge, %if.end99
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 8
  %add.ptr.i231 = getelementptr i8, ptr %62, i32 100
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !98
  %64 = and i32 %63, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp118 = icmp eq i32 %64, 0
  br i1 %cmp118, label %land.rhs, label %do.body104.for.cond123.preheader_crit_edge

do.body104.for.cond123.preheader_crit_edge:       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond123.preheader

land.rhs:                                         ; preds = %do.body104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %65
  %cmp120 = icmp slt i32 %sub, 0
  br i1 %cmp120, label %land.rhs.do.body104_crit_edge, label %land.rhs.for.cond123.preheader_crit_edge

land.rhs.for.cond123.preheader_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond123.preheader

land.rhs.do.body104_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body104

for.cond123.preheader:                            ; preds = %land.rhs.for.cond123.preheader_crit_edge, %do.body104.for.cond123.preheader_crit_edge
  br label %for.cond123

for.cond123:                                      ; preds = %cleanup, %for.cond123.preheader
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 8
  %add.ptr.i233 = getelementptr i8, ptr %67, i32 100
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #10, !srcloc !89
  %shr125 = lshr i32 %68, 8
  %and126 = and i32 %shr125, 15
  %69 = zext i32 %and126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %and126, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb128
    i32 2, label %for.cond123.for.cond143.preheader_crit_edge
    i32 3, label %for.cond123.for.cond143.preheader_crit_edge279
  ]

for.cond123.for.cond143.preheader_crit_edge279:   ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond143.preheader

for.cond123.for.cond143.preheader_crit_edge:      ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond143.preheader

sw.bb:                                            ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 8
  %add.ptr.i235 = getelementptr i8, ptr %71, i32 216
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #10, !srcloc !89
  br label %cleanup173

sw.bb128:                                         ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 8
  %add.ptr.i237 = getelementptr i8, ptr %74, i32 216
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #10, !srcloc !89
  br label %cleanup173

cleanup:                                          ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !100
  br label %for.cond123

for.cond143.preheader:                            ; preds = %for.cond123.for.cond143.preheader_crit_edge, %for.cond123.for.cond143.preheader_crit_edge279
  %shr131 = lshr i32 %68, 16
  %and132 = and i32 %shr131, 3
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 8
  %add.ptr.i243 = getelementptr i8, ptr %77, i32 208
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243) #10, !srcloc !89
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 8
  %add.ptr.i245 = getelementptr i8, ptr %80, i32 216
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245) #10, !srcloc !89
  %phi.bo = and i32 %78, 1023
  %phi.cast276 = trunc i32 %81 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %phi.bo)
  %cmp163 = icmp ugt i32 %phi.bo, 7
  br i1 %cmp163, label %if.then165, label %for.cond143.preheader.if.end169_crit_edge

for.cond143.preheader.if.end169_crit_edge:        ; preds = %for.cond143.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169

if.then165:                                       ; preds = %for.cond143.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %sub162 = sub nsw i32 519, %phi.bo
  %arrayidx166 = getelementptr i8, ptr %data, i32 %sub162
  %82 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx166, align 1
  %conv168 = xor i8 %83, %phi.cast276
  store i8 %conv168, ptr %arrayidx166, align 1
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %for.cond143.preheader.if.end169_crit_edge
  %corrected.1 = phi i32 [ 1, %if.then165 ], [ 0, %for.cond143.preheader.if.end169_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %exitcond.not = icmp eq i32 %and132, 0
  br i1 %exitcond.not, label %if.end169.cleanup173_crit_edge, label %if.else.1

if.end169.cleanup173_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup173

if.else.1:                                        ; preds = %if.end169
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 8
  %add.ptr.i243.1 = getelementptr i8, ptr %85, i32 208
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243.1) #10, !srcloc !89
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 8
  %add.ptr.i245.1 = getelementptr i8, ptr %88, i32 216
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245.1) #10, !srcloc !89
  %phi.bo267 = lshr i32 %86, 16
  %phi.bo268 = and i32 %phi.bo267, 1023
  %phi.bo274 = lshr i32 %89, 16
  %phi.cast275 = trunc i32 %phi.bo274 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %phi.bo268)
  %cmp163.1 = icmp ugt i32 %phi.bo268, 7
  br i1 %cmp163.1, label %if.then165.1, label %if.else.1.if.end169.1_crit_edge

if.else.1.if.end169.1_crit_edge:                  ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169.1

if.then165.1:                                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  %sub162.1 = sub nsw i32 519, %phi.bo268
  %arrayidx166.1 = getelementptr i8, ptr %data, i32 %sub162.1
  %90 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx166.1, align 1
  %conv168.1 = xor i8 %91, %phi.cast275
  store i8 %conv168.1, ptr %arrayidx166.1, align 1
  %inc.1 = add nuw nsw i32 %corrected.1, 1
  br label %if.end169.1

if.end169.1:                                      ; preds = %if.then165.1, %if.else.1.if.end169.1_crit_edge
  %corrected.1.1 = phi i32 [ %inc.1, %if.then165.1 ], [ %corrected.1, %if.else.1.if.end169.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and132)
  %exitcond.not.1 = icmp eq i32 %and132, 1
  br i1 %exitcond.not.1, label %if.end169.1.cleanup173_crit_edge, label %if.then149.2

if.end169.1.cleanup173_crit_edge:                 ; preds = %if.end169.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup173

if.then149.2:                                     ; preds = %if.end169.1
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 8
  %add.ptr.i239.2 = getelementptr i8, ptr %93, i32 212
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239.2) #10, !srcloc !89
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 8
  %add.ptr.i241.2 = getelementptr i8, ptr %96, i32 220
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.2) #10, !srcloc !89
  %phi.bo269 = and i32 %94, 1023
  %phi.cast273 = trunc i32 %97 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %phi.bo269)
  %cmp163.2 = icmp ugt i32 %phi.bo269, 7
  br i1 %cmp163.2, label %if.then165.2, label %if.then149.2.if.end169.2_crit_edge

if.then149.2.if.end169.2_crit_edge:               ; preds = %if.then149.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169.2

if.then165.2:                                     ; preds = %if.then149.2
  call void @__sanitizer_cov_trace_pc() #12
  %sub162.2 = sub nsw i32 519, %phi.bo269
  %arrayidx166.2 = getelementptr i8, ptr %data, i32 %sub162.2
  %98 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx166.2, align 1
  %conv168.2 = xor i8 %99, %phi.cast273
  store i8 %conv168.2, ptr %arrayidx166.2, align 1
  %inc.2 = add nsw i32 %corrected.1.1, 1
  br label %if.end169.2

if.end169.2:                                      ; preds = %if.then165.2, %if.then149.2.if.end169.2_crit_edge
  %corrected.1.2 = phi i32 [ %inc.2, %if.then165.2 ], [ %corrected.1.1, %if.then149.2.if.end169.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and132)
  %exitcond.not.2 = icmp eq i32 %and132, 2
  br i1 %exitcond.not.2, label %if.end169.2.cleanup173_crit_edge, label %if.then149.3

if.end169.2.cleanup173_crit_edge:                 ; preds = %if.end169.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup173

if.then149.3:                                     ; preds = %if.end169.2
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 8
  %add.ptr.i239.3 = getelementptr i8, ptr %101, i32 212
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239.3) #10, !srcloc !89
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 8
  %add.ptr.i241.3 = getelementptr i8, ptr %104, i32 220
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.3) #10, !srcloc !89
  %phi.bo270 = lshr i32 %102, 16
  %phi.bo271 = and i32 %phi.bo270, 1023
  %phi.bo272 = lshr i32 %105, 16
  %phi.cast = trunc i32 %phi.bo272 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %phi.bo271)
  %cmp163.3 = icmp ugt i32 %phi.bo271, 7
  br i1 %cmp163.3, label %if.then165.3, label %if.then149.3.cleanup173_crit_edge

if.then149.3.cleanup173_crit_edge:                ; preds = %if.then149.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup173

if.then165.3:                                     ; preds = %if.then149.3
  call void @__sanitizer_cov_trace_pc() #12
  %sub162.3 = sub nsw i32 519, %phi.bo271
  %arrayidx166.3 = getelementptr i8, ptr %data, i32 %sub162.3
  %106 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx166.3, align 1
  %conv168.3 = xor i8 %107, %phi.cast
  store i8 %conv168.3, ptr %arrayidx166.3, align 1
  %inc.3 = add nsw i32 %corrected.1.2, 1
  br label %cleanup173

cleanup173:                                       ; preds = %if.then165.3, %if.then149.3.cleanup173_crit_edge, %if.end169.2.cleanup173_crit_edge, %if.end169.1.cleanup173_crit_edge, %if.end169.cleanup173_crit_edge, %sw.bb128, %sw.bb, %if.end23.cleanup173_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %if.end23.cleanup173_crit_edge ], [ 0, %sw.bb ], [ -74, %sw.bb128 ], [ %corrected.1, %if.end169.cleanup173_crit_edge ], [ %corrected.1.1, %if.end169.1.cleanup173_crit_edge ], [ %corrected.1.2, %if.end169.2.cleanup173_crit_edge ], [ %inc.3, %if.then165.3 ], [ %corrected.1.2, %if.then149.3.cleanup173_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_davinci_hwctl_4bit(ptr nocapture noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %chip, i32 2176
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !89
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_nand_lock) #10
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %4, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #10, !srcloc !89
  %and = and i32 %5, -4145
  %core_chipsel = getelementptr i8, ptr %chip, i32 2200
  %6 = ptrtoint ptr %core_chipsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_chipsel, align 8
  %shl = shl i32 %7, 4
  %or = or i32 %and, %shl
  %or9 = or i32 %or, 4096
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %or9) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp10 = icmp eq i32 %mode, 0
  %is_readmode = getelementptr i8, ptr %chip, i32 2172
  %frombool = zext i1 %cmp10 to i8
  %10 = ptrtoint ptr %is_readmode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %is_readmode, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_nand_lock, i32 noundef %call5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_hwecc_oob_first(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_davinci_calculate_1bit(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core_chipsel.i = getelementptr i8, ptr %chip, i32 2200
  %0 = ptrtoint ptr %core_chipsel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_chipsel.i, align 8
  %mul.i = shl i32 %1, 2
  %add.i = add i32 %mul.i, 112
  %base.i.i = getelementptr i8, ptr %chip, i32 2176
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 %add.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #10, !srcloc !89
  %and = and i32 %4, 4095
  %and2 = lshr i32 %4, 4
  %shr = and i32 %and2, 16773120
  %or = or i32 %shr, %and
  %neg = xor i32 %or, -1
  %conv = trunc i32 %neg to i8
  %5 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %ecc_code, align 1
  %shr3 = lshr i32 %neg, 8
  %conv4 = trunc i32 %shr3 to i8
  %arrayidx5 = getelementptr i8, ptr %ecc_code, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %neg, 16
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr i8, ptr %ecc_code, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %arrayidx8, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nand_davinci_correct_1bit(ptr nocapture noundef readonly %chip, ptr nocapture noundef %dat, ptr nocapture noundef readonly %read_ecc, ptr nocapture noundef readonly %calc_ecc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %read_ecc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_ecc, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %read_ecc, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %read_ecc, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %6 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %calc_ecc, align 1
  %conv8 = zext i8 %7 to i32
  %arrayidx9 = getelementptr i8, ptr %calc_ecc, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %or12 = or i32 %shl11, %conv8
  %arrayidx13 = getelementptr i8, ptr %calc_ecc, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %or16 = or i32 %or12, %shl15
  %xor = xor i32 %or16, %or6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %shr = lshr i32 %xor, 12
  %xor.masked = and i32 %xor, 4095
  %and = xor i32 %shr, %xor.masked
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and)
  %cmp = icmp eq i32 %and, 4095
  br i1 %cmp, label %if.then19, label %if.else32

if.then19:                                        ; preds = %if.then
  %shr20 = lshr i32 %xor, 15
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr20, i32 %13)
  %cmp21 = icmp ult i32 %shr20, %13
  br i1 %cmp21, label %if.then23, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %and25 = and i32 %shr, 7
  %shl26 = shl nuw nsw i32 1, %and25
  %arrayidx28 = getelementptr i8, ptr %dat, i32 %shr20
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx28, align 1
  %16 = trunc i32 %shl26 to i8
  %conv31 = xor i8 %15, %16
  store i8 %conv31, ptr %arrayidx28, align 1
  br label %cleanup

if.else32:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.ctpop.i32(i32 %xor), !range !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %tobool34.not.inv = icmp ugt i32 %17, 1
  %. = select i1 %tobool34.not.inv, i32 -74, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.then23, %if.then19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then23 ], [ -74, %if.then19.cleanup_crit_edge ], [ %., %if.else32 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_davinci_hwctl_1bit(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %core_chipsel.i = getelementptr i8, ptr %chip, i32 2200
  %0 = ptrtoint ptr %core_chipsel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_chipsel.i, align 8
  %mul.i = shl i32 %1, 2
  %add.i = add i32 %mul.i, 112
  %base.i.i = getelementptr i8, ptr %chip, i32 2176
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 %add.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #10, !srcloc !89
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @davinci_nand_lock) #10
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 96
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #10, !srcloc !89
  %8 = ptrtoint ptr %core_chipsel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_chipsel.i, align 8
  %add = add i32 %9, 8
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %7
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %or) #10, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @davinci_nand_lock, i32 noundef %call6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hwecc4_ooblayout_small_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %section)
  %cmp = icmp sgt i32 %section, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %section to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %section, label %if.else6 [
    i32 0, label %if.end.return.sink.split_crit_edge
    i32 1, label %if.then3
  ]

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else6, %if.then3, %if.end.return.sink.split_crit_edge
  %.sink18 = phi i32 [ 13, %if.else6 ], [ 6, %if.then3 ], [ %section, %if.end.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 3, %if.else6 ], [ 2, %if.then3 ], [ 5, %if.end.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink18, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hwecc4_ooblayout_small_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %oobregion, align 4
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %sub = add i32 %3, -16
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else, %if.then1
  %.sink = phi i32 [ 5, %if.then1 ], [ %sub, %if.else ]
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !72, !73, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_alias200, !1, !"__UNIQUE_ID_alias200", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 850, i32 1}
!2 = !{ptr @__initcall__kmod_davinci_nand__201_852_nand_davinci_driver_init6, !3, !"__initcall__kmod_davinci_nand__201_852_nand_davinci_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 852, i32 1}
!4 = !{ptr @__exitcall_nand_davinci_driver_exit, !3, !"__exitcall_nand_davinci_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file202, !6, !"__UNIQUE_ID_file202", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 854, i32 1}
!7 = !{ptr @__UNIQUE_ID_license203, !6, !"__UNIQUE_ID_license203", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author204, !9, !"__UNIQUE_ID_author204", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 855, i32 1}
!10 = !{ptr @__UNIQUE_ID_description205, !11, !"__UNIQUE_ID_description205", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 856, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 846, i32 11}
!14 = !{ptr @nand_davinci_driver, !15, !"nand_davinci_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 842, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 742, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nand_davinci_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @nand_davinci_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 758, i32 3}
!26 = !{ptr @nand_davinci_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nand_davinci_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 801, i32 3}
!30 = !{ptr @nand_davinci_probe.__UNIQUE_ID_ddebug199, !29, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 813, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nand_davinci_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nand_davinci_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 445, i32 4}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 451, i32 4}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 454, i32 4}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 457, i32 4}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 460, i32 4}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 461, i32 17}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 463, i32 17}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 465, i32 17}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 469, i32 4}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 473, i32 4}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 477, i32 4}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 492, i32 10}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 62, i32 8}
!64 = !{ptr @davinci_nand_lock, !63, !"davinci_nand_lock", i1 false, i1 false}
!65 = !{ptr @nand_controller_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @davinci_nand_controller_ops, !69, !"davinci_nand_controller_ops", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 704, i32 41}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 540, i32 5}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @davinci_nand_attach_chip.__UNIQUE_ID_ddebug198, !71, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!74 = distinct !{null, !75, !"ecc4_busy", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 63, i32 13}
!76 = !{ptr @hwecc4_small_ooblayout_ops, !77, !"hwecc4_small_ooblayout_ops", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 417, i32 39}
!78 = !{ptr @davinci_nand_of_match, !79, !"davinci_nand_of_match", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/davinci_nand.c", i32 423, i32 34}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 4822296}
!90 = !{i64 4821878}
!91 = !{i64 2148713642, i64 2148713647, i64 2148713660, i64 2148713704, i64 2148713738, i64 2148713759}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{!"auto-init"}
!94 = !{i64 2152363026}
!95 = !{i64 4821681}
!96 = !{i8 0, i8 2}
!97 = !{i64 2153227475}
!98 = !{i64 2153227317}
!99 = !{i64 2153228138}
!100 = !{i64 2153227980}
!101 = !{i32 0, i32 25}
