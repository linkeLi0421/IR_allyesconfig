; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/omap2.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/omap2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_nand_info = type { %struct.nand_chip, ptr, i32, i8, i32, i32, ptr, i32, %struct.completion, ptr, i32, i32, i32, ptr, i32, ptr, %struct.gpmc_nand_regs, ptr, i8, ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.80, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.80 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpmc_nand_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr], [8 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.78, i32 }
%union.anon.78 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.79, i8 }
%union.anon.79 = type { ptr }
%struct.elm_errorvec = type { i8, i8, i32, [16 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_omap2_nand__260_2305_omap_nand_driver_init6 = internal global ptr @omap_nand_driver_init, section ".initcall6.init", align 4
@omap_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_nand_probe, ptr @omap_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_nand_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_nand_driver_exit = internal global ptr @omap_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias261 = internal constant [37 x i8] c"omap2_nand.alias=platform:omap2-nand\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [48 x i8] c"omap2_nand.file=drivers/mtd/nand/raw/omap2_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [23 x i8] c"omap2_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [67 x i8] c"omap2_nand.description=Glue layer for NAND flash on TI OMAP boards\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap2-nand\00", [21 x i8] zeroinitializer }, align 32
@omap_nand_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@omap_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get GPMC->NAND interface\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_nand_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/nand/raw/omap2.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_nand_probe._entry_ptr = internal global ptr @omap_nand_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap2-nand.%d\00", [18 x i8] zeroinitializer }, align 32
@omap_nand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set MTD name\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_nand_probe._entry_ptr.9 = internal global ptr @omap_nand_probe._entry.7, section ".printk_index", align 4
@omap_gpmc_controller_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@omap_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @omap_nand_attach_chip, ptr null, ptr @omap_nand_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap_gpmc_controller = internal global { %struct.nand_controller, [32 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rb\00", [29 x i8] zeroinitializer }, align 32
@omap_nand_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get ready gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_nand_probe._entry_ptr.13 = internal global ptr @omap_nand_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg not found in DT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_get_dt_info\00", [47 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry_ptr = internal global ptr @omap_get_dt_info._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,elm-id\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"elm_id\00", [25 x i8] zeroinitializer }, align 32
@omap_get_dt_info.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.16, ptr @.str.3, ptr @.str.20, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap2_nand\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,elm-id not in DT\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,nand-ecc-opt\00", [16 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.3, i32 1682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,nand-ecc-opt not found\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry_ptr.24 = internal global ptr @omap_get_dt_info._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ham1\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw-romcode\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bch4\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bch8\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bch16\00", [26 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.3, i32 1704, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unrecognized value for ti,nand-ecc-opt\0A\00", [56 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry_ptr.34 = internal global ptr @omap_get_dt_info._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,nand-xfer-type\00", [46 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.16, ptr @.str.3, i32 1717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unrecognized value for ti,nand-xfer-type\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_get_dt_info._entry_ptr.38 = internal global ptr @omap_get_dt_info._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prefetch-polled\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"polled\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prefetch-dma\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prefetch-irq\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxtx\00", [27 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA engine request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_nand_attach_chip\00", [42 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr = internal global ptr @omap_nand_attach_chip._entry, section ".printk_index", align 4
@omap_nand_attach_chip._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1873, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMA engine slave config failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.49 = internal global ptr @omap_nand_attach_chip._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmc-nand-fifo\00", [17 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.3, i32 1891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Requesting IRQ %d, error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.53 = internal global ptr @omap_nand_attach_chip._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmc-nand-count\00", [16 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.3, i32 1904, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.56 = internal global ptr @omap_nand_attach_chip._entry.55, section ".printk_index", align 4
@omap_nand_attach_chip._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.46, ptr @.str.3, i32 1914, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xfer_type %d not supported!\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.59 = internal global ptr @omap_nand_attach_chip._entry.57, section ".printk_index", align 4
@omap_nand_attach_chip._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.46, ptr @.str.3, i32 1934, ptr @.str.62, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nand: using OMAP_ECC_HAM1_CODE_HW\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.63 = internal global ptr @omap_nand_attach_chip._entry.60, section ".printk_index", align 4
@omap_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @omap_ooblayout_ecc, ptr @omap_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.46, ptr @.str.3, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nand: using OMAP_ECC_BCH4_CODE_HW_DETECTION_SW\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.66 = internal global ptr @omap_nand_attach_chip._entry.64, section ".printk_index", align 4
@omap_sw_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @omap_sw_ooblayout_ecc, ptr @omap_sw_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.46, ptr @.str.3, i32 1965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to use BCH library\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.69 = internal global ptr @omap_nand_attach_chip._entry.67, section ".printk_index", align 4
@omap_nand_attach_chip._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.46, ptr @.str.3, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nand: using OMAP_ECC_BCH4_CODE_HW ECC scheme\0A\00", [48 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.72 = internal global ptr @omap_nand_attach_chip._entry.70, section ".printk_index", align 4
@omap_nand_attach_chip._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.46, ptr @.str.3, i32 1988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nand: using OMAP_ECC_BCH8_CODE_HW_DETECTION_SW\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.75 = internal global ptr @omap_nand_attach_chip._entry.73, section ".printk_index", align 4
@omap_nand_attach_chip._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.46, ptr @.str.3, i32 2002, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to use BCH library\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.78 = internal global ptr @omap_nand_attach_chip._entry.76, section ".printk_index", align 4
@omap_nand_attach_chip._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.46, ptr @.str.3, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nand: using OMAP_ECC_BCH8_CODE_HW ECC scheme\0A\00", [48 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.81 = internal global ptr @omap_nand_attach_chip._entry.79, section ".printk_index", align 4
@omap_nand_attach_chip._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.46, ptr @.str.3, i32 2025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016Using OMAP_ECC_BCH16_CODE_HW ECC scheme\0A\00", [53 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.84 = internal global ptr @omap_nand_attach_chip._entry.82, section ".printk_index", align 4
@omap_nand_attach_chip._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.46, ptr @.str.3, i32 2040, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid or unsupported ECC scheme\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.87 = internal global ptr @omap_nand_attach_chip._entry.85, section ".printk_index", align 4
@omap_nand_attach_chip._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.46, ptr @.str.3, i32 2069, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Not enough OOB bytes: required = %d, available=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@omap_nand_attach_chip._entry_ptr.90 = internal global ptr @omap_nand_attach_chip._entry.88, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@omap_nand_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't DMA map a %d byte buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_nand_dma_transfer\00", [41 x i8] zeroinitializer }, align 32
@omap_nand_dma_transfer._entry_ptr = internal global ptr @omap_nand_dma_transfer._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@omap2_nand_ecc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CONFIG_MTD_NAND_ECC_SW_BCH not enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap2_nand_ecc_check\00", [43 x i8] zeroinitializer }, align 32
@omap2_nand_ecc_check._entry_ptr = internal global ptr @omap2_nand_ecc_check._entry, section ".printk_index", align 4
@omap2_nand_ecc_check._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 1640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CONFIG_MTD_NAND_OMAP_BCH not enabled\0A\00", [58 x i8] zeroinitializer }, align 32
@omap2_nand_ecc_check._entry_ptr.98 = internal global ptr @omap2_nand_ecc_check._entry.96, section ".printk_index", align 4
@omap2_nand_ecc_check._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 1644, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ELM not available\0A\00", [45 x i8] zeroinitializer }, align 32
@omap2_nand_ecc_check._entry_ptr.101 = internal global ptr @omap2_nand_ecc_check._entry.99, section ".printk_index", align 4
@is_elm_present._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 1594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ELM devicetree node not found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_elm_present\00", [17 x i8] zeroinitializer }, align 32
@is_elm_present._entry_ptr = internal global ptr @is_elm_present._entry, section ".printk_index", align 4
@is_elm_present._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.3, i32 1600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ELM device not found\0A\00", [42 x i8] zeroinitializer }, align 32
@is_elm_present._entry_ptr.106 = internal global ptr @is_elm_present._entry.104, section ".printk_index", align 4
@omap_enable_hwecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 875, ptr @.str.62, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: unrecognized Mode[%d]!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_enable_hwecc\00", [46 x i8] zeroinitializer }, align 32
@omap_enable_hwecc._entry_ptr = internal global ptr @omap_enable_hwecc._entry, section ".printk_index", align 4
@omap_compare_ecc.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_compare_ecc\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ECC UNCORRECTED_ERROR 1\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_compare_ecc.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.109, ptr @.str.3, ptr @.str.111, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ECC UNCORRECTED_ERROR B\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_compare_ecc.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.109, ptr @.str.3, ptr @.str.112, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Correcting single bit ECC error at offset: %d, bit: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_compare_ecc.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.109, ptr @.str.3, ptr @.str.113, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UNCORRECTED_ERROR default\0A\00", [37 x i8] zeroinitializer }, align 32
@bch4_polynomial = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(\13\CC9\96\AC\7F", [25 x i8] zeroinitializer }, align 32
@bch8_polynomial = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\EFQ.\09\ED\93\9A\C2\97y\E5$\B5", [19 x i8] zeroinitializer }, align 32
@bch4_vector = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"\00k1\DDA\BC\10", [25 x i8] zeroinitializer }, align 32
@bch8_vector = internal global { [13 x i8], [19 x i8] } { [13 x i8] c"\F3\DB\14\16\8B\D2\BE\CC\ACk\FF\99{", [19 x i8] zeroinitializer }, align 32
@bch16_vector = internal global { [26 x i8], [38 x i8] } { [26 x i8] c"\F5$\1C\D0a\B3\F1U.,\86\A3\ED6\1BxHv\A9;\97\D1z\93\07\0E", [38 x i8] zeroinitializer }, align 32
@omap_elm_correct_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid driver configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_elm_correct_data\00", [42 x i8] zeroinitializer }, align 32
@omap_elm_correct_data._entry_ptr = internal global ptr @omap_elm_correct_data._entry, section ".printk_index", align 4
@omap_elm_correct_data._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 1319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uncorrectable bit-flips found\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_elm_correct_data._entry_ptr.118 = internal global ptr @omap_elm_correct_data._entry.116, section ".printk_index", align 4
@omap_elm_correct_data.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.115, ptr @.str.3, ptr @.str.119, i8 1, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bitflip@dat[%d]=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_elm_correct_data.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.115, ptr @.str.3, ptr @.str.120, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bitflip@oob[%d]=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_elm_correct_data._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.3, i32 1358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid bit-flip @ %d:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_elm_correct_data._entry_ptr.123 = internal global ptr @omap_elm_correct_data._entry.121, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 11, i64 12]
@__sancov_gen_cov_switch_values.133 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"omap_nand_driver\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2296, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2300, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"omap_nand_ids\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [48 x i8] c"../include/linux/platform_data/mtd-nand-omap2.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 66, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2204, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2215, i32 9 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2217, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [33 x i8] c"omap_gpmc_controller_initialized\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [25 x i8] c"omap_nand_controller_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2172, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"omap_gpmc_controller\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2178, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2238, i32 58 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2241, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1665, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1666, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1673, i32 46 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1675, i32 47 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1677, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1681, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1682, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1686, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1688, i32 24 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1689, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1689, i32 37 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1691, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1696, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1701, i32 24 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1704, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1709, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1717, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1652, i32 32 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1653, i32 23 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1654, i32 29 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1655, i32 29 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 464, i32 31 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1854, i32 45 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1857, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1871, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1888, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1890, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1901, i32 12 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1903, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1914, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1934, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"omap_ooblayout_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1768, i32 39 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1951, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [22 x i8] c"omap_sw_ooblayout_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1819, i32 39 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1965, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1971, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1988, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2002, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2008, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2025, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2040, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 2067, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 389, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 87, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1634, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1639, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1644, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1594, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1600, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 874, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 730, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 735, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 752, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 765, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [16 x i8] c"bch4_polynomial\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 987, i32 12 }
@___asan_gen_.457 = private unnamed_addr constant [16 x i8] c"bch8_polynomial\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 988, i32 12 }
@___asan_gen_.460 = private unnamed_addr constant [12 x i8] c"bch4_vector\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 142, i32 15 }
@___asan_gen_.463 = private unnamed_addr constant [12 x i8] c"bch8_vector\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 140, i32 15 }
@___asan_gen_.466 = private unnamed_addr constant [13 x i8] c"bch16_vector\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 136, i32 15 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1247, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1318, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1345, i32 7 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1349, i32 7 }
@___asan_gen_.490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.494 = private constant [32 x i8] c"../drivers/mtd/nand/raw/omap2.c\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1356, i32 6 }
@___asan_gen_.496 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 1105, i32 2 }
@llvm.compiler.used = appending global [162 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_omap_nand_driver_exit, ptr @__initcall__kmod_omap2_nand__260_2305_omap_nand_driver_init6, ptr @is_elm_present._entry, ptr @is_elm_present._entry.104, ptr @is_elm_present._entry_ptr, ptr @is_elm_present._entry_ptr.106, ptr @omap2_nand_ecc_check._entry, ptr @omap2_nand_ecc_check._entry.96, ptr @omap2_nand_ecc_check._entry.99, ptr @omap2_nand_ecc_check._entry_ptr, ptr @omap2_nand_ecc_check._entry_ptr.101, ptr @omap2_nand_ecc_check._entry_ptr.98, ptr @omap_elm_correct_data._entry, ptr @omap_elm_correct_data._entry.116, ptr @omap_elm_correct_data._entry.121, ptr @omap_elm_correct_data._entry_ptr, ptr @omap_elm_correct_data._entry_ptr.118, ptr @omap_elm_correct_data._entry_ptr.123, ptr @omap_enable_hwecc._entry, ptr @omap_enable_hwecc._entry_ptr, ptr @omap_get_dt_info._entry, ptr @omap_get_dt_info._entry.22, ptr @omap_get_dt_info._entry.32, ptr @omap_get_dt_info._entry.36, ptr @omap_get_dt_info._entry_ptr, ptr @omap_get_dt_info._entry_ptr.24, ptr @omap_get_dt_info._entry_ptr.34, ptr @omap_get_dt_info._entry_ptr.38, ptr @omap_nand_attach_chip._entry, ptr @omap_nand_attach_chip._entry.47, ptr @omap_nand_attach_chip._entry.51, ptr @omap_nand_attach_chip._entry.55, ptr @omap_nand_attach_chip._entry.57, ptr @omap_nand_attach_chip._entry.60, ptr @omap_nand_attach_chip._entry.64, ptr @omap_nand_attach_chip._entry.67, ptr @omap_nand_attach_chip._entry.70, ptr @omap_nand_attach_chip._entry.73, ptr @omap_nand_attach_chip._entry.76, ptr @omap_nand_attach_chip._entry.79, ptr @omap_nand_attach_chip._entry.82, ptr @omap_nand_attach_chip._entry.85, ptr @omap_nand_attach_chip._entry.88, ptr @omap_nand_attach_chip._entry_ptr, ptr @omap_nand_attach_chip._entry_ptr.49, ptr @omap_nand_attach_chip._entry_ptr.53, ptr @omap_nand_attach_chip._entry_ptr.56, ptr @omap_nand_attach_chip._entry_ptr.59, ptr @omap_nand_attach_chip._entry_ptr.63, ptr @omap_nand_attach_chip._entry_ptr.66, ptr @omap_nand_attach_chip._entry_ptr.69, ptr @omap_nand_attach_chip._entry_ptr.72, ptr @omap_nand_attach_chip._entry_ptr.75, ptr @omap_nand_attach_chip._entry_ptr.78, ptr @omap_nand_attach_chip._entry_ptr.81, ptr @omap_nand_attach_chip._entry_ptr.84, ptr @omap_nand_attach_chip._entry_ptr.87, ptr @omap_nand_attach_chip._entry_ptr.90, ptr @omap_nand_dma_transfer._entry, ptr @omap_nand_dma_transfer._entry_ptr, ptr @omap_nand_driver_exit, ptr @omap_nand_probe._entry, ptr @omap_nand_probe._entry.11, ptr @omap_nand_probe._entry.7, ptr @omap_nand_probe._entry_ptr, ptr @omap_nand_probe._entry_ptr.13, ptr @omap_nand_probe._entry_ptr.9, ptr @omap_nand_driver, ptr @.str, ptr @omap_nand_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @omap_gpmc_controller_initialized, ptr @omap_nand_controller_ops, ptr @omap_gpmc_controller, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @omap_ooblayout_ops, ptr @.str.65, ptr @omap_sw_ooblayout_ops, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @init_completion.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @bch4_polynomial, ptr @bch8_polynomial, ptr @bch4_vector, ptr @bch8_vector, ptr @bch16_vector, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @nand_controller_init.__key, ptr @.str.124], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpmc_controller_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gpmc_controller to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_get_dt_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_get_dt_info._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_get_dt_info._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_get_dt_info._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sw_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_attach_chip._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nand_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_nand_ecc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_nand_ecc_check._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_nand_ecc_check._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_elm_present._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_elm_present._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_enable_hwecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch4_polynomial to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch8_polynomial to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch4_vector to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch8_vector to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch16_vector to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_elm_correct_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_elm_correct_data._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_elm_correct_data._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_nand_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_nand_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2592, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev3, align 8
  %call4 = tail call fastcc i32 @omap_get_dt_info(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %reg = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 16
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gpmc_cs, align 4
  %call8 = tail call ptr @gpmc_omap_get_nand_ops(ptr noundef %reg, i32 noundef %2) #11
  %ops = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %ops, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %7 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %nand_set_flash_node.exit, label %if.end13.if.end31_crit_edge

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

nand_set_flash_node.exit:                         ; preds = %if.end13
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef %name.i.i) #11
  %10 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %name.i.i, align 8
  %tobool17.not = icmp eq ptr %.pr, null
  br i1 %tobool17.not, label %if.then18, label %nand_set_flash_node.exit.if.end31_crit_edge

nand_set_flash_node.exit.if.end31_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then18:                                        ; preds = %nand_set_flash_node.exit
  %11 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpmc_cs, align 4
  %call21 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %12) #11
  %13 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %name.i.i, align 8
  %tobool24.not = icmp eq ptr %call21, null
  br i1 %tobool24.not, label %do.end28, label %if.then18.if.end31_crit_edge

if.then18.if.end31_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end28:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end31:                                         ; preds = %if.then18.if.end31_crit_edge, %nand_set_flash_node.exit.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  %call32 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call32) #11
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %fifo = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 15
  %15 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %fifo, align 4
  %16 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call32, align 4
  %phys_base = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phys_base, align 8
  %.b122 = load i1, ptr @omap_gpmc_controller_initialized, align 1
  br i1 %.b122, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @omap_nand_controller_ops, ptr getelementptr inbounds (%struct.nand_controller, ptr @omap_gpmc_controller, i32 0, i32 1), align 4
  tail call void @__mutex_init(ptr noundef nonnull @omap_gpmc_controller, ptr noundef nonnull @.str.124, ptr noundef nonnull @nand_controller_init.__key) #11
  store i1 true, ptr @omap_gpmc_controller_initialized, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %controller = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 32
  %19 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @omap_gpmc_controller, ptr %controller, align 4
  %call43 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 1) #11
  %ready_gpiod = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 20
  %20 = ptrtoint ptr %ready_gpiod to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call43, ptr %ready_gpiod, align 8
  %cmp.i123 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #14
  %21 = ptrtoint ptr %ready_gpiod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ready_gpiod, align 8
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  %flash_bbt = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 18
  %24 = ptrtoint ptr %flash_bbt to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flash_bbt, align 8, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool53.not = icmp eq i8 %25, 0
  br i1 %tobool53.not, label %if.end52.if.end55_crit_edge, label %if.then54

if.end52.if.end55_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bbt_options, align 8
  %or = or i32 %27, 131072
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end52.if.end55_crit_edge
  %data_in = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 25
  %28 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @omap_nand_data_in, ptr %data_in, align 4
  %data_out = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 26
  %29 = ptrtoint ptr %data_out to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @omap_nand_data_out, ptr %data_out, align 8
  %call.i124 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool57.not = icmp eq i32 %call.i124, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.return_error_crit_edge

if.end55.return_error_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_error

if.end59:                                         ; preds = %if.end55
  %call60 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %cleanup_nand

if.end63:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nand_cleanup(ptr noundef nonnull %call.i) #11
  br label %return_error

return_error:                                     ; preds = %cleanup_nand, %if.end55.return_error_crit_edge
  %err.0 = phi i32 [ %call.i124, %if.end55.return_error_crit_edge ], [ %call60, %cleanup_nand ]
  %dma = getelementptr inbounds %struct.omap_nand_info, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma, align 4
  %tobool.not.i = icmp eq ptr %32, null
  %cmp.i125 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i125
  br i1 %spec.select.i, label %return_error.if.end67_crit_edge, label %if.then65

return_error.if.end67_crit_edge:                  ; preds = %return_error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then65:                                        ; preds = %return_error
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %32) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %return_error.if.end67_crit_edge
  tail call void @rawnand_sw_bch_cleanup(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end63, %do.end49, %if.then36, %do.end28, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then36 ], [ %23, %do.end49 ], [ %err.0, %if.end67 ], [ 0, %if.end63 ], [ -12, %do.end28 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rawnand_sw_bch_cleanup(ptr noundef %1) #11
  %dma = getelementptr inbounds %struct.omap_nand_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end20_crit_edge, label %do.end, !prof !260

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2288, i32 noundef 9, ptr noundef null) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #11
  ret i32 %call4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_get_dt_info(ptr noundef %dev, ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  %args.i117 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %s = alloca ptr, align 4
  %cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #11
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %s, align 4, !annotation !261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #11
  %3 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cs, align 4, !annotation !261
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %cs, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs, align 4
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gpmc_cs, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %elm_of_node124 = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %elm_of_node124 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %elm_of_node124, align 4
  br label %if.then3

of_parse_phandle.exit:                            ; preds = %if.end
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %elm_of_node = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 6
  %11 = ptrtoint ptr %elm_of_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %elm_of_node, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.then3_crit_edge, label %of_parse_phandle.exit.if.end19_crit_edge

of_parse_phandle.exit.if.end19_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

of_parse_phandle.exit.if.then3_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %of_parse_phandle.exit.if.then3_crit_edge, %of_parse_phandle.exit.thread
  %elm_of_node127 = phi ptr [ %elm_of_node124, %of_parse_phandle.exit.thread ], [ %elm_of_node, %of_parse_phandle.exit.if.then3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i117) #11
  %12 = call ptr @memset(ptr %args.i117, i32 255, i32 72)
  %call.i118 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i119, label %of_parse_phandle.exit122, label %of_parse_phandle.exit122.thread

of_parse_phandle.exit122.thread:                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i117) #11
  %13 = ptrtoint ptr %elm_of_node127 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %elm_of_node127, align 4
  br label %do.body9

of_parse_phandle.exit122:                         ; preds = %if.then3
  %14 = ptrtoint ptr %args.i117 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i117, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i117) #11
  %16 = ptrtoint ptr %elm_of_node127 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %elm_of_node127, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %of_parse_phandle.exit122.do.body9_crit_edge, label %of_parse_phandle.exit122.if.end19_crit_edge

of_parse_phandle.exit122.if.end19_crit_edge:      ; preds = %of_parse_phandle.exit122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

of_parse_phandle.exit122.do.body9_crit_edge:      ; preds = %of_parse_phandle.exit122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.body9:                                         ; preds = %of_parse_phandle.exit122.do.body9_crit_edge, %of_parse_phandle.exit122.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_get_dt_info.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_get_dt_info, %if.then14)) #11
          to label %if.end19 [label %if.then14], !srcloc !262

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_get_dt_info.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %do.body9, %of_parse_phandle.exit122.if.end19_crit_edge, %of_parse_phandle.exit.if.end19_crit_edge
  %elm_of_node126 = phi ptr [ %elm_of_node127, %of_parse_phandle.exit122.if.end19_crit_edge ], [ %elm_of_node127, %if.then14 ], [ %elm_of_node, %of_parse_phandle.exit.if.end19_crit_edge ], [ %elm_of_node127, %do.body9 ]
  %call20 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull %s) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s, align 4
  %call27 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(3) @.str.25) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ecc_opt = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 5
  %19 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ecc_opt, align 8
  br label %if.end74

if.else:                                          ; preds = %if.end26
  %call30 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(5) @.str.26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else.if.then37_crit_edge, label %lor.lhs.false

if.else.if.then37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.else
  %call32 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(3) @.str.27) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false34

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %call35 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(11) @.str.28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %lor.lhs.false34.if.then37_crit_edge, label %if.else39

lor.lhs.false34.if.then37_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false34.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge, %if.else.if.then37_crit_edge
  %ecc_opt38 = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %ecc_opt38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %ecc_opt38, align 8
  br label %if.end74

if.else39:                                        ; preds = %lor.lhs.false34
  %call40 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(5) @.str.29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.else50

if.then42:                                        ; preds = %if.else39
  %21 = ptrtoint ptr %elm_of_node126 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %elm_of_node126, align 4
  %tobool44.not = icmp eq ptr %22, null
  %ecc_opt48 = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 5
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %ecc_opt48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %ecc_opt48, align 8
  br label %if.end74

if.else47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %ecc_opt48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %ecc_opt48, align 8
  br label %if.end74

if.else50:                                        ; preds = %if.else39
  %call51 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(5) @.str.30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.else61

if.then53:                                        ; preds = %if.else50
  %25 = ptrtoint ptr %elm_of_node126 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %elm_of_node126, align 4
  %tobool55.not = icmp eq ptr %26, null
  %ecc_opt59 = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 5
  br i1 %tobool55.not, label %if.else58, label %if.then56

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ecc_opt59 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %ecc_opt59, align 8
  br label %if.end74

if.else58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %ecc_opt59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %ecc_opt59, align 8
  br label %if.end74

if.else61:                                        ; preds = %if.else50
  %call62 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(6) @.str.31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %do.end69

if.then64:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #13
  %ecc_opt65 = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 5
  %29 = ptrtoint ptr %ecc_opt65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %ecc_opt65, align 8
  br label %if.end74

do.end69:                                         ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end74:                                         ; preds = %if.then64, %if.else58, %if.then56, %if.else47, %if.then45, %if.then37, %if.then29
  %call75 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %s) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %for.cond.preheader, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end74
  %30 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s, align 4
  %call79 = call i32 @strcasecmp(ptr noundef %31, ptr noundef nonnull @.str.39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.cond.preheader.if.then81_crit_edge, label %for.inc

for.cond.preheader.if.then81_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

if.then81:                                        ; preds = %for.inc.2.if.then81_crit_edge, %for.inc.1.if.then81_crit_edge, %for.inc.if.then81_crit_edge, %for.cond.preheader.if.then81_crit_edge
  %i.0132.lcssa = phi i32 [ 0, %for.cond.preheader.if.then81_crit_edge ], [ 1, %for.inc.if.then81_crit_edge ], [ 2, %for.inc.1.if.then81_crit_edge ], [ 3, %for.inc.2.if.then81_crit_edge ]
  %xfer_type = getelementptr inbounds %struct.omap_nand_info, ptr %info, i32 0, i32 4
  %32 = ptrtoint ptr %xfer_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.0132.lcssa, ptr %xfer_type, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %call79.1 = call i32 @strcasecmp(ptr noundef %31, ptr noundef nonnull @.str.40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.1)
  %tobool80.not.1 = icmp eq i32 %call79.1, 0
  br i1 %tobool80.not.1, label %for.inc.if.then81_crit_edge, label %for.inc.1

for.inc.if.then81_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

for.inc.1:                                        ; preds = %for.inc
  %call79.2 = call i32 @strcasecmp(ptr noundef %31, ptr noundef nonnull @.str.41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.2)
  %tobool80.not.2 = icmp eq i32 %call79.2, 0
  br i1 %tobool80.not.2, label %for.inc.1.if.then81_crit_edge, label %for.inc.2

for.inc.1.if.then81_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

for.inc.2:                                        ; preds = %for.inc.1
  %call79.3 = call i32 @strcasecmp(ptr noundef %31, ptr noundef nonnull @.str.42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.3)
  %tobool80.not.3 = icmp eq i32 %call79.3, 0
  br i1 %tobool80.not.3, label %for.inc.2.if.then81_crit_edge, label %for.inc.3

for.inc.2.if.then81_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then81, %if.end74.cleanup_crit_edge, %do.end69, %do.end25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end25 ], [ -22, %do.end69 ], [ 0, %if.then81 ], [ -22, %for.inc.3 ], [ 0, %if.end74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpmc_omap_get_nand_ops(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_in(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  %or = or i32 %0, %len
  %and2 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp ne i32 %and2, 0
  %1 = or i1 %tobool3.not, %force_8bit
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo, align 4
  tail call void @__raw_readsb(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #11
  br label %if.end11

if.else:                                          ; preds = %entry
  %and = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %fifo9 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %fifo9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo9, align 4
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %5, ptr noundef %buf, i32 noundef %shr) #11
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %shr10 = lshr i32 %len, 2
  tail call void @__raw_readsl(ptr noundef %5, ptr noundef %buf, i32 noundef %shr10) #11
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_out(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  %or = or i32 %0, %len
  %and2 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp ne i32 %and2, 0
  %1 = or i1 %tobool3.not, %force_8bit
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo, align 4
  tail call void @__raw_writesb(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #11
  br label %if.end11

if.else:                                          ; preds = %entry
  %and = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %fifo9 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %fifo9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo9, align 4
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %5, ptr noundef %buf, i32 noundef %shr) #11
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %shr10 = lshr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %5, ptr noundef %buf, i32 noundef %shr10) #11
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rawnand_sw_bch_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #11
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !261
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %3 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bbt_options, align 8
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %4, 262144
  %5 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %options, align 8
  %or4 = or i32 %7, 65536
  store i32 %or4, ptr %options, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %xfer_type = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 4
  %8 = ptrtoint ptr %xfer_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xfer_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end61 [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb5
    i32 3, label %sw.bb25
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %data_in = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 25
  %11 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @omap_nand_data_in_pref, ptr %data_in, align 4
  %data_out = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %12 = ptrtoint ptr %data_out to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @omap_nand_data_out_pref, ptr %data_out, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #11
  %parent = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %call6 = call ptr @dma_request_chan(ptr noundef %15, ptr noundef nonnull @.str.44) #11
  %dma = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 9
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %dma, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else12

do.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.45) #14
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup275

if.else12:                                        ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #11
  %20 = call ptr @memset(ptr %cfg, i32 0, i32 48)
  %phys_base = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 7
  %21 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys_base, align 8
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %24 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %25 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %26 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %27 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %28 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %dst_maxburst, align 4
  %29 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call6, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.else12.do.end20_crit_edge, label %dmaengine_slave_config.exit

if.else12.do.end20_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

dmaengine_slave_config.exit:                      ; preds = %if.else12
  %call.i = call i32 %32(ptr noundef %call6, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end21, label %dmaengine_slave_config.exit.do.end20_crit_edge

dmaengine_slave_config.exit.do.end20_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end20:                                         ; preds = %dmaengine_slave_config.exit.do.end20_crit_edge, %if.else12.do.end20_crit_edge
  %retval.0.i446 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end20_crit_edge ], [ -38, %if.else12.do.end20_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i446) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #11
  br label %cleanup275

if.end21:                                         ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %data_in22 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 25
  %33 = ptrtoint ptr %data_in22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @omap_nand_data_in_dma_pref, ptr %data_in22, align 4
  %data_out23 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %34 = ptrtoint ptr %data_out23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @omap_nand_data_out_dma_pref, ptr %data_out23, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %call27 = tail call i32 @platform_get_irq(ptr noundef %1, i32 noundef 0) #11
  %gpmc_irq_fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 10
  %35 = ptrtoint ptr %gpmc_irq_fifo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call27, ptr %gpmc_irq_fifo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp = icmp slt i32 %call27, 1
  br i1 %cmp, label %sw.bb25.cleanup275_crit_edge, label %if.end30

sw.bb25.cleanup275_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup275

if.end30:                                         ; preds = %sw.bb25
  %call.i436 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %call27, ptr noundef nonnull @omap_nand_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.50, ptr noundef %chip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %tobool33.not = icmp eq i32 %call.i436, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %gpmc_irq_fifo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpmc_irq_fifo, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.52, i32 noundef %37, i32 noundef %call.i436) #14
  %38 = ptrtoint ptr %gpmc_irq_fifo to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %gpmc_irq_fifo, align 8
  br label %cleanup275

if.end40:                                         ; preds = %if.end30
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 8
  %call42 = tail call i32 @platform_get_irq(ptr noundef %40, i32 noundef 1) #11
  %gpmc_irq_count = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 11
  %41 = ptrtoint ptr %gpmc_irq_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call42, ptr %gpmc_irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp44 = icmp slt i32 %call42, 1
  br i1 %cmp44, label %if.end40.cleanup275_crit_edge, label %if.end46

if.end40.cleanup275_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup275

if.end46:                                         ; preds = %if.end40
  %call.i437 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %call42, ptr noundef nonnull @omap_nand_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.54, ptr noundef %chip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i437)
  %tobool49.not = icmp eq i32 %call.i437, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %gpmc_irq_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpmc_irq_count, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.52, i32 noundef %43, i32 noundef %call.i437) #14
  %44 = ptrtoint ptr %gpmc_irq_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %gpmc_irq_count, align 4
  br label %cleanup275

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %data_in57 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 25
  %45 = ptrtoint ptr %data_in57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @omap_nand_data_in_irq_pref, ptr %data_in57, align 4
  %data_out58 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %46 = ptrtoint ptr %data_out58 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @omap_nand_data_out_irq_pref, ptr %data_out58, align 8
  br label %sw.epilog

do.end61:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.58, i32 noundef %9) #14
  br label %cleanup275

sw.epilog:                                        ; preds = %if.end56, %if.end21, %sw.bb, %if.end.sw.epilog_crit_edge
  %ecc_opt.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 5
  %47 = ptrtoint ptr %ecc_opt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ecc_opt.i, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %48, label %sw.epilog.if.end65_crit_edge [
    i32 6, label %sw.epilog.land.lhs.true12.critedge.i_crit_edge
    i32 5, label %sw.epilog.land.lhs.true12.critedge.i_crit_edge460
    i32 3, label %sw.epilog.land.lhs.true12.critedge.i_crit_edge461
  ]

sw.epilog.land.lhs.true12.critedge.i_crit_edge461: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true12.critedge.i

sw.epilog.land.lhs.true12.critedge.i_crit_edge460: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true12.critedge.i

sw.epilog.land.lhs.true12.critedge.i_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true12.critedge.i

sw.epilog.if.end65_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.lhs.true12.critedge.i:                       ; preds = %sw.epilog.land.lhs.true12.critedge.i_crit_edge, %sw.epilog.land.lhs.true12.critedge.i_crit_edge460, %sw.epilog.land.lhs.true12.critedge.i_crit_edge461
  %elm_of_node.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 6
  %50 = ptrtoint ptr %elm_of_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %elm_of_node.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %land.lhs.true12.critedge.i.omap2_nand_ecc_check.exit_crit_edge, label %if.end.i.i

land.lhs.true12.critedge.i.omap2_nand_ecc_check.exit_crit_edge: ; preds = %land.lhs.true12.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_nand_ecc_check.exit

if.end.i.i:                                       ; preds = %land.lhs.true12.critedge.i
  %call.i.i = call ptr @of_find_device_by_node(ptr noundef nonnull %51) #11
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.omap2_nand_ecc_check.exit_crit_edge, label %is_elm_present.exit.i

if.end.i.i.omap2_nand_ecc_check.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap2_nand_ecc_check.exit

is_elm_present.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev10.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %elm_dev.i.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 19
  %52 = ptrtoint ptr %elm_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev10.i.i, ptr %elm_dev.i.i, align 4
  %53 = ptrtoint ptr %ecc_opt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %ecc_opt.i, align 8
  br label %if.end65

omap2_nand_ecc_check.exit:                        ; preds = %if.end.i.i.omap2_nand_ecc_check.exit_crit_edge, %land.lhs.true12.critedge.i.omap2_nand_ecc_check.exit_crit_edge
  %.str.105.sink.i = phi ptr [ @.str.102, %land.lhs.true12.critedge.i.omap2_nand_ecc_check.exit_crit_edge ], [ @.str.105, %if.end.i.i.omap2_nand_ecc_check.exit_crit_edge ]
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 8
  %dev8.i.i = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i.i, ptr noundef nonnull %.str.105.sink.i) #14
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 8
  %dev18.i = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.100) #14
  br label %cleanup275

if.end65:                                         ; preds = %is_elm_present.exit.i, %sw.epilog.if.end65_crit_edge
  %58 = phi i32 [ %48, %sw.epilog.if.end65_crit_edge ], [ %.pr, %is_elm_present.exit.i ]
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %58, label %do.end226 [
    i32 0, label %if.then67
    i32 1, label %do.end74
    i32 2, label %do.end93
    i32 3, label %if.end65.if.then229_crit_edge
    i32 4, label %do.end144
    i32 5, label %do.end174
    i32 6, label %do.end200
  ]

if.end65.if.then229_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then229

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %60 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %ecc, align 8
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %61 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %algo, align 8
  br label %cleanup275

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.61) #14
  %ecc75 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %62 = ptrtoint ptr %ecc75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %ecc75, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %63 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %bytes, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %64 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 512, ptr %size, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %65 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %strength, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %66 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @omap_calculate_ecc, ptr %calculate, align 8
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %67 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @omap_enable_hwecc, ptr %hwctl, align 4
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %68 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @omap_correct_data, ptr %correct, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %69 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @omap_ooblayout_ops, ptr %ooblayout1.i, align 8
  %options85 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %70 = ptrtoint ptr %options85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %options85, align 8
  %and86 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %spec.select = select i1 %tobool87.not, i32 1, i32 2
  br label %if.end261

do.end93:                                         ; preds = %if.end65
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #14
  %ecc95 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %72 = ptrtoint ptr %ecc95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %ecc95, align 8
  %size98 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %73 = ptrtoint ptr %size98 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 512, ptr %size98, align 8
  %bytes100 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %74 = ptrtoint ptr %bytes100 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 7, ptr %bytes100, align 4
  %strength102 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %75 = ptrtoint ptr %strength102 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %strength102, align 4
  %hwctl104 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %76 = ptrtoint ptr %hwctl104 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @omap_enable_hwecc_bch, ptr %hwctl104, align 4
  %correct106 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %77 = ptrtoint ptr %correct106 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @rawnand_sw_bch_correct, ptr %correct106, align 4
  %calculate108 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %78 = ptrtoint ptr %calculate108 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @omap_calculate_ecc_bch_sw, ptr %calculate108, align 8
  %ooblayout1.i439 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %79 = ptrtoint ptr %ooblayout1.i439 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @omap_sw_ooblayout_ops, ptr %ooblayout1.i439, align 8
  %call111 = call i32 @rawnand_sw_bch_init(ptr noundef %chip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.end93.if.end261_crit_edge, label %do.end116

do.end93.if.end261_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

do.end116:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.68) #14
  br label %cleanup275

do.end144:                                        ; preds = %if.end65
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #14
  %ecc147 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %80 = ptrtoint ptr %ecc147 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %ecc147, align 8
  %size150 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %81 = ptrtoint ptr %size150 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 512, ptr %size150, align 8
  %bytes152 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %82 = ptrtoint ptr %bytes152 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 13, ptr %bytes152, align 4
  %strength154 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %83 = ptrtoint ptr %strength154 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %strength154, align 4
  %hwctl156 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %84 = ptrtoint ptr %hwctl156 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @omap_enable_hwecc_bch, ptr %hwctl156, align 4
  %correct158 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %85 = ptrtoint ptr %correct158 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @rawnand_sw_bch_correct, ptr %correct158, align 4
  %calculate160 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %86 = ptrtoint ptr %calculate160 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @omap_calculate_ecc_bch_sw, ptr %calculate160, align 8
  %ooblayout1.i441 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %87 = ptrtoint ptr %ooblayout1.i441 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @omap_sw_ooblayout_ops, ptr %ooblayout1.i441, align 8
  %call164 = call i32 @rawnand_sw_bch_init(ptr noundef %chip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %do.end144.if.end261_crit_edge, label %do.end169

do.end144.if.end261_crit_edge:                    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

do.end169:                                        ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.77) #14
  br label %cleanup275

do.end174:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then229

do.end200:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then229

do.end226:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.86) #14
  br label %cleanup275

if.then229:                                       ; preds = %do.end200, %do.end174, %if.end65.if.then229_crit_edge
  %.str.83.sink = phi ptr [ @.str.83, %do.end200 ], [ @.str.80, %do.end174 ], [ @.str.71, %if.end65.if.then229_crit_edge ]
  %.sink458 = phi i32 [ 26, %do.end200 ], [ 14, %do.end174 ], [ 8, %if.end65.if.then229_crit_edge ]
  %.sink457 = phi i32 [ 16, %do.end200 ], [ 8, %do.end174 ], [ 4, %if.end65.if.then229_crit_edge ]
  %elm_bch_strength.0.ph = phi i32 [ 2, %do.end200 ], [ 1, %do.end174 ], [ 0, %if.end65.if.then229_crit_edge ]
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.83.sink) #14
  %ecc203 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %88 = ptrtoint ptr %ecc203 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %ecc203, align 8
  %size206 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %89 = ptrtoint ptr %size206 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 512, ptr %size206, align 8
  %bytes208 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %90 = ptrtoint ptr %bytes208 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink458, ptr %bytes208, align 4
  %strength210 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %91 = ptrtoint ptr %strength210 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink457, ptr %strength210, align 4
  %hwctl212 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %92 = ptrtoint ptr %hwctl212 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @omap_enable_hwecc_bch, ptr %hwctl212, align 4
  %correct214 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %93 = ptrtoint ptr %correct214 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @omap_elm_correct_data, ptr %correct214, align 4
  %read_page216 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %94 = ptrtoint ptr %read_page216 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @omap_read_page_bch, ptr %read_page216, align 8
  %write_page218 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %95 = ptrtoint ptr %write_page218 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @omap_write_page_bch, ptr %write_page218, align 4
  %write_subpage220 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 20
  %96 = ptrtoint ptr %write_subpage220 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @omap_write_subpage_bch, ptr %write_subpage220, align 8
  %ooblayout1.i443 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %97 = ptrtoint ptr %ooblayout1.i443 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @omap_ooblayout_ops, ptr %ooblayout1.i443, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %98 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %writesize, align 4
  %size231 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %100 = ptrtoint ptr %size231 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size231, align 8
  %div = udiv i32 %99, %101
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %102 = ptrtoint ptr %steps to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %div, ptr %steps, align 4
  %div235 = sdiv i32 %div, 8
  %neccpg = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 21
  %div.off = add i32 %div, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.off)
  %103 = icmp ult i32 %div.off, 15
  %spec.store.select = select i1 %103, i32 1, i32 %div235
  %104 = ptrtoint ptr %neccpg to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %spec.store.select, ptr %neccpg, align 4
  %spec.select459 = select i1 %103, i32 %div, i32 8
  %105 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 22
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %spec.select459, ptr %105, align 8
  %mul = mul i32 %spec.select459, %101
  %eccpg_size = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 23
  %107 = ptrtoint ptr %eccpg_size to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mul, ptr %eccpg_size, align 4
  %bytes250 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %108 = ptrtoint ptr %bytes250 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bytes250, align 4
  %mul251 = mul i32 %109, %spec.select459
  %eccpg_bytes = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 24
  %110 = ptrtoint ptr %eccpg_bytes to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul251, ptr %eccpg_bytes, align 8
  %elm_dev = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 19
  %111 = ptrtoint ptr %elm_dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %elm_dev, align 4
  %call257 = call i32 @elm_config(ptr noundef %112, i32 noundef %elm_bch_strength.0.ph, i32 noundef %spec.select459, i32 noundef %101, i32 noundef %109) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %cmp258 = icmp slt i32 %call257, 0
  br i1 %cmp258, label %if.then229.cleanup275_crit_edge, label %if.then229.if.end261_crit_edge

if.then229.if.end261_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end261

if.then229.cleanup275_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup275

if.end261:                                        ; preds = %if.then229.if.end261_crit_edge, %do.end144.if.end261_crit_edge, %do.end93.if.end261_crit_edge, %do.end74
  %min_oobbytes.0455 = phi i32 [ 2, %if.then229.if.end261_crit_edge ], [ 2, %do.end144.if.end261_crit_edge ], [ 2, %do.end93.if.end261_crit_edge ], [ %spec.select, %do.end74 ]
  %oobbytes_per_step.0453 = phi i32 [ %.sink458, %if.then229.if.end261_crit_edge ], [ 14, %do.end144.if.end261_crit_edge ], [ 8, %do.end93.if.end261_crit_edge ], [ 3, %do.end74 ]
  %writesize262 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %113 = ptrtoint ptr %writesize262 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %writesize262, align 4
  %size264 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %115 = ptrtoint ptr %size264 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size264, align 8
  %div265 = udiv i32 %114, %116
  %mul266 = mul i32 %div265, %oobbytes_per_step.0453
  %add267 = add i32 %mul266, %min_oobbytes.0455
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %117 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %add267)
  %cmp268 = icmp ult i32 %118, %add267
  br i1 %cmp268, label %do.end272, label %if.end261.cleanup275_crit_edge

if.end261.cleanup275_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup275

do.end272:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.89, i32 noundef %add267, i32 noundef %118) #14
  br label %cleanup275

cleanup275:                                       ; preds = %do.end272, %if.end261.cleanup275_crit_edge, %if.then229.cleanup275_crit_edge, %do.end226, %do.end169, %do.end116, %if.then67, %omap2_nand_ecc_check.exit, %do.end61, %do.end53, %if.end40.cleanup275_crit_edge, %do.end37, %sw.bb25.cleanup275_crit_edge, %do.end20, %do.end
  %retval.1 = phi i32 [ -22, %do.end61 ], [ %call.i436, %do.end37 ], [ %call.i437, %do.end53 ], [ 0, %if.then67 ], [ -22, %do.end226 ], [ -22, %do.end272 ], [ %call164, %do.end169 ], [ %call111, %do.end116 ], [ %19, %do.end ], [ %retval.0.i446, %do.end20 ], [ -19, %sw.bb25.cleanup275_crit_edge ], [ -19, %if.end40.cleanup275_crit_edge ], [ -22, %omap2_nand_ecc_check.exit ], [ %call257, %if.then229.cleanup275_crit_edge ], [ 0, %if.end261.cleanup275_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_nand_exec_op(ptr noundef %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup4_crit_edge, label %for.cond.preheader

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

for.cond.preheader:                               ; preds = %entry
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %0 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup4_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup4_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %ready_gpiod.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 20
  %data_out.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %data_in.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 25
  %gpmc_nand_address.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 1
  %reg.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %5, label %for.body.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb10.i
    i32 4, label %sw.bb18.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.cond.preheader.i:                             ; preds = %for.body
  %ctx3.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1
  %7 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp59.not.i = icmp eq i32 %8, 0
  br i1 %cmp59.not.i, label %for.cond.preheader.i.sw.epilog.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sw.epilog.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1, i32 0, i32 1
  br label %for.body.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctx.i, align 4
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #11, !srcloc !264
  br label %sw.epilog.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %14, i32 %i.060.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = ptrtoint ptr %gpmc_nand_address.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpmc_nand_address.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #11, !srcloc !264
  %inc.i = add nuw i32 %i.060.i, 1
  %19 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctx3.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog.i_crit_edge

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb6.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %data_in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_in.i, align 4
  %ctx7.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf.i, align 4
  %25 = ptrtoint ptr %ctx7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctx7.i, align 4
  %force_8bit.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %force_8bit.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i = icmp ne i8 %28, 0
  tail call void %22(ptr noundef %chip, ptr noundef %24, i32 noundef %26, i1 noundef zeroext %tobool.i) #11
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %data_out.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data_out.i, align 8
  %ctx11.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1
  %buf12.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %buf12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf12.i, align 4
  %33 = ptrtoint ptr %ctx11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctx11.i, align 4
  %force_8bit16.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %force_8bit16.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %force_8bit16.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool17.i = icmp ne i8 %36, 0
  tail call void %30(ptr noundef %chip, ptr noundef %32, i32 noundef %34, i1 noundef zeroext %tobool17.i) #11
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %for.body
  %37 = ptrtoint ptr %ready_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ready_gpiod.i, align 8
  %tobool19.not.i = icmp eq ptr %38, null
  %ctx23.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 1
  %39 = ptrtoint ptr %ctx23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctx23.i, align 4
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 @nand_gpio_waitrdy(ptr noundef %chip, ptr noundef nonnull %38, i32 noundef %40) #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call25.i = tail call i32 @nand_soft_waitrdy(ptr noundef %chip, i32 noundef %40) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call22.i, %cond.true.i ], [ %call25.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool26.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool26.not.i, label %cond.end.i.sw.epilog.i_crit_edge, label %cond.end.i.cleanup4_crit_edge

cond.end.i.cleanup4_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

cond.end.i.sw.epilog.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cond.end.i.sw.epilog.i_crit_edge, %sw.bb10.i, %sw.bb6.i, %for.body.i.sw.epilog.i_crit_edge, %sw.bb.i, %for.cond.preheader.i.sw.epilog.i_crit_edge, %for.body.sw.epilog.i_crit_edge
  %delay_ns.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %i.014, i32 2
  %41 = ptrtoint ptr %delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delay_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool27.not.i = icmp eq i32 %42, 0
  br i1 %tobool27.not.i, label %sw.epilog.i.for.inc_crit_edge, label %cond.false8.i.i

sw.epilog.i.for.inc_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

cond.false8.i.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %42, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %div.i.i) #11
  br label %for.inc

for.inc:                                          ; preds = %cond.false8.i.i, %sw.epilog.i.for.inc_crit_edge
  %inc = add nuw i32 %i.014, 1
  %44 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup4_crit_edge

for.inc.cleanup4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup4:                                         ; preds = %for.inc.cleanup4_crit_edge, %cond.end.i.cleanup4_crit_edge, %for.cond.preheader.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup4_crit_edge ], [ 0, %for.cond.preheader.cleanup4_crit_edge ], [ 0, %for.inc.cleanup4_crit_edge ], [ %cond.i, %cond.end.i.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_in_pref(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force_8bit, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  tail call void @__raw_readsb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %len, 3
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpmc_cs, align 4
  %gpmc_prefetch_control.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 5
  %4 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %omap_prefetch_enable.exit, label %if.then5

omap_prefetch_enable.exit:                        ; preds = %if.end
  %sub = and i32 %len, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %sub) #11
  %gpmc_prefetch_config2.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 4
  %8 = ptrtoint ptr %gpmc_prefetch_config2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpmc_prefetch_config2.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !268
  %shl.i = shl i32 %3, 24
  %or9.i = or i32 %shl.i, 16512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #11
  %gpmc_prefetch_config1.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 3
  %11 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 16777216) #11, !srcloc !268
  %gpmc_prefetch_status = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 6
  %fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  br label %do.body

if.then5:                                         ; preds = %if.end
  %15 = ptrtoint ptr %buf to i32
  %or.i49 = or i32 %15, %len
  %and2.i50 = and i32 %or.i49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i50)
  %tobool3.not.i51.not = icmp eq i32 %and2.i50, 0
  br i1 %tobool3.not.i51.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i52 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %16 = ptrtoint ptr %fifo.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fifo.i52, align 4
  tail call void @__raw_readsb(ptr noundef %17, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then5
  %and.i = and i32 %or.i49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %fifo9.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %18 = ptrtoint ptr %fifo9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fifo9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %19, ptr noundef %buf, i32 noundef %shr.i) #11
  br label %cleanup

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i = lshr i32 %len, 2
  tail call void @__raw_readsl(ptr noundef %19, ptr noundef %buf, i32 noundef %shr10.i) #11
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %omap_prefetch_enable.exit
  %pref_len.0 = phi i32 [ %sub, %omap_prefetch_enable.exit ], [ %sub10, %do.body.do.body_crit_edge ]
  %p.0 = phi ptr [ %buf, %omap_prefetch_enable.exit ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %20 = ptrtoint ptr %gpmc_prefetch_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpmc_prefetch_status, align 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %and8 = lshr i32 %22, 2
  %shr9 = and i32 %and8, 31
  %23 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fifo, align 4
  tail call void @__raw_readsl(ptr noundef %24, ptr noundef %p.0, i32 noundef %shr9) #11
  %add.ptr = getelementptr i32, ptr %p.0, i32 %shr9
  %shl.neg = mul nsw i32 %shr9, -4
  %sub10 = add i32 %shl.neg, %pref_len.0
  %tobool11.not = icmp eq i32 %sub10, 0
  br i1 %tobool11.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  %25 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpmc_cs, align 4
  %27 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  %and.i54 = and i32 %29, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i54, i32 %26)
  %cmp.not.i = icmp eq i32 %and.i54, %26
  br i1 %cmp.not.i, label %do.body.i56, label %do.end.omap_prefetch_reset.exit_crit_edge

do.end.omap_prefetch_reset.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_prefetch_reset.exit

do.body.i56:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #11, !srcloc !268
  br label %omap_prefetch_reset.exit

omap_prefetch_reset.exit:                         ; preds = %do.body.i56, %do.end.omap_prefetch_reset.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %omap_prefetch_reset.exit.cleanup_crit_edge, label %if.then16

omap_prefetch_reset.exit.cleanup_crit_edge:       ; preds = %omap_prefetch_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %omap_prefetch_reset.exit
  %34 = ptrtoint ptr %add.ptr to i32
  %or.i57 = or i32 %and, %34
  %and2.i58 = and i32 %or.i57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i58)
  %tobool3.not.i59.not = icmp eq i32 %and2.i58, 0
  br i1 %tobool3.not.i59.not, label %if.else.i65, label %if.then.i61

if.then.i61:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fifo, align 4
  tail call void @__raw_readsb(ptr noundef %36, ptr noundef %add.ptr, i32 noundef %and) #11
  br label %cleanup

if.else.i65:                                      ; preds = %if.then16
  %and.i62 = and i32 %or.i57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool5.not.i63 = icmp eq i32 %and.i62, 0
  %37 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fifo, align 4
  br i1 %tobool5.not.i63, label %if.else8.i69, label %if.then6.i67

if.then6.i67:                                     ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i66 = lshr i32 %and, 1
  tail call void @__raw_readsw(ptr noundef %38, ptr noundef %add.ptr, i32 noundef %shr.i66) #11
  br label %cleanup

if.else8.i69:                                     ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__raw_readsl(ptr noundef %38, ptr noundef %add.ptr, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else8.i69, %if.then6.i67, %if.then.i61, %omap_prefetch_reset.exit.cleanup_crit_edge, %if.else8.i, %if.then6.i, %if.then.i, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_out_pref(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force_8bit, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  tail call void @__raw_writesb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %do.body

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %3) #11, !srcloc !264
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  %dec = add i32 %len, -1
  br label %if.end4

if.end4:                                          ; preds = %do.body, %if.end.if.end4_crit_edge
  %p.0 = phi ptr [ %add.ptr, %do.body ], [ %buf, %if.end.if.end4_crit_edge ]
  %len.addr.0 = phi i32 [ %dec, %do.body ], [ %len, %if.end.if.end4_crit_edge ]
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpmc_cs, align 4
  %gpmc_prefetch_control.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 5
  %8 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %omap_prefetch_enable.exit, label %if.then7

omap_prefetch_enable.exit:                        ; preds = %if.end4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %len.addr.0) #11
  %gpmc_prefetch_config2.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 4
  %12 = ptrtoint ptr %gpmc_prefetch_config2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpmc_prefetch_config2.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !268
  %shl.i = shl i32 %7, 24
  %or9.i = or i32 %shl.i, 16513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #11
  %gpmc_prefetch_config1.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 16777216) #11, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool8.not95 = icmp eq i32 %len.addr.0, 0
  br i1 %tobool8.not95, label %omap_prefetch_enable.exit.while.end_crit_edge, label %while.body.lr.ph

omap_prefetch_enable.exit.while.end_crit_edge:    ; preds = %omap_prefetch_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %omap_prefetch_enable.exit
  %gpmc_prefetch_status = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 6
  %fifo14 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  br label %while.body

if.then7:                                         ; preds = %if.end4
  %19 = ptrtoint ptr %buf to i32
  %or.i78 = or i32 %len.addr.0, %19
  %and2.i79 = and i32 %or.i78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i79)
  %tobool3.not.i80.not = icmp eq i32 %and2.i79, 0
  br i1 %tobool3.not.i80.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i81 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %20 = ptrtoint ptr %fifo.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fifo.i81, align 4
  tail call void @__raw_writesb(ptr noundef %21, ptr noundef %buf, i32 noundef %len.addr.0) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then7
  %and.i = and i32 %or.i78, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %fifo9.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %22 = ptrtoint ptr %fifo9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fifo9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %len.addr.0, 1
  tail call void @__raw_writesw(ptr noundef %23, ptr noundef %buf, i32 noundef %shr.i) #11
  br label %cleanup

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i = lshr i32 %len.addr.0, 2
  tail call void @__raw_writesl(ptr noundef %23, ptr noundef %buf, i32 noundef %shr10.i) #11
  br label %cleanup

while.cond.loopexit:                              ; preds = %for.body.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %p.2.lcssa = phi ptr [ %p.196, %while.body.while.cond.loopexit_crit_edge ], [ %incdec.ptr, %for.body.while.cond.loopexit_crit_edge ]
  %len.addr.2.lcssa = phi i32 [ %len.addr.197, %while.body.while.cond.loopexit_crit_edge ], [ %sub, %for.body.while.cond.loopexit_crit_edge ]
  %tobool8.not = icmp eq i32 %len.addr.2.lcssa, 0
  br i1 %tobool8.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %len.addr.197 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %len.addr.2.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %p.196 = phi ptr [ %p.0, %while.body.lr.ph ], [ %p.2.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %24 = ptrtoint ptr %gpmc_prefetch_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpmc_prefetch_status, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %and = lshr i32 %26, 1
  %shr11 = and i32 %and, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr11)
  %cmp1288 = icmp eq i32 %shr11, 0
  br i1 %cmp1288, label %while.body.while.cond.loopexit_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %len.addr.293 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %len.addr.197, %while.body.for.body_crit_edge ]
  %i.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %p.291 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %p.196, %while.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %p.291, i32 1
  %27 = ptrtoint ptr %p.291 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %p.291, align 2
  %29 = ptrtoint ptr %fifo14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fifo14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %31 = tail call i16 @llvm.bswap.i16(i16 %28) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %31) #11, !srcloc !278
  %inc = add nuw nsw i32 %i.092, 1
  %sub = add i32 %len.addr.293, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr11)
  %cmp12 = icmp uge i32 %inc, %shr11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool13.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %cmp12, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %for.body.while.cond.loopexit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.while.cond.loopexit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %omap_prefetch_enable.exit.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %32 = load i32, ptr @loops_per_jiffy, align 4
  %mul = mul i32 %32, 500
  %gpmc_prefetch_status29 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 6
  br label %do.body16

do.body16:                                        ; preds = %do.body16.do.body16_crit_edge, %while.end
  %tim.0 = phi i32 [ 0, %while.end ], [ %inc37, %do.body16.do.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !279
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !280
  %33 = ptrtoint ptr %gpmc_prefetch_status29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpmc_prefetch_status29, align 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  %36 = and i32 %35, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool35.not = icmp ne i32 %36, 0
  %inc37 = add nuw i32 %tim.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim.0, i32 %mul)
  %cmp38 = icmp ult i32 %tim.0, %mul
  %or.cond76 = select i1 %tobool35.not, i1 %cmp38, i1 false
  br i1 %or.cond76, label %do.body16.do.body16_crit_edge, label %do.end40

do.body16.do.body16_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.end40:                                         ; preds = %do.body16
  %37 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gpmc_cs, align 4
  %39 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  %and.i83 = and i32 %41, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i83, i32 %38)
  %cmp.not.i = icmp eq i32 %and.i83, %38
  br i1 %cmp.not.i, label %do.body.i85, label %do.end40.cleanup_crit_edge

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i85:                                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #11, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %do.body.i85, %do.end40.cleanup_crit_edge, %if.else8.i, %if.then6.i, %if.then.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_in_dma_pref(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force_8bit, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  tail call void @__raw_readsb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp.not = icmp ult i32 %3, %len
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @omap_nand_data_in_pref(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_nand_dma_transfer(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_out_dma_pref(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force_8bit, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo.i, align 4
  tail call void @__raw_writesb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp.not = icmp ult i32 %3, %len
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @omap_nand_data_out_pref(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext false)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @omap_nand_dma_transfer(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_nand_irq(i32 noundef %this_irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpmc_prefetch_status = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 16, i32 6
  %0 = ptrtoint ptr %gpmc_prefetch_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpmc_prefetch_status, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  %and2 = and i32 %2, 124
  %iomode = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 12
  %3 = ptrtoint ptr %iomode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iomode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %gpmc_irq_count = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 11
  %5 = ptrtoint ptr %gpmc_irq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpmc_irq_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %this_irq)
  %cmp3 = icmp eq i32 %6, %this_irq
  br i1 %cmp3, label %if.then.done_crit_edge, label %if.end

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %buf_len = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and2)
  %cmp6 = icmp ult i32 %8, %and2
  %or.cond = select i1 %tobool.not, i1 %cmp6, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 %and2
  %bytes.0 = select i1 %or.cond, i32 %8, i32 %spec.select
  %fifo = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fifo, align 4
  %buf = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %shr14 = lshr i32 %bytes.0, 2
  tail call void @__raw_writesl(ptr noundef %10, ptr noundef %12, i32 noundef %shr14) #11
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %bytes.0
  store ptr %add.ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_len, align 8
  %sub = sub i32 %16, %bytes.0
  store i32 %sub, ptr %buf_len, align 8
  br label %cleanup

if.else18:                                        ; preds = %entry
  %fifo19 = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %fifo19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fifo19, align 4
  %buf20 = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 13
  %19 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf20, align 4
  %shr21 = lshr exact i32 %and2, 2
  tail call void @__raw_readsl(ptr noundef %18, ptr noundef %20, i32 noundef %shr21) #11
  %21 = ptrtoint ptr %buf20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf20, align 4
  %add.ptr23 = getelementptr i8, ptr %22, i32 %and2
  store ptr %add.ptr23, ptr %buf20, align 4
  %gpmc_irq_count25 = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 11
  %23 = ptrtoint ptr %gpmc_irq_count25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpmc_irq_count25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %this_irq)
  %cmp26 = icmp eq i32 %24, %this_irq
  br i1 %cmp26, label %if.else18.done_crit_edge, label %if.else18.cleanup_crit_edge

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else18.done_crit_edge:                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

done:                                             ; preds = %if.else18.done_crit_edge, %if.then.done_crit_edge
  %comp = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 8
  tail call void @complete(ptr noundef %comp) #11
  %gpmc_irq_fifo = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 10
  %25 = ptrtoint ptr %gpmc_irq_fifo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpmc_irq_fifo, align 8
  tail call void @disable_irq_nosync(i32 noundef %26) #11
  %gpmc_irq_count30 = getelementptr inbounds %struct.omap_nand_info, ptr %dev, i32 0, i32 11
  %27 = ptrtoint ptr %gpmc_irq_count30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gpmc_irq_count30, align 4
  tail call void @disable_irq_nosync(i32 noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %if.else18.cleanup_crit_edge, %if.end
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_in_irq_pref(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp uge i32 %1, %len
  %brmerge = or i1 %cmp.not, %force_8bit
  br i1 %brmerge, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  %or.i = or i32 %2, %len
  %and2.i = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %3 = or i1 %tobool3.not.i, %force_8bit
  br i1 %3, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo.i, align 4
  tail call void @__raw_readsb(ptr noundef %5, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %and.i = and i32 %or.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %fifo9.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %6 = ptrtoint ptr %fifo9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %7, ptr noundef %buf, i32 noundef %shr.i) #11
  br label %cleanup

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i = lshr i32 %len, 2
  tail call void @__raw_readsl(ptr noundef %7, ptr noundef %buf, i32 noundef %shr10.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %iomode = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 12
  %8 = ptrtoint ptr %iomode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %iomode, align 8
  %buf4 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 13
  %9 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf4, align 4
  %comp = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 8
  %10 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #11
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %11 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpmc_cs, align 4
  %gpmc_prefetch_control.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 5
  %13 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %16 = ptrtoint ptr %buf to i32
  %or.i35 = or i32 %16, %len
  %and2.i36 = and i32 %or.i35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i36)
  %tobool3.not.i37.not = icmp eq i32 %and2.i36, 0
  br i1 %tobool3.not.i37.not, label %if.else.i43, label %if.then.i39

if.then.i39:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i38 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %17 = ptrtoint ptr %fifo.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fifo.i38, align 4
  tail call void @__raw_readsb(ptr noundef %18, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.else.i43:                                      ; preds = %if.then7
  %and.i40 = and i32 %or.i35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool5.not.i41 = icmp eq i32 %and.i40, 0
  %fifo9.i42 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %19 = ptrtoint ptr %fifo9.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fifo9.i42, align 4
  br i1 %tobool5.not.i41, label %if.else8.i47, label %if.then6.i45

if.then6.i45:                                     ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i44 = lshr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %20, ptr noundef %buf, i32 noundef %shr.i44) #11
  br label %cleanup

if.else8.i47:                                     ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i46 = lshr i32 %len, 2
  tail call void @__raw_readsl(ptr noundef %20, ptr noundef %buf, i32 noundef %shr10.i46) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %len) #11
  %gpmc_prefetch_config2.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 4
  %22 = ptrtoint ptr %gpmc_prefetch_config2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpmc_prefetch_config2.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !268
  %shl.i = shl i32 %12, 24
  %or9.i = or i32 %shl.i, 8320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #11
  %gpmc_prefetch_config1.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 3
  %25 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16777216) #11, !srcloc !268
  %buf_len = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 14
  %29 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %len, ptr %buf_len, align 8
  %gpmc_irq_count = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 11
  %30 = ptrtoint ptr %gpmc_irq_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpmc_irq_count, align 4
  tail call void @enable_irq(i32 noundef %31) #11
  %gpmc_irq_fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 10
  %32 = ptrtoint ptr %gpmc_irq_fifo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpmc_irq_fifo, align 8
  tail call void @enable_irq(i32 noundef %33) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %34 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gpmc_cs, align 4
  %36 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  %and.i50 = and i32 %38, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i50, i32 %35)
  %cmp.not.i = icmp eq i32 %and.i50, %35
  br i1 %cmp.not.i, label %do.body.i52, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i52:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #11, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %do.body.i52, %if.end8.cleanup_crit_edge, %if.else8.i47, %if.then6.i45, %if.then.i39, %if.else8.i, %if.then6.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_data_out_irq_pref(ptr noundef %chip, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp uge i32 %1, %len
  %brmerge = or i1 %cmp.not, %force_8bit
  br i1 %brmerge, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  %or.i = or i32 %2, %len
  %and2.i = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %3 = or i1 %tobool3.not.i, %force_8bit
  br i1 %3, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo.i, align 4
  tail call void @__raw_writesb(ptr noundef %5, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %and.i = and i32 %or.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %fifo9.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %6 = ptrtoint ptr %fifo9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %7, ptr noundef %buf, i32 noundef %shr.i) #11
  br label %cleanup

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i = lshr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %7, ptr noundef %buf, i32 noundef %shr10.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %iomode = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 12
  %8 = ptrtoint ptr %iomode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %iomode, align 8
  %buf4 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 13
  %9 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf4, align 4
  %comp = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 8
  %10 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #11
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %11 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpmc_cs, align 4
  %gpmc_prefetch_control.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 5
  %13 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %16 = ptrtoint ptr %buf to i32
  %or.i54 = or i32 %16, %len
  %and2.i55 = and i32 %or.i54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i55)
  %tobool3.not.i56.not = icmp eq i32 %and2.i55, 0
  br i1 %tobool3.not.i56.not, label %if.else.i62, label %if.then.i58

if.then.i58:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i57 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %17 = ptrtoint ptr %fifo.i57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fifo.i57, align 4
  tail call void @__raw_writesb(ptr noundef %18, ptr noundef %buf, i32 noundef %len) #11
  br label %cleanup

if.else.i62:                                      ; preds = %if.then7
  %and.i59 = and i32 %or.i54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool5.not.i60 = icmp eq i32 %and.i59, 0
  %fifo9.i61 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %19 = ptrtoint ptr %fifo9.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fifo9.i61, align 4
  br i1 %tobool5.not.i60, label %if.else8.i66, label %if.then6.i64

if.then6.i64:                                     ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i63 = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %20, ptr noundef %buf, i32 noundef %shr.i63) #11
  br label %cleanup

if.else8.i66:                                     ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i65 = lshr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %20, ptr noundef %buf, i32 noundef %shr10.i65) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %len) #11
  %gpmc_prefetch_config2.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 4
  %22 = ptrtoint ptr %gpmc_prefetch_config2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpmc_prefetch_config2.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !268
  %shl.i = shl i32 %12, 24
  %or9.i = or i32 %shl.i, 6273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #11
  %gpmc_prefetch_config1.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 3
  %25 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16777216) #11, !srcloc !268
  %buf_len = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 14
  %29 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %len, ptr %buf_len, align 8
  %gpmc_irq_count = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 11
  %30 = ptrtoint ptr %gpmc_irq_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpmc_irq_count, align 4
  tail call void @enable_irq(i32 noundef %31) #11
  %gpmc_irq_fifo = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 10
  %32 = ptrtoint ptr %gpmc_irq_fifo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpmc_irq_fifo, align 8
  tail call void @enable_irq(i32 noundef %33) #11
  tail call void @wait_for_completion(ptr noundef %comp) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %34 = load i32, ptr @loops_per_jiffy, align 4
  %mul = mul i32 %34, 500
  %gpmc_prefetch_status = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end8
  %tim.0 = phi i32 [ 0, %if.end8 ], [ %inc, %do.body.do.body_crit_edge ]
  %35 = ptrtoint ptr %gpmc_prefetch_status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpmc_prefetch_status, align 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %38 = and i32 %37, -12648448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !284
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool21.not = icmp ne i32 %38, 0
  %inc = add nuw i32 %tim.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim.0, i32 %mul)
  %cmp22 = icmp ult i32 %tim.0, %mul
  %or.cond = select i1 %tobool21.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end23

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end23:                                         ; preds = %do.body
  %39 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gpmc_cs, align 4
  %41 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  %and.i69 = and i32 %43, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i69, i32 %40)
  %cmp.not.i = icmp eq i32 %and.i69, %40
  br i1 %cmp.not.i, label %do.body.i71, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i71:                                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #11, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %do.body.i71, %do.end23.cleanup_crit_edge, %if.else8.i66, %if.then6.i64, %if.then.i58, %if.else8.i, %if.then6.i, %if.then.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpmc_ecc_config = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 7
  %0 = ptrtoint ptr %gpmc_ecc_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpmc_ecc_config, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !265
  %3 = lshr i32 %2, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  %and = and i32 %3, 7
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpmc_cs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp.not = icmp eq i32 %and, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gpmc_ecc1_result = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 10
  %6 = ptrtoint ptr %gpmc_ecc1_result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpmc_ecc1_result, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !265
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  %conv = trunc i32 %9 to i8
  %incdec.ptr = getelementptr i8, ptr %ecc_code, i32 1
  %10 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ecc_code, align 1
  %shr10 = lshr i32 %9, 16
  %conv11 = trunc i32 %shr10 to i8
  %incdec.ptr12 = getelementptr i8, ptr %ecc_code, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %incdec.ptr, align 1
  %shr13 = lshr i32 %9, 8
  %and14 = and i32 %shr13, 15
  %shr15 = lshr i32 %9, 20
  %and16 = and i32 %shr15, 240
  %or = or i32 %and14, %and16
  %conv17 = trunc i32 %or to i8
  %12 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %incdec.ptr12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @arm_heavy_mb() #11
  %gpmc_ecc_control = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 8
  %2 = ptrtoint ptr %gpmc_ecc_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpmc_ecc_control, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16842752) #11, !srcloc !268
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %6 = shl i32 %5, 21
  %7 = add i32 %6, -4194304
  %shl = and i32 %7, -4194304
  %or = or i32 %shl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %gpmc_ecc_size_config = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 9
  %9 = ptrtoint ptr %gpmc_ecc_size_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpmc_ecc_size_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !268
  %11 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %mode, label %do.end19 [
    i32 0, label %entry.do.body6_crit_edge
    i32 1, label %entry.do.body6_crit_edge39
    i32 2, label %do.body12
  ]

entry.do.body6_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body6:                                         ; preds = %entry.do.body6_crit_edge, %entry.do.body6_crit_edge39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %gpmc_ecc_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpmc_ecc_control, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16842752) #11, !srcloc !268
  br label %sw.epilog

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %gpmc_ecc_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpmc_ecc_control, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 65536) #11, !srcloc !268
  br label %sw.epilog

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 1
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.107, i32 noundef %mode) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end19, %do.body12, %do.body6
  %18 = shl i32 %1, 6
  %shl20 = and i32 %18, 128
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %19 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpmc_cs, align 4
  %shl21 = shl i32 %20, 1
  %or22 = or i32 %shl20, %shl21
  %or23 = or i32 %or22, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %gpmc_ecc_config = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 7
  %22 = ptrtoint ptr %gpmc_ecc_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpmc_ecc_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !268
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_correct_data(ptr nocapture noundef readonly %chip, ptr nocapture noundef %dat, ptr nocapture noundef %read_ecc, ptr nocapture noundef %calc_ecc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp4 = icmp eq i32 %3, 2048
  br i1 %cmp4, label %land.lhs.true.for.body_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.else, %land.lhs.true.for.body_crit_edge
  %exitcond.not = phi i1 [ false, %land.lhs.true.for.body_crit_edge ], [ true, %if.else ]
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %read_ecc, ptr noundef dereferenceable(3) %calc_ecc, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp7.not = icmp eq i32 %bcmp, 0
  br i1 %cmp7.not, label %for.body.if.end13_crit_edge, label %if.then8

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %for.body
  %call9 = tail call fastcc i32 @omap_compare_ecc(ptr noundef %read_ecc, ptr noundef %calc_ecc, ptr noundef %dat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %stat.1 = phi i32 [ 0, %for.body.if.end13_crit_edge ], [ %call9, %if.then8.if.end13_crit_edge ]
  %add.ptr = getelementptr i8, ptr %read_ecc, i32 3
  %add.ptr14 = getelementptr i8, ptr %calc_ecc, i32 3
  %add.ptr15 = getelementptr i8, ptr %dat, i32 512
  br i1 %exitcond.not, label %if.end13.cleanup_crit_edge, label %for.body.1

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.1:                                       ; preds = %if.end13
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr, ptr noundef dereferenceable(3) %add.ptr14, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %cmp7.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %cmp7.not.1, label %for.body.1.if.end13.1_crit_edge, label %if.then8.1

for.body.1.if.end13.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.1

if.then8.1:                                       ; preds = %for.body.1
  %call9.1 = tail call fastcc i32 @omap_compare_ecc(ptr noundef %add.ptr, ptr noundef %add.ptr14, ptr noundef %add.ptr15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp10.1 = icmp slt i32 %call9.1, 0
  br i1 %cmp10.1, label %if.then8.1.cleanup_crit_edge, label %if.end12.1

if.then8.1.cleanup_crit_edge:                     ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12.1:                                       ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #13
  %add.1 = add i32 %call9.1, %stat.1
  br label %if.end13.1

if.end13.1:                                       ; preds = %if.end12.1, %for.body.1.if.end13.1_crit_edge
  %stat.1.1 = phi i32 [ %add.1, %if.end12.1 ], [ %stat.1, %for.body.1.if.end13.1_crit_edge ]
  %add.ptr.1 = getelementptr i8, ptr %read_ecc, i32 6
  %add.ptr14.1 = getelementptr i8, ptr %calc_ecc, i32 6
  %add.ptr15.1 = getelementptr i8, ptr %dat, i32 1024
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr.1, ptr noundef dereferenceable(3) %add.ptr14.1, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %cmp7.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %cmp7.not.2, label %if.end13.1.if.end13.2_crit_edge, label %if.then8.2

if.end13.1.if.end13.2_crit_edge:                  ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.2

if.then8.2:                                       ; preds = %if.end13.1
  %call9.2 = tail call fastcc i32 @omap_compare_ecc(ptr noundef %add.ptr.1, ptr noundef %add.ptr14.1, ptr noundef %add.ptr15.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp10.2 = icmp slt i32 %call9.2, 0
  br i1 %cmp10.2, label %if.then8.2.cleanup_crit_edge, label %if.end12.2

if.then8.2.cleanup_crit_edge:                     ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12.2:                                       ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #13
  %add.2 = add i32 %call9.2, %stat.1.1
  br label %if.end13.2

if.end13.2:                                       ; preds = %if.end12.2, %if.end13.1.if.end13.2_crit_edge
  %stat.1.2 = phi i32 [ %add.2, %if.end12.2 ], [ %stat.1.1, %if.end13.1.if.end13.2_crit_edge ]
  %add.ptr.2 = getelementptr i8, ptr %read_ecc, i32 9
  %add.ptr14.2 = getelementptr i8, ptr %calc_ecc, i32 9
  %add.ptr15.2 = getelementptr i8, ptr %dat, i32 1536
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr.2, ptr noundef dereferenceable(3) %add.ptr14.2, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %cmp7.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %cmp7.not.3, label %if.end13.2.cleanup_crit_edge, label %if.then8.3

if.end13.2.cleanup_crit_edge:                     ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.3:                                       ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #13
  %call9.3 = tail call fastcc i32 @omap_compare_ecc(ptr noundef %add.ptr.2, ptr noundef %add.ptr14.2, ptr noundef %add.ptr15.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %cmp10.3 = icmp slt i32 %call9.3, 0
  %add.3 = add i32 %call9.3, %stat.1.2
  %spec.select = select i1 %cmp10.3, i32 %call9.3, i32 %add.3
  br label %cleanup

cleanup:                                          ; preds = %if.then8.3, %if.end13.2.cleanup_crit_edge, %if.then8.2.cleanup_crit_edge, %if.then8.1.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8.cleanup_crit_edge ], [ %stat.1, %if.end13.cleanup_crit_edge ], [ %call9.1, %if.then8.1.cleanup_crit_edge ], [ %call9.2, %if.then8.2.cleanup_crit_edge ], [ %stat.1.2, %if.end13.2.cleanup_crit_edge ], [ %spec.select, %if.then8.3 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_enable_hwecc_bch(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc_opt2 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %ecc_opt2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc_opt2, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb12
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %3 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %. = select i1 %cmp, i32 256, i32 1536
  %.65 = select i1 %cmp, i32 12582912, i32 134217728
  %.66 = select i1 %cmp, i32 53248, i32 0
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %steps7 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %5 = ptrtoint ptr %steps7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %steps7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp8 = icmp eq i32 %mode, 0
  %.67 = select i1 %cmp8, i32 256, i32 1536
  %.68 = select i1 %cmp8, i32 8388608, i32 134217728
  %.69 = select i1 %cmp8, i32 106496, i32 0
  br label %do.body

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %steps14 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %7 = ptrtoint ptr %steps14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %steps14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp15 = icmp eq i32 %mode, 0
  %.70 = select i1 %cmp15, i32 0, i32 218103808
  %.71 = select i1 %cmp15, i32 212992, i32 0
  br label %do.body

do.body:                                          ; preds = %sw.bb12, %sw.bb5, %sw.bb4, %sw.bb3, %entry.do.body_crit_edge
  %nsectors.0 = phi i32 [ 1, %sw.bb4 ], [ 1, %entry.do.body_crit_edge ], [ %4, %sw.bb3 ], [ %6, %sw.bb5 ], [ %8, %sw.bb12 ]
  %bch_type.0 = phi i32 [ 69633, %sw.bb4 ], [ 65537, %entry.do.body_crit_edge ], [ 65537, %sw.bb3 ], [ 69633, %sw.bb5 ], [ 73729, %sw.bb12 ]
  %wr_mode.0 = phi i32 [ 1536, %sw.bb4 ], [ 1536, %entry.do.body_crit_edge ], [ %., %sw.bb3 ], [ %.67, %sw.bb5 ], [ 256, %sw.bb12 ]
  %ecc_size1.0 = phi i32 [ 134217728, %sw.bb4 ], [ 134217728, %entry.do.body_crit_edge ], [ %.65, %sw.bb3 ], [ %.68, %sw.bb5 ], [ %.70, %sw.bb12 ]
  %ecc_size0.0 = phi i32 [ 0, %sw.bb4 ], [ 0, %entry.do.body_crit_edge ], [ %.66, %sw.bb3 ], [ %.69, %sw.bb5 ], [ %.71, %sw.bb12 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  tail call void @arm_heavy_mb() #11
  %gpmc_ecc_control = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 8
  %9 = ptrtoint ptr %gpmc_ecc_control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpmc_ecc_control, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 16777216) #11, !srcloc !268
  %or = or i32 %ecc_size0.0, %ecc_size1.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %gpmc_ecc_size_config = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 9
  %12 = ptrtoint ptr %gpmc_ecc_size_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpmc_ecc_size_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !268
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options, align 8
  %16 = shl i32 %15, 6
  %shl28 = and i32 %16, 128
  %sub = shl i32 %nsectors.0, 4
  %and30 = add i32 %sub, 112
  %shl31 = and i32 %and30, 112
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %17 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpmc_cs, align 4
  %shl33 = shl i32 %18, 1
  %or29 = or i32 %bch_type.0, %wr_mode.0
  %or32 = or i32 %or29, %shl31
  %or34 = or i32 %or32, %shl28
  %or35 = or i32 %or34, %shl33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %gpmc_ecc_config = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 7
  %20 = ptrtoint ptr %gpmc_ecc_config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpmc_ecc_config, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %gpmc_ecc_control to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpmc_ecc_control, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 16842752) #11, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_bch_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_calculate_ecc_bch_sw(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr noundef %ecc_calc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %ecc_calc, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_bch_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_elm_correct_data(ptr nocapture noundef readonly %chip, ptr nocapture noundef %data, ptr nocapture noundef %read_ecc, ptr noundef %calc_ecc) #2 align 64 {
entry:
  %err_vec = alloca [8 x %struct.elm_errorvec], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nsteps_per_eccpg = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 22
  %0 = ptrtoint ptr %nsteps_per_eccpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nsteps_per_eccpg, align 8
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %err_vec) #11
  %ecc_opt = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 5
  %2 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_opt, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %do.end [
    i32 3, label %sw.bb
    i32 5, label %sw.bb3
    i32 6, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes, align 4
  %sub = add i32 %6, -1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bytes4 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %7 = ptrtoint ptr %bytes4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes4, align 4
  %sub5 = add i32 %8, -1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bytes7 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %9 = ptrtoint ptr %bytes7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes7, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.114) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %sw.bb
  %actual_eccbytes.0 = phi i32 [ %10, %sw.bb6 ], [ %sub5, %sw.bb3 ], [ %sub, %sw.bb ]
  %erased_ecc_vec.0 = phi ptr [ @bch16_vector, %sw.bb6 ], [ @bch8_vector, %sw.bb3 ], [ @bch4_vector, %sw.bb ]
  %13 = call ptr @memset(ptr %err_vec, i32 0, i32 576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp260 = icmp sgt i32 %1, 0
  br i1 %cmp260, label %for.cond8.preheader.lr.ph, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond8.preheader.lr.ph:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %actual_eccbytes.0)
  %cmp9258 = icmp sgt i32 %actual_eccbytes.0, 0
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %if.end29.for.cond8.preheader_crit_edge, %for.cond8.preheader.lr.ph
  %read_ecc.addr.0269 = phi ptr [ %read_ecc, %for.cond8.preheader.lr.ph ], [ %add.ptr32, %if.end29.for.cond8.preheader_crit_edge ]
  %calc_ecc.addr.0266 = phi ptr [ %calc_ecc, %for.cond8.preheader.lr.ph ], [ %add.ptr, %if.end29.for.cond8.preheader_crit_edge ]
  %is_error_reported.0.off0265 = phi i1 [ false, %for.cond8.preheader.lr.ph ], [ %is_error_reported.1.off0, %if.end29.for.cond8.preheader_crit_edge ]
  %stat.0264 = phi i32 [ 0, %for.cond8.preheader.lr.ph ], [ %stat.1, %if.end29.for.cond8.preheader_crit_edge ]
  %i.0261 = phi i32 [ 0, %for.cond8.preheader.lr.ph ], [ %inc34, %if.end29.for.cond8.preheader_crit_edge ]
  br i1 %cmp9258, label %for.cond8.preheader.for.body10_crit_edge, label %for.cond8.preheader.if.end29_crit_edge

for.cond8.preheader.if.end29_crit_edge:           ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8:                                        ; preds = %for.body10
  %inc = add nuw nsw i32 %j.0259, 1
  %exitcond.not = icmp eq i32 %inc, %actual_eccbytes.0
  br i1 %exitcond.not, label %for.cond8.if.end29_crit_edge, label %for.cond8.for.body10_crit_edge

for.cond8.for.body10_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

for.cond8.if.end29_crit_edge:                     ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.body10:                                       ; preds = %for.cond8.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %j.0259 = phi i32 [ %inc, %for.cond8.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %arrayidx = getelementptr i8, ptr %calc_ecc.addr.0266, i32 %j.0259
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp11.not = icmp eq i8 %15, 0
  br i1 %cmp11.not, label %for.cond8, label %if.then15.critedge

if.then15.critedge:                               ; preds = %for.body10
  %bcmp = tail call i32 @bcmp(ptr %calc_ecc.addr.0266, ptr nonnull %erased_ecc_vec.0, i32 %actual_eccbytes.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp17 = icmp eq i32 %bcmp, 0
  br i1 %cmp17, label %if.then15.critedge.if.end29_crit_edge, label %if.else

if.then15.critedge.if.end29_crit_edge:            ; preds = %if.then15.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.else:                                          ; preds = %if.then15.critedge
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %mul = mul i32 %17, %i.0261
  %arrayidx22 = getelementptr i8, ptr %data, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp277.i = icmp sgt i32 %17, 0
  br i1 %cmp277.i, label %if.else.cond.false.i_crit_edge, label %if.else.for.cond90.preheader.i_crit_edge

if.else.for.cond90.preheader.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond90.preheader.i

if.else.cond.false.i_crit_edge:                   ; preds = %if.else
  br label %cond.false.i

for.cond.i:                                       ; preds = %cond.false.i
  %inc.i = add nuw nsw i32 %i.0279.i, 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.cond.i.cond.false.i_crit_edge, label %for.cond.i.for.cond90.preheader.i_crit_edge

for.cond.i.for.cond90.preheader.i_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond90.preheader.i

for.cond.i.cond.false.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

for.cond90.preheader.i:                           ; preds = %for.cond.i.for.cond90.preheader.i_crit_edge, %if.else.for.cond90.preheader.i_crit_edge
  %flip_bits.0.lcssa.i = phi i32 [ 0, %if.else.for.cond90.preheader.i_crit_edge ], [ %add85.i, %for.cond.i.for.cond90.preheader.i_crit_edge ]
  %20 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes.i, align 4
  %sub280.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub280.i)
  %cmp93281.i = icmp sgt i32 %sub280.i, 0
  br i1 %cmp93281.i, label %for.cond90.preheader.i.cond.false187.i_crit_edge, label %for.cond90.preheader.i.for.end204.i_crit_edge

for.cond90.preheader.i.for.end204.i_crit_edge:    ; preds = %for.cond90.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end204.i

for.cond90.preheader.i.cond.false187.i_crit_edge: ; preds = %for.cond90.preheader.i
  br label %cond.false187.i

cond.false.i:                                     ; preds = %for.cond.i.cond.false.i_crit_edge, %if.else.cond.false.i_crit_edge
  %i.0279.i = phi i32 [ %inc.i, %for.cond.i.cond.false.i_crit_edge ], [ 0, %if.else.cond.false.i_crit_edge ]
  %flip_bits.0278.i = phi i32 [ %add85.i, %for.cond.i.cond.false.i_crit_edge ], [ 0, %if.else.cond.false.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %arrayidx22, i32 %i.0279.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %neg.i = xor i32 %conv.i, -1
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %neg.i) #11
  %add85.i = add i32 %call.i.i, %flip_bits.0278.i
  %24 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add85.i, i32 %25)
  %cmp88.i = icmp sgt i32 %add85.i, %25
  br i1 %cmp88.i, label %cond.false.i.if.else25_crit_edge, label %for.cond.i

cond.false.i.if.else25_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

for.cond90.i:                                     ; preds = %cond.false187.i
  %inc203.i = add nuw nsw i32 %i.1283.i, 1
  %26 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytes.i, align 4
  %sub.i = add i32 %27, -1
  %cmp93.i = icmp slt i32 %inc203.i, %sub.i
  br i1 %cmp93.i, label %for.cond90.i.cond.false187.i_crit_edge, label %for.cond90.i.for.end204.i_crit_edge

for.cond90.i.for.end204.i_crit_edge:              ; preds = %for.cond90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end204.i

for.cond90.i.cond.false187.i_crit_edge:           ; preds = %for.cond90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false187.i

cond.false187.i:                                  ; preds = %for.cond90.i.cond.false187.i_crit_edge, %for.cond90.preheader.i.cond.false187.i_crit_edge
  %i.1283.i = phi i32 [ %inc203.i, %for.cond90.i.cond.false187.i_crit_edge ], [ 0, %for.cond90.preheader.i.cond.false187.i_crit_edge ]
  %flip_bits.1282.i = phi i32 [ %add194.i, %for.cond90.i.cond.false187.i_crit_edge ], [ %flip_bits.0.lcssa.i, %for.cond90.preheader.i.cond.false187.i_crit_edge ]
  %arrayidx96.i = getelementptr i8, ptr %read_ecc.addr.0269, i32 %i.1283.i
  %28 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx96.i, align 1
  %conv97.i = zext i8 %29 to i32
  %neg98.i = xor i32 %conv97.i, -1
  %call.i271.i = tail call i32 @__sw_hweight8(i32 noundef %neg98.i) #11
  %add194.i = add i32 %call.i271.i, %flip_bits.1282.i
  %30 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add194.i, i32 %31)
  %cmp198.i = icmp sgt i32 %add194.i, %31
  br i1 %cmp198.i, label %cond.false187.i.if.else25_crit_edge, label %for.cond90.i

cond.false187.i.if.else25_crit_edge:              ; preds = %cond.false187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

for.end204.i:                                     ; preds = %for.cond90.i.for.end204.i_crit_edge, %for.cond90.preheader.i.for.end204.i_crit_edge
  %flip_bits.1.lcssa.i = phi i32 [ %flip_bits.0.lcssa.i, %for.cond90.preheader.i.for.end204.i_crit_edge ], [ %add194.i, %for.cond90.i.for.end204.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flip_bits.1.lcssa.i)
  %tobool205.not.i = icmp eq i32 %flip_bits.1.lcssa.i, 0
  br i1 %tobool205.not.i, label %for.end204.i.if.else25_crit_edge, label %if.then24

for.end204.i.if.else25_crit_edge:                 ; preds = %for.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.then24:                                        ; preds = %for.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 8
  %34 = call ptr @memset(ptr %arrayidx22, i32 255, i32 %33)
  %35 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytes.i, align 4
  %37 = call ptr @memset(ptr %read_ecc.addr.0269, i32 255, i32 %36)
  %add = add i32 %flip_bits.1.lcssa.i, %stat.0264
  br label %if.end29

if.else25:                                        ; preds = %for.end204.i.if.else25_crit_edge, %cond.false187.i.if.else25_crit_edge, %cond.false.i.if.else25_crit_edge
  %arrayidx26 = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.0261
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %arrayidx26, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else25, %if.then24, %if.then15.critedge.if.end29_crit_edge, %for.cond8.if.end29_crit_edge, %for.cond8.preheader.if.end29_crit_edge
  %stat.1 = phi i32 [ %stat.0264, %if.then15.critedge.if.end29_crit_edge ], [ %add, %if.then24 ], [ %stat.0264, %if.else25 ], [ %stat.0264, %for.cond8.preheader.if.end29_crit_edge ], [ %stat.0264, %for.cond8.if.end29_crit_edge ]
  %is_error_reported.1.off0 = phi i1 [ %is_error_reported.0.off0265, %if.then15.critedge.if.end29_crit_edge ], [ %is_error_reported.0.off0265, %if.then24 ], [ true, %if.else25 ], [ %is_error_reported.0.off0265, %for.cond8.preheader.if.end29_crit_edge ], [ %is_error_reported.0.off0265, %for.cond8.if.end29_crit_edge ]
  %39 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytes.i, align 4
  %add.ptr = getelementptr i8, ptr %calc_ecc.addr.0266, i32 %40
  %add.ptr32 = getelementptr i8, ptr %read_ecc.addr.0269, i32 %40
  %inc34 = add nuw nsw i32 %i.0261, 1
  %exitcond297.not = icmp eq i32 %inc34, %1
  br i1 %exitcond297.not, label %for.end35, label %if.end29.for.cond8.preheader_crit_edge

if.end29.for.cond8.preheader_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond8.preheader

for.end35:                                        ; preds = %if.end29
  br i1 %is_error_reported.1.off0, label %if.end38, label %for.end35.cleanup_crit_edge

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %for.end35
  %elm_dev = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 19
  %41 = ptrtoint ptr %elm_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %elm_dev, align 4
  call void @elm_decode_bch_error_page(ptr noundef %42, ptr noundef %calc_ecc, ptr noundef nonnull %err_vec) #11
  br i1 %cmp260, label %for.body43.lr.ph, label %if.end38.for.end149.thread_crit_edge

if.end38.for.end149.thread_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end149.thread

for.body43.lr.ph:                                 ; preds = %if.end38
  %pdev50 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 1
  %size73 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes145 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  br label %for.body43

for.body43:                                       ; preds = %if.end137.for.body43_crit_edge, %for.body43.lr.ph
  %data.addr.0289 = phi ptr [ %data, %for.body43.lr.ph ], [ %add.ptr144, %if.end137.for.body43_crit_edge ]
  %err.0288 = phi i32 [ 0, %for.body43.lr.ph ], [ %err.3, %if.end137.for.body43_crit_edge ]
  %spare_ecc.0285 = phi ptr [ %read_ecc, %for.body43.lr.ph ], [ %add.ptr146, %if.end137.for.body43_crit_edge ]
  %stat.2284 = phi i32 [ %stat.1, %for.body43.lr.ph ], [ %77, %if.end137.for.body43_crit_edge ]
  %i.1281 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc148, %if.end137.for.body43_crit_edge ]
  %error_uncorrectable = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.1281, i32 1
  %43 = ptrtoint ptr %error_uncorrectable to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %error_uncorrectable, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool45.not = icmp eq i8 %44, 0
  br i1 %tobool45.not, label %if.else52, label %do.end49

do.end49:                                         ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.117) #14
  br label %if.end137

if.else52:                                        ; preds = %for.body43
  %arrayidx44 = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.1281
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx44, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool55.not = icmp eq i8 %48, 0
  br i1 %tobool55.not, label %if.else52.if.end137_crit_edge, label %for.cond57.preheader

if.else52.if.end137_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.cond57.preheader:                             ; preds = %if.else52
  %error_count = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.1281, i32 2
  %49 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp59275 = icmp sgt i32 %50, 0
  br i1 %cmp59275, label %for.cond57.preheader.for.body61_crit_edge, label %for.cond57.preheader.if.end137_crit_edge

for.cond57.preheader.if.end137_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.cond57.preheader.for.body61_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body61

for.body61:                                       ; preds = %for.inc133.for.body61_crit_edge, %for.cond57.preheader.for.body61_crit_edge
  %err.1278 = phi i32 [ %err.2, %for.inc133.for.body61_crit_edge ], [ %err.0288, %for.cond57.preheader.for.body61_crit_edge ]
  %j.1276 = phi i32 [ %inc134, %for.inc133.for.body61_crit_edge ], [ 0, %for.cond57.preheader.for.body61_crit_edge ]
  %51 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ecc_opt, align 8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %52, label %for.body61.cleanup_crit_edge [
    i32 3, label %sw.bb63
    i32 5, label %for.body61.sw.bb67_crit_edge
    i32 6, label %for.body61.sw.bb67_crit_edge316
  ]

for.body61.sw.bb67_crit_edge316:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb67

for.body61.sw.bb67_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb67

for.body61.cleanup_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb63:                                          ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx65 = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.1281, i32 3, i32 %j.1276
  %54 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx65, align 4
  %add66 = add i32 %55, 4
  br label %sw.epilog72

sw.bb67:                                          ; preds = %for.body61.sw.bb67_crit_edge, %for.body61.sw.bb67_crit_edge316
  %arrayidx70 = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.1281, i32 3, i32 %j.1276
  %56 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx70, align 4
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb67, %sw.bb63
  %pos.0 = phi i32 [ %57, %sw.bb67 ], [ %add66, %sw.bb63 ]
  %58 = ptrtoint ptr %size73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size73, align 4
  %add74 = add i32 %59, %actual_eccbytes.0
  %mul75 = shl i32 %add74, 3
  %rem = and i32 %pos.0, 7
  %60 = xor i32 %pos.0, -1
  %sub77 = add i32 %mul75, %60
  %div243 = lshr i32 %sub77, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %mul75)
  %cmp78 = icmp ult i32 %pos.0, %mul75
  br i1 %cmp78, label %if.then80, label %do.end129

if.then80:                                        ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub77)
  %cmp81 = icmp ult i32 %sub77, 4096
  br i1 %cmp81, label %do.body84, label %do.body99

do.body84:                                        ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_elm_correct_data.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_elm_correct_data, %if.then89)) #11
          to label %do.end94 [label %if.then89], !srcloc !262

if.then89:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx90 = getelementptr i8, ptr %data.addr.0289, i32 %div243
  %61 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %62 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_elm_correct_data.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.119, i32 noundef %div243, i32 noundef %conv91) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then89, %do.body84
  %shl = shl nuw nsw i32 1, %rem
  %arrayidx95 = getelementptr i8, ptr %data.addr.0289, i32 %div243
  %63 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx95, align 1
  %65 = trunc i32 %shl to i8
  %conv97 = xor i8 %64, %65
  store i8 %conv97, ptr %arrayidx95, align 1
  br label %for.inc133

do.body99:                                        ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_elm_correct_data.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_elm_correct_data, %if.then111)) #11
          to label %do.end118 [label %if.then111], !srcloc !262

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  %sub112 = add nsw i32 %div243, -512
  %arrayidx114 = getelementptr i8, ptr %spare_ecc.0285, i32 %sub112
  %66 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %67 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_elm_correct_data.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.120, i32 noundef %sub112, i32 noundef %conv115) #11
  br label %do.end118

do.end118:                                        ; preds = %if.then111, %do.body99
  %shl119 = shl nuw nsw i32 1, %rem
  %sub120 = add nsw i32 %div243, -512
  %arrayidx121 = getelementptr i8, ptr %spare_ecc.0285, i32 %sub120
  %68 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx121, align 1
  %70 = trunc i32 %shl119 to i8
  %conv124 = xor i8 %69, %70
  store i8 %conv124, ptr %arrayidx121, align 1
  br label %for.inc133

do.end129:                                        ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev50, align 8
  %dev131 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.122, i32 noundef %div243, i32 noundef %rem) #14
  br label %for.inc133

for.inc133:                                       ; preds = %do.end129, %do.end118, %do.end94
  %err.2 = phi i32 [ %err.1278, %do.end94 ], [ %err.1278, %do.end118 ], [ -74, %do.end129 ]
  %inc134 = add nuw nsw i32 %j.1276, 1
  %73 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %error_count, align 4
  %cmp59 = icmp slt i32 %inc134, %74
  br i1 %cmp59, label %for.inc133.for.body61_crit_edge, label %for.inc133.if.end137_crit_edge

for.inc133.if.end137_crit_edge:                   ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

for.inc133.for.body61_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body61

if.end137:                                        ; preds = %for.inc133.if.end137_crit_edge, %for.cond57.preheader.if.end137_crit_edge, %if.else52.if.end137_crit_edge, %do.end49
  %err.3 = phi i32 [ -74, %do.end49 ], [ %err.0288, %if.else52.if.end137_crit_edge ], [ %err.0288, %for.cond57.preheader.if.end137_crit_edge ], [ %err.2, %for.inc133.if.end137_crit_edge ]
  %error_count139 = getelementptr [8 x %struct.elm_errorvec], ptr %err_vec, i32 0, i32 %i.1281, i32 2
  %75 = ptrtoint ptr %error_count139 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %error_count139, align 4
  %77 = call i32 @llvm.umax.i32(i32 %stat.2284, i32 %76)
  %78 = ptrtoint ptr %size73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size73, align 4
  %add.ptr144 = getelementptr i8, ptr %data.addr.0289, i32 %79
  %80 = ptrtoint ptr %bytes145 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bytes145, align 4
  %add.ptr146 = getelementptr i8, ptr %spare_ecc.0285, i32 %81
  %inc148 = add nuw nsw i32 %i.1281, 1
  %exitcond298.not = icmp eq i32 %inc148, %1
  br i1 %exitcond298.not, label %for.end149, label %if.end137.for.body43_crit_edge

if.end137.for.body43_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.end149:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool150.not = icmp eq i32 %err.3, 0
  br i1 %tobool150.not, label %for.end149.for.end149.thread_crit_edge, label %for.end149.cleanup_crit_edge

for.end149.cleanup_crit_edge:                     ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end149.for.end149.thread_crit_edge:           ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end149.thread

for.end149.thread:                                ; preds = %for.end149.for.end149.thread_crit_edge, %if.end38.for.end149.thread_crit_edge
  %stat.2.lcssa304 = phi i32 [ %77, %for.end149.for.end149.thread_crit_edge ], [ %stat.1, %if.end38.for.end149.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %for.end149.thread, %for.end149.cleanup_crit_edge, %for.body61.cleanup_crit_edge, %for.end35.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %stat.1, %for.end35.cleanup_crit_edge ], [ %stat.2.lcssa304, %for.end149.thread ], [ %err.3, %for.end149.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %for.body61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %err_vec) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_read_page_bch(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %calc_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 11
  %0 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calc_buf, align 4
  %code_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 12
  %2 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %code_buf, align 8
  %call3 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %neccpg = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 21
  %4 = ptrtoint ptr %neccpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %neccpg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp109.not = icmp eq i32 %5, 0
  br i1 %cmp109.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %eccpg_size = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 23
  %eccpg_bytes = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 24
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %gpmc_ecc_config.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 7
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %ecc_stats45 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %eccpg.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc49, %for.inc.for.body_crit_edge ]
  %max_bitflips.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %hwctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwctl, align 4
  tail call void %7(ptr noundef %chip, i32 noundef 0) #11
  %8 = ptrtoint ptr %eccpg_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eccpg_size, align 4
  %mul = mul i32 %9, %eccpg.0111
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %call8 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul, ptr noundef %add.ptr, i32 noundef %9, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize, align 4
  %add = add i32 %11, 2
  %12 = ptrtoint ptr %eccpg_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eccpg_bytes, align 8
  %mul12 = mul i32 %13, %eccpg.0111
  %add13 = add i32 %add, %mul12
  %14 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oob_poi, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 2
  %add.ptr17 = getelementptr i8, ptr %add.ptr14, i32 %mul12
  %call19 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %add13, ptr noundef %add.ptr17, i32 noundef %13, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes.i, align 4
  %18 = ptrtoint ptr %gpmc_ecc_config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpmc_ecc_config.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !265
  %21 = lshr i32 %20, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  %and.i = and i32 %21, 7
  %call3.i = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp ne i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %exitcond.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.i
  br i1 %or.cond.i, label %if.end22.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.1

if.end22.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.1:                                     ; preds = %if.end22
  %add.ptr.i = getelementptr i8, ptr %1, i32 %17
  %call3.i.1 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %tobool.not.i.1 = icmp ne i32 %call3.i.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.i.1 = icmp eq i32 %and.i, 1
  %or.cond.i.1 = select i1 %tobool.not.i.1, i1 true, i1 %exitcond.i.1
  br i1 %or.cond.i.1, label %for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.2

for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add.ptr.i.1 = getelementptr i8, ptr %add.ptr.i, i32 %17
  %call3.i.2 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.1, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2)
  %tobool.not.i.2 = icmp ne i32 %call3.i.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.i.2 = icmp eq i32 %and.i, 2
  %or.cond.i.2 = select i1 %tobool.not.i.2, i1 true, i1 %exitcond.i.2
  br i1 %or.cond.i.2, label %for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.3

for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %add.ptr.i.2 = getelementptr i8, ptr %add.ptr.i.1, i32 %17
  %call3.i.3 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.2, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3)
  %tobool.not.i.3 = icmp ne i32 %call3.i.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %exitcond.i.3 = icmp eq i32 %and.i, 3
  %or.cond.i.3 = select i1 %tobool.not.i.3, i1 true, i1 %exitcond.i.3
  br i1 %or.cond.i.3, label %for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.4

for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %add.ptr.i.3 = getelementptr i8, ptr %add.ptr.i.2, i32 %17
  %call3.i.4 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.4)
  %tobool.not.i.4 = icmp ne i32 %call3.i.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %exitcond.i.4 = icmp eq i32 %and.i, 4
  %or.cond.i.4 = select i1 %tobool.not.i.4, i1 true, i1 %exitcond.i.4
  br i1 %or.cond.i.4, label %for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.5

for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %add.ptr.i.4 = getelementptr i8, ptr %add.ptr.i.3, i32 %17
  %call3.i.5 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.4, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.5)
  %tobool.not.i.5 = icmp ne i32 %call3.i.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %exitcond.i.5 = icmp eq i32 %and.i, 5
  %or.cond.i.5 = select i1 %tobool.not.i.5, i1 true, i1 %exitcond.i.5
  br i1 %or.cond.i.5, label %for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.6

for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %add.ptr.i.5 = getelementptr i8, ptr %add.ptr.i.4, i32 %17
  %call3.i.6 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.5, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.6)
  %tobool.not.i.6 = icmp ne i32 %call3.i.6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %exitcond.i.6 = icmp eq i32 %and.i, 6
  %or.cond.i.6 = select i1 %tobool.not.i.6, i1 true, i1 %exitcond.i.6
  br i1 %or.cond.i.6, label %for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.7

for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.6 = getelementptr i8, ptr %add.ptr.i.5, i32 %17
  %call3.i.7 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.6, i32 noundef 7) #11
  br label %omap_calculate_ecc_bch_multi.exit

omap_calculate_ecc_bch_multi.exit:                ; preds = %for.body.i.7, %for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge, %if.end22.omap_calculate_ecc_bch_multi.exit_crit_edge
  %call3.i.lcssa = phi i32 [ %call3.i, %if.end22.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.1, %for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.2, %for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.3, %for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.4, %for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.5, %for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.6, %for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.7, %for.body.i.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.lcssa)
  %tobool27.not = icmp eq i32 %call3.i.lcssa, 0
  br i1 %tobool27.not, label %if.end29, label %omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge

omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge: ; preds = %omap_calculate_ecc_bch_multi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %omap_calculate_ecc_bch_multi.exit
  %22 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oob_poi, align 4
  %24 = ptrtoint ptr %eccpg_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eccpg_bytes, align 8
  %mul32 = mul i32 %25, %eccpg.0111
  %call34 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %chip, ptr noundef %3, ptr noundef %23, i32 noundef %mul32, i32 noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %26 = ptrtoint ptr %correct to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %correct, align 4
  %28 = ptrtoint ptr %eccpg_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eccpg_size, align 4
  %mul40 = mul i32 %29, %eccpg.0111
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %mul40
  %call42 = tail call i32 %27(ptr noundef %chip, ptr noundef %add.ptr41, ptr noundef %3, ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %failed, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %failed, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %ecc_stats45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ecc_stats45, align 4
  %add46 = add i32 %33, %call42
  store i32 %add46, ptr %ecc_stats45, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0110, i32 %call42)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then44
  %max_bitflips.1 = phi i32 [ %max_bitflips.0110, %if.then44 ], [ %34, %if.else ]
  %inc49 = add nuw i32 %eccpg.0111, 1
  %35 = ptrtoint ptr %neccpg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %neccpg, align 4
  %cmp = icmp ult i32 %inc49, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ], [ %call19, %if.end11.cleanup_crit_edge ], [ %call3.i.lcssa, %omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge ], [ %call34, %if.end29.cleanup_crit_edge ], [ %max_bitflips.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_write_page_bch(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %calc_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 11
  %0 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calc_buf, align 4
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %neccpg = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 21
  %2 = ptrtoint ptr %neccpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %neccpg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %data_out = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %eccpg_size = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 23
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %gpmc_ecc_config.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 7
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %eccpg_bytes = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 24
  br label %for.body

for.cond:                                         ; preds = %if.end11
  %inc = add nuw i32 %eccpg.056, 1
  %4 = ptrtoint ptr %neccpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %neccpg, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %eccpg.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %hwctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwctl, align 4
  tail call void %7(ptr noundef %chip, i32 noundef 1) #11
  %8 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_out, align 8
  %10 = ptrtoint ptr %eccpg_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eccpg_size, align 4
  %mul = mul i32 %11, %eccpg.056
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  tail call void %9(ptr noundef %chip, ptr noundef %add.ptr, i32 noundef %11, i1 noundef zeroext false) #11
  %12 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes.i, align 4
  %14 = ptrtoint ptr %gpmc_ecc_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpmc_ecc_config.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !265
  %17 = lshr i32 %16, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  %and.i = and i32 %17, 7
  %call3.i = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp ne i32 %call3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %exitcond.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.i
  br i1 %or.cond.i, label %for.body.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.1

for.body.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.1:                                     ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %1, i32 %13
  %call3.i.1 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %tobool.not.i.1 = icmp ne i32 %call3.i.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.i.1 = icmp eq i32 %and.i, 1
  %or.cond.i.1 = select i1 %tobool.not.i.1, i1 true, i1 %exitcond.i.1
  br i1 %or.cond.i.1, label %for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.2

for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add.ptr.i.1 = getelementptr i8, ptr %add.ptr.i, i32 %13
  %call3.i.2 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.1, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2)
  %tobool.not.i.2 = icmp ne i32 %call3.i.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.i.2 = icmp eq i32 %and.i, 2
  %or.cond.i.2 = select i1 %tobool.not.i.2, i1 true, i1 %exitcond.i.2
  br i1 %or.cond.i.2, label %for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.3

for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %add.ptr.i.2 = getelementptr i8, ptr %add.ptr.i.1, i32 %13
  %call3.i.3 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.2, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3)
  %tobool.not.i.3 = icmp ne i32 %call3.i.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %exitcond.i.3 = icmp eq i32 %and.i, 3
  %or.cond.i.3 = select i1 %tobool.not.i.3, i1 true, i1 %exitcond.i.3
  br i1 %or.cond.i.3, label %for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.4

for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %add.ptr.i.3 = getelementptr i8, ptr %add.ptr.i.2, i32 %13
  %call3.i.4 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.3, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.4)
  %tobool.not.i.4 = icmp ne i32 %call3.i.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %exitcond.i.4 = icmp eq i32 %and.i, 4
  %or.cond.i.4 = select i1 %tobool.not.i.4, i1 true, i1 %exitcond.i.4
  br i1 %or.cond.i.4, label %for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.5

for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %add.ptr.i.4 = getelementptr i8, ptr %add.ptr.i.3, i32 %13
  %call3.i.5 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.4, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.5)
  %tobool.not.i.5 = icmp ne i32 %call3.i.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %exitcond.i.5 = icmp eq i32 %and.i, 5
  %or.cond.i.5 = select i1 %tobool.not.i.5, i1 true, i1 %exitcond.i.5
  br i1 %or.cond.i.5, label %for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.6

for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %add.ptr.i.5 = getelementptr i8, ptr %add.ptr.i.4, i32 %13
  %call3.i.6 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.5, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.6)
  %tobool.not.i.6 = icmp ne i32 %call3.i.6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %exitcond.i.6 = icmp eq i32 %and.i, 6
  %or.cond.i.6 = select i1 %tobool.not.i.6, i1 true, i1 %exitcond.i.6
  br i1 %or.cond.i.6, label %for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge, label %for.body.i.7

for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_calculate_ecc_bch_multi.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.6 = getelementptr i8, ptr %add.ptr.i.5, i32 %13
  %call3.i.7 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr.i.6, i32 noundef 7) #11
  br label %omap_calculate_ecc_bch_multi.exit

omap_calculate_ecc_bch_multi.exit:                ; preds = %for.body.i.7, %for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge, %for.body.omap_calculate_ecc_bch_multi.exit_crit_edge
  %call3.i.lcssa = phi i32 [ %call3.i, %for.body.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.1, %for.body.i.1.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.2, %for.body.i.2.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.3, %for.body.i.3.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.4, %for.body.i.4.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.5, %for.body.i.5.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.6, %for.body.i.6.omap_calculate_ecc_bch_multi.exit_crit_edge ], [ %call3.i.7, %for.body.i.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.lcssa)
  %tobool9.not = icmp eq i32 %call3.i.lcssa, 0
  br i1 %tobool9.not, label %if.end11, label %omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge

omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge: ; preds = %omap_calculate_ecc_bch_multi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %omap_calculate_ecc_bch_multi.exit
  %18 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oob_poi, align 4
  %20 = ptrtoint ptr %eccpg_bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eccpg_bytes, align 8
  %mul12 = mul i32 %21, %eccpg.056
  %call14 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %chip, ptr noundef %1, ptr noundef %19, i32 noundef %mul12, i32 noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %data_out18 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %22 = ptrtoint ptr %data_out18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_out18, align 8
  %oob_poi19 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %24 = ptrtoint ptr %oob_poi19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %oob_poi19, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %26 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oobsize, align 4
  tail call void %23(ptr noundef %chip, ptr noundef %25, i32 noundef %27, i1 noundef zeroext false) #11
  %call20 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end11.cleanup_crit_edge, %omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %for.end ], [ %call2, %entry.cleanup_crit_edge ], [ %call14, %if.end11.cleanup_crit_edge ], [ %call3.i.lcssa, %omap_calculate_ecc_bch_multi.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_write_subpage_bch(ptr noundef %chip, i32 noundef %offset, i32 noundef %data_len, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %calc_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 11
  %0 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calc_buf, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes, align 4
  %div = udiv i32 %offset, %3
  %add = add i32 %offset, -1
  %sub = add i32 %add, %data_len
  %div4 = udiv i32 %sub, %3
  %call5 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup45_crit_edge

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

for.cond.preheader:                               ; preds = %entry
  %neccpg = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 21
  %6 = ptrtoint ptr %neccpg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %neccpg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp113.not = icmp eq i32 %7, 0
  br i1 %cmp113.not, label %for.cond.preheader.for.end41_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %data_out = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %eccpg_size = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 23
  %nsteps_per_eccpg = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 22
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %eccpg_bytes = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 24
  br label %for.body

for.cond:                                         ; preds = %for.end
  %inc40 = add nuw i32 %eccpg.0114, 1
  %8 = ptrtoint ptr %neccpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %neccpg, align 4
  %cmp = icmp ult i32 %inc40, %9
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end41_crit_edge

for.cond.for.end41_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %eccpg.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %for.cond.for.body_crit_edge ]
  %10 = ptrtoint ptr %hwctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwctl, align 4
  tail call void %11(ptr noundef %chip, i32 noundef 1) #11
  %12 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_out, align 8
  %14 = ptrtoint ptr %eccpg_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eccpg_size, align 4
  %mul = mul i32 %15, %eccpg.0114
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  tail call void %13(ptr noundef %chip, ptr noundef %add.ptr, i32 noundef %15, i1 noundef zeroext false) #11
  %16 = ptrtoint ptr %nsteps_per_eccpg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nsteps_per_eccpg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9110.not = icmp eq i32 %17, 0
  br i1 %cmp9110.not, label %for.body.for.end_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %18 = phi i32 [ %21, %for.inc.for.body10_crit_edge ], [ %17, %for.body.for.body10_crit_edge ]
  %step.0111 = phi i32 [ %inc, %for.inc.for.body10_crit_edge ], [ 0, %for.body.for.body10_crit_edge ]
  %mul12 = mul i32 %18, %eccpg.0114
  %add16 = add i32 %mul12, %step.0111
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %div)
  %cmp17 = icmp ult i32 %add16, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %div4)
  %cmp19 = icmp ugt i32 %add16, %div4
  %or.cond = or i1 %cmp17, %cmp19
  %mul21 = mul i32 %step.0111, %5
  %add.ptr22 = getelementptr i8, ptr %1, i32 %mul21
  br i1 %or.cond, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  %19 = call ptr @memset(ptr %add.ptr22, i32 255, i32 %5)
  br label %for.inc

if.end28:                                         ; preds = %for.body10
  %call27 = tail call fastcc i32 @_omap_calculate_ecc_bch(ptr noundef %chip, ptr noundef %add.ptr22, i32 noundef %step.0111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end28.for.inc_crit_edge, label %if.end28.cleanup45_crit_edge

if.end28.cleanup45_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end28.thread
  %inc = add nuw i32 %step.0111, 1
  %20 = ptrtoint ptr %nsteps_per_eccpg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nsteps_per_eccpg, align 8
  %cmp9 = icmp ult i32 %inc, %21
  br i1 %cmp9, label %for.inc.for.body10_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %22 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oob_poi, align 4
  %24 = ptrtoint ptr %eccpg_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eccpg_bytes, align 8
  %mul33 = mul i32 %25, %eccpg.0114
  %call35 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %chip, ptr noundef %1, ptr noundef %23, i32 noundef %mul33, i32 noundef %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.cond, label %for.end.cleanup45_crit_edge

for.end.cleanup45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

for.end41:                                        ; preds = %for.cond.for.end41_crit_edge, %for.cond.preheader.for.end41_crit_edge
  %data_out42 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 26
  %26 = ptrtoint ptr %data_out42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data_out42, align 8
  %oob_poi43 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %28 = ptrtoint ptr %oob_poi43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oob_poi43, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %30 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oobsize, align 4
  tail call void %27(ptr noundef %chip, ptr noundef %29, i32 noundef %31, i1 noundef zeroext false) #11
  %call44 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #11
  br label %cleanup45

cleanup45:                                        ; preds = %for.end41, %for.end.cleanup45_crit_edge, %if.end28.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.3 = phi i32 [ %call44, %for.end41 ], [ %call5, %entry.cleanup45_crit_edge ], [ %call27, %if.end28.cleanup45_crit_edge ], [ %call35, %for.end.cleanup45_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elm_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_nand_dma_transfer(ptr noundef %chip, ptr noundef %addr, i32 noundef %len, i32 noundef %is_write) unnamed_addr #8 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_write)
  %tobool.not = icmp eq i32 %is_write, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  %0 = ptrtoint ptr %addr to i32
  %cmp = icmp ugt ptr %addr, inttoptr (i32 -1073741825 to ptr)
  %1 = call ptr @memset(ptr %sg, i32 255, i32 20)
  br i1 %cmp, label %land.lhs.true, label %entry.out_copy_crit_edge

entry.out_copy_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %cmp2 = icmp ugt ptr %2, %addr
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.out_copy_crit_edge

land.lhs.true.out_copy_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %3, %shr
  %call4 = tail call i32 @pfn_valid(i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.out_copy_crit_edge, label %if.end

land.lhs.true3.out_copy_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy

if.end:                                           ; preds = %land.lhs.true3
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %addr, i32 noundef %len) #11
  %dma = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call6 = call i32 @dma_map_sg_attrs(ptr noundef %9, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.91, i32 noundef %len) #14
  br label %out_copy

if.end10:                                         ; preds = %if.end
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end10.out_copy_unmap_crit_edge, label %lor.lhs.false.i

if.end10.out_copy_unmap_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy_unmap

lor.lhs.false.i:                                  ; preds = %if.end10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.out_copy_unmap_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.out_copy_unmap_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy_unmap

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.out_copy_unmap_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.out_copy_unmap_crit_edge:        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy_unmap

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = call ptr %17(ptr noundef nonnull %13, ptr noundef nonnull %sg, i32 noundef %call6, i32 noundef %cond, i32 noundef 3, ptr noundef null) #11
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %dmaengine_prep_slave_sg.exit.out_copy_unmap_crit_edge, label %if.end17

dmaengine_prep_slave_sg.exit.out_copy_unmap_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy_unmap

if.end17:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @omap_nand_dma_callback, ptr %callback, align 4
  %comp = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 8
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %comp, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_submit.i, align 4
  %call.i1 = call i32 %21(ptr noundef nonnull %call.i) #11
  %22 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #11
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 50
  %27 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_issue_pending.i, align 4
  call void %28(ptr noundef %24) #11
  %gpmc_cs = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 2
  %29 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gpmc_cs, align 4
  %gpmc_prefetch_control.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 5
  %31 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i2 = icmp eq i32 %33, 0
  br i1 %tobool.not.i2, label %if.end24, label %if.end17.out_copy_unmap_crit_edge

if.end17.out_copy_unmap_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_copy_unmap

if.end24:                                         ; preds = %if.end17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  call void @arm_heavy_mb() #11
  %34 = call i32 @llvm.bswap.i32(i32 %len) #11
  %gpmc_prefetch_config2.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 4
  %35 = ptrtoint ptr %gpmc_prefetch_config2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpmc_prefetch_config2.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #11, !srcloc !268
  %shl.i = shl i32 %30, 24
  %and.i = and i32 %is_write, 1
  %or6.i = or i32 %shl.i, %and.i
  %or9.i = or i32 %or6.i, 16516
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  call void @arm_heavy_mb() #11
  %37 = call i32 @llvm.bswap.i32(i32 %or9.i) #11
  %gpmc_prefetch_config1.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 3
  %38 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #11, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 16777216) #11, !srcloc !268
  call void @wait_for_completion(ptr noundef %comp) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %42 = load i32, ptr @loops_per_jiffy, align 4
  %mul = mul i32 %42, 500
  %gpmc_prefetch_status = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 16, i32 6
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %if.end24
  %tim.0 = phi i32 [ 0, %if.end24 ], [ %inc, %do.body27.do.body27_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !298
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !299
  %43 = ptrtoint ptr %gpmc_prefetch_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpmc_prefetch_status, align 8
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  %46 = and i32 %45, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool40.not = icmp ne i32 %46, 0
  %inc = add nuw i32 %tim.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim.0, i32 %mul)
  %cmp41 = icmp ult i32 %tim.0, %mul
  %or.cond = select i1 %tobool40.not, i1 %cmp41, i1 false
  br i1 %or.cond, label %do.body27.do.body27_crit_edge, label %do.end42

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

do.end42:                                         ; preds = %do.body27
  %47 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gpmc_cs, align 4
  %49 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  %and.i5 = and i32 %51, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i5, i32 %48)
  %cmp.not.i = icmp eq i32 %and.i5, %48
  br i1 %cmp.not.i, label %do.body.i7, label %do.end42.omap_prefetch_reset.exit_crit_edge

do.end42.omap_prefetch_reset.exit_crit_edge:      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_prefetch_reset.exit

do.body.i7:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %gpmc_prefetch_control.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gpmc_prefetch_control.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #11, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %gpmc_prefetch_config1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpmc_prefetch_config1.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #11, !srcloc !268
  br label %omap_prefetch_reset.exit

omap_prefetch_reset.exit:                         ; preds = %do.body.i7, %do.end42.omap_prefetch_reset.exit_crit_edge
  %56 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %dev47 = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev47, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %61, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #11
  br label %cleanup

out_copy_unmap:                                   ; preds = %if.end17.out_copy_unmap_crit_edge, %dmaengine_prep_slave_sg.exit.out_copy_unmap_crit_edge, %lor.lhs.false2.i.out_copy_unmap_crit_edge, %lor.lhs.false.i.out_copy_unmap_crit_edge, %if.end10.out_copy_unmap_crit_edge
  %62 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %dev50 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev50, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %67, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %cond, i32 noundef 0) #11
  br label %out_copy

out_copy:                                         ; preds = %out_copy_unmap, %do.end, %land.lhs.true3.out_copy_crit_edge, %land.lhs.true.out_copy_crit_edge, %entry.out_copy_crit_edge
  %or.i8 = or i32 %0, %len
  %and2.i = and i32 %or.i8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %out_copy
  br i1 %tobool3.not.i.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %68 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fifo.i, align 4
  call void @__raw_readsb(ptr noundef %69, ptr noundef %addr, i32 noundef %len) #11
  br label %cleanup

if.else.i:                                        ; preds = %cond.true
  %and.i9 = and i32 %or.i8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool5.not.i = icmp eq i32 %and.i9, 0
  %fifo9.i = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %70 = ptrtoint ptr %fifo9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fifo9.i, align 4
  br i1 %tobool5.not.i, label %if.else8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %len, 1
  call void @__raw_readsw(ptr noundef %71, ptr noundef %addr, i32 noundef %shr.i) #11
  br label %cleanup

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i = lshr i32 %len, 2
  call void @__raw_readsl(ptr noundef %71, ptr noundef %addr, i32 noundef %shr10.i) #11
  br label %cleanup

cond.false:                                       ; preds = %out_copy
  br i1 %tobool3.not.i.not, label %if.else.i18, label %if.then.i14

if.then.i14:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  %fifo.i13 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %72 = ptrtoint ptr %fifo.i13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fifo.i13, align 4
  call void @__raw_writesb(ptr noundef %73, ptr noundef %addr, i32 noundef %len) #11
  br label %cleanup

if.else.i18:                                      ; preds = %cond.false
  %and.i15 = and i32 %or.i8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool5.not.i16 = icmp eq i32 %and.i15, 0
  %fifo9.i17 = getelementptr inbounds %struct.omap_nand_info, ptr %chip, i32 0, i32 15
  %74 = ptrtoint ptr %fifo9.i17 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fifo9.i17, align 4
  br i1 %tobool5.not.i16, label %if.else8.i22, label %if.then6.i20

if.then6.i20:                                     ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i19 = lshr i32 %len, 1
  call void @__raw_writesw(ptr noundef %75, ptr noundef %addr, i32 noundef %shr.i19) #11
  br label %cleanup

if.else8.i22:                                     ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #13
  %shr10.i21 = lshr i32 %len, 2
  call void @__raw_writesl(ptr noundef %75, ptr noundef %addr, i32 noundef %shr10.i21) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else8.i22, %if.then6.i20, %if.then.i14, %if.else8.i, %if.then6.i, %if.then.i, %omap_prefetch_reset.exit
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_nand_dma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_compare_ecc(ptr nocapture noundef %ecc_data1, ptr nocapture noundef %ecc_data2, ptr nocapture noundef %page_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ecc_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc_data1, align 4
  %2 = lshr i32 %1, 24
  %3 = trunc i32 %2 to i8
  %arrayidx1.i = getelementptr i8, ptr %ecc_data1, i32 1
  %4 = lshr i32 %1, 16
  %5 = trunc i32 %4 to i8
  %arrayidx3.i = getelementptr i8, ptr %ecc_data1, i32 2
  %6 = lshr i32 %1, 8
  %7 = trunc i32 %6 to i8
  %8 = shl i8 %5, 1
  %shl13.i = and i8 %8, -128
  %and14.lobit.i = and i8 %3, 64
  %.lobit.i = and i8 %5, 32
  %9 = lshr i8 %3, 1
  %shl27.i = and i8 %9, 16
  %10 = lshr i8 %5, 1
  %shl32.i = and i8 %10, 8
  %11 = lshr i8 %3, 2
  %shl37.i = and i8 %11, 4
  %12 = lshr i8 %5, 2
  %shl42.i = and i8 %12, 2
  %and44.i = lshr i8 %3, 3
  %and44.lobit.i = and i8 %and44.i, 1
  %or18.i = or i8 %.lobit.i, %and14.lobit.i
  %or23.i = or i8 %or18.i, %shl27.i
  %or28.i = or i8 %or23.i, %shl37.i
  %or33.i = or i8 %or28.i, %and44.lobit.i
  %or38.i = or i8 %or33.i, %shl13.i
  %or43.i = or i8 %or38.i, %shl32.i
  %or48.i = or i8 %or43.i, %shl42.i
  %neg.i = xor i8 %or48.i, -1
  store i8 %neg.i, ptr %ecc_data1, align 1
  %13 = shl i8 %7, 1
  %shl54.i = and i8 %13, -128
  %14 = shl i8 %7, 4
  %shl58.i = and i8 %14, 64
  %.lobit168.i = and i8 %7, 32
  %15 = shl i8 %7, 3
  %shl68.i = and i8 %15, 16
  %16 = lshr i8 %7, 1
  %shl73.i = and i8 %16, 8
  %17 = shl i8 %7, 2
  %shl78.i = and i8 %17, 4
  %18 = lshr i8 %5, 6
  %shl83.i = and i8 %18, 2
  %and85.lobit.i = lshr i8 %3, 7
  %or59.i = or i8 %.lobit168.i, %and85.lobit.i
  %or64.i = or i8 %or59.i, %shl83.i
  %or69.i = or i8 %or64.i, %shl58.i
  %or74.i = or i8 %or69.i, %shl54.i
  %or79.i = or i8 %or74.i, %shl68.i
  %or84.i = or i8 %or79.i, %shl73.i
  %or89.i = or i8 %or84.i, %shl78.i
  %neg90.i = xor i8 %or89.i, -1
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %neg90.i, ptr %arrayidx1.i, align 1
  %20 = shl i8 %5, 5
  %shl96.i = and i8 %20, -128
  %21 = shl i8 %3, 4
  %shl100.i = and i8 %21, 64
  %22 = shl i8 %5, 4
  %shl105.i = and i8 %22, 32
  %23 = shl i8 %3, 3
  %shl110.i = and i8 %23, 16
  %24 = shl i8 %5, 3
  %shl115.i = and i8 %24, 8
  %and117.i = shl i8 %3, 2
  %shl120.i = and i8 %and117.i, 4
  %25 = lshr i8 %7, 6
  %shl125.i = and i8 %25, 2
  %26 = lshr i8 %7, 3
  %.lobit175.i = and i8 %26, 1
  %or101.i = or i8 %shl110.i, %shl100.i
  %or106.i = or i8 %or101.i, %shl120.i
  %or111.i = or i8 %or106.i, %shl96.i
  %or116.i = or i8 %or111.i, %shl105.i
  %or121.i = or i8 %or116.i, %shl115.i
  %or126.i = or i8 %or121.i, %shl125.i
  %or131.i = or i8 %or126.i, %.lobit175.i
  %neg132.i = xor i8 %or131.i, -1
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %neg132.i, ptr %arrayidx3.i, align 1
  %28 = ptrtoint ptr %ecc_data2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ecc_data2, align 1
  %arrayidx1.i392 = getelementptr i8, ptr %ecc_data2, i32 1
  %30 = ptrtoint ptr %arrayidx1.i392 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.i392, align 1
  %arrayidx3.i393 = getelementptr i8, ptr %ecc_data2, i32 2
  %32 = ptrtoint ptr %arrayidx3.i393 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.i393, align 1
  %34 = shl i8 %31, 1
  %shl13.i394 = and i8 %34, -128
  %and14.lobit.i395 = and i8 %29, 64
  %.lobit.i396 = and i8 %31, 32
  %35 = lshr i8 %29, 1
  %shl27.i397 = and i8 %35, 16
  %36 = lshr i8 %31, 1
  %shl32.i398 = and i8 %36, 8
  %37 = lshr i8 %29, 2
  %shl37.i399 = and i8 %37, 4
  %38 = lshr i8 %31, 2
  %shl42.i400 = and i8 %38, 2
  %and44.i401 = lshr i8 %29, 3
  %and44.lobit.i402 = and i8 %and44.i401, 1
  %or18.i403 = or i8 %.lobit.i396, %and14.lobit.i395
  %or23.i404 = or i8 %or18.i403, %shl27.i397
  %or28.i405 = or i8 %or23.i404, %shl37.i399
  %or33.i406 = or i8 %or28.i405, %and44.lobit.i402
  %or38.i407 = or i8 %or33.i406, %shl13.i394
  %or43.i408 = or i8 %or38.i407, %shl32.i398
  %or48.i409 = or i8 %or43.i408, %shl42.i400
  %neg.i410 = xor i8 %or48.i409, -1
  store i8 %neg.i410, ptr %ecc_data2, align 1
  %39 = shl i8 %33, 1
  %shl54.i411 = and i8 %39, -128
  %40 = shl i8 %33, 4
  %shl58.i412 = and i8 %40, 64
  %.lobit168.i413 = and i8 %33, 32
  %41 = shl i8 %33, 3
  %shl68.i414 = and i8 %41, 16
  %42 = lshr i8 %33, 1
  %shl73.i415 = and i8 %42, 8
  %43 = shl i8 %33, 2
  %shl78.i416 = and i8 %43, 4
  %44 = lshr i8 %31, 6
  %shl83.i417 = and i8 %44, 2
  %and85.lobit.i418 = lshr i8 %29, 7
  %or59.i419 = or i8 %.lobit168.i413, %and85.lobit.i418
  %or64.i420 = or i8 %or59.i419, %shl83.i417
  %or69.i421 = or i8 %or64.i420, %shl58.i412
  %or74.i422 = or i8 %or69.i421, %shl54.i411
  %or79.i423 = or i8 %or74.i422, %shl68.i414
  %or84.i424 = or i8 %or79.i423, %shl73.i415
  %or89.i425 = or i8 %or84.i424, %shl78.i416
  %neg90.i426 = xor i8 %or89.i425, -1
  store i8 %neg90.i426, ptr %arrayidx1.i392, align 1
  %45 = shl i8 %31, 5
  %shl96.i427 = and i8 %45, -128
  %46 = shl i8 %29, 4
  %shl100.i428 = and i8 %46, 64
  %47 = shl i8 %31, 4
  %shl105.i429 = and i8 %47, 32
  %48 = shl i8 %29, 3
  %shl110.i430 = and i8 %48, 16
  %49 = shl i8 %31, 3
  %shl115.i431 = and i8 %49, 8
  %and117.i432 = shl i8 %29, 2
  %shl120.i433 = and i8 %and117.i432, 4
  %50 = lshr i8 %33, 6
  %shl125.i434 = and i8 %50, 2
  %51 = lshr i8 %33, 3
  %.lobit175.i435 = and i8 %51, 1
  %or101.i436 = or i8 %shl110.i430, %shl100.i428
  %or106.i437 = or i8 %or101.i436, %shl120.i433
  %or111.i438 = or i8 %or106.i437, %shl96.i427
  %or116.i439 = or i8 %or111.i438, %shl105.i429
  %or121.i440 = or i8 %or116.i439, %shl115.i431
  %or126.i441 = or i8 %or121.i440, %shl125.i434
  %or131.i442 = or i8 %or126.i441, %.lobit175.i435
  %neg132.i443 = xor i8 %or131.i442, -1
  store i8 %neg132.i443, ptr %arrayidx3.i393, align 1
  %52 = load i8, ptr %ecc_data1, align 1
  %neg = xor i8 %52, -1
  store i8 %neg, ptr %ecc_data1, align 1
  %53 = load i8, ptr %ecc_data2, align 1
  %neg8 = xor i8 %53, -1
  store i8 %neg8, ptr %ecc_data2, align 1
  %54 = load i8, ptr %arrayidx1.i, align 1
  %neg.1 = xor i8 %54, -1
  store i8 %neg.1, ptr %arrayidx1.i, align 1
  %55 = load i8, ptr %arrayidx1.i392, align 1
  %neg8.1 = xor i8 %55, -1
  store i8 %neg8.1, ptr %arrayidx1.i392, align 1
  %56 = load i8, ptr %arrayidx3.i, align 1
  %neg.2 = xor i8 %56, -1
  store i8 %neg.2, ptr %arrayidx3.i, align 1
  %57 = load i8, ptr %arrayidx3.i393, align 1
  %neg8.2 = xor i8 %57, -1
  store i8 %neg8.2, ptr %arrayidx3.i393, align 1
  %ecc_data1.promoted = load i8, ptr %ecc_data1, align 1
  store i8 0, ptr %ecc_data1, align 1
  %arrayidx1.i.promoted = load i8, ptr %arrayidx1.i, align 1
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx3.i.promoted = load i8, ptr %arrayidx3.i, align 1
  store i8 0, ptr %arrayidx3.i, align 1
  %ecc_data2.promoted = load i8, ptr %ecc_data2, align 1
  store i8 0, ptr %ecc_data2, align 1
  %arrayidx1.i392.promoted = load i8, ptr %arrayidx1.i392, align 1
  store i8 0, ptr %arrayidx1.i392, align 1
  %arrayidx3.i393.promoted = load i8, ptr %arrayidx3.i393, align 1
  store i8 0, ptr %arrayidx3.i393, align 1
  %58 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %59 = lshr i8 %58, 2
  %60 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %61 = lshr i8 %60, 3
  %xor382.1 = and i8 %61, 1
  %62 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %63 = lshr i8 %62, 4
  %xor382.2 = and i8 %63, 1
  %64 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %65 = lshr i8 %64, 5
  %xor382.3 = and i8 %65, 1
  %66 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %67 = lshr i8 %66, 6
  %xor382.4 = and i8 %67, 1
  %68 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %xor382.5 = lshr i8 %68, 7
  %69 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %xor126381 = and i8 %69, 1
  %70 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %71 = lshr i8 %70, 1
  %xor126381.1 = and i8 %71, 1
  %72 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %73 = lshr i8 %72, 2
  %xor126381.2 = and i8 %73, 1
  %74 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %75 = lshr i8 %74, 3
  %xor126381.3 = and i8 %75, 1
  %76 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %77 = lshr i8 %76, 4
  %xor126381.4 = and i8 %77, 1
  %78 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %79 = lshr i8 %78, 5
  %xor126381.5 = and i8 %79, 1
  %80 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %81 = lshr i8 %80, 6
  %xor126381.6 = and i8 %81, 1
  %82 = xor i8 %ecc_data2.promoted, %ecc_data1.promoted
  %xor126381.7 = lshr i8 %82, 7
  %83 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %xor141380 = and i8 %83, 1
  %84 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %85 = lshr i8 %84, 1
  %xor141380.1 = and i8 %85, 1
  %86 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %87 = lshr i8 %86, 2
  %xor141380.2 = and i8 %87, 1
  %88 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %89 = lshr i8 %88, 3
  %xor141380.3 = and i8 %89, 1
  %90 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %91 = lshr i8 %90, 4
  %xor141380.4 = and i8 %91, 1
  %92 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %93 = lshr i8 %92, 5
  %xor141380.5 = and i8 %93, 1
  %94 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %95 = lshr i8 %94, 6
  %xor141380.6 = and i8 %95, 1
  %96 = xor i8 %arrayidx1.i392.promoted, %arrayidx1.i.promoted
  %xor141380.7 = lshr i8 %96, 7
  %97 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %xor152378 = and i8 %97, 1
  %98 = xor i8 %arrayidx3.i393.promoted, %arrayidx3.i.promoted
  %99 = lshr i8 %98, 1
  %xor159379 = and i8 %99, 1
  %100 = and i8 %59, 1
  %narrow = add nuw nsw i8 %100, %xor382.1
  %narrow481 = add nuw nsw i8 %narrow, %xor382.2
  %narrow482 = add nuw nsw i8 %narrow481, %xor382.3
  %narrow483 = add nuw nsw i8 %narrow482, %xor382.4
  %narrow484 = add nuw nsw i8 %narrow483, %xor382.5
  %narrow485 = add nuw nsw i8 %narrow484, %xor126381
  %add169.7 = add nuw nsw i8 %narrow485, %xor126381.1
  %add169.8 = add nuw nsw i8 %add169.7, %xor126381.2
  %add169.9 = add nuw nsw i8 %add169.8, %xor126381.3
  %add169.10 = add nuw nsw i8 %add169.9, %xor126381.4
  %add169.11 = add nuw nsw i8 %add169.10, %xor126381.5
  %add169.12 = add nuw nsw i8 %add169.11, %xor126381.6
  %add169.13 = add nuw nsw i8 %add169.12, %xor126381.7
  %add169.14 = add nuw nsw i8 %add169.13, %xor141380
  %add169.15 = add nuw nsw i8 %add169.14, %xor141380.1
  %add169.16 = add nuw nsw i8 %add169.15, %xor141380.2
  %add169.17 = add nuw nsw i8 %add169.16, %xor141380.3
  %add169.18 = add nuw nsw i8 %add169.17, %xor141380.4
  %add169.19 = add nuw nsw i8 %add169.18, %xor141380.5
  %add169.20 = add nuw nsw i8 %add169.19, %xor141380.6
  %add169.21 = add nuw nsw i8 %add169.20, %xor141380.7
  %add169.22 = add nuw nsw i8 %add169.21, %xor152378
  %add169.23 = add nuw nsw i8 %add169.22, %xor159379
  %101 = zext i8 %add169.23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %add169.23, label %sw.default [
    i8 0, label %entry.cleanup_crit_edge
    i8 1, label %do.body
    i8 11, label %do.body179
    i8 12, label %sw.bb195
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_compare_ecc.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_compare_ecc, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !262

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_compare_ecc.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.110) #11
  br label %cleanup

do.body179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_compare_ecc.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_compare_ecc, %if.then191)) #11
          to label %cleanup [label %if.then191], !srcloc !262

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_compare_ecc.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.111) #11
  br label %cleanup

sw.bb195:                                         ; preds = %entry
  %conv167.23 = zext i8 %xor159379 to i32
  %conv167.7 = zext i8 %xor126381.1 to i32
  %shl = shl nuw nsw i32 %conv167.23, 8
  %102 = and i8 %96, -128
  %shl200 = zext i8 %102 to i32
  %add201 = or i32 %shl, %shl200
  %103 = shl nuw nsw i8 %xor141380.5, 6
  %shl204 = zext i8 %103 to i32
  %add205 = or i32 %add201, %shl204
  %104 = shl nuw nsw i8 %xor141380.3, 5
  %shl208 = zext i8 %104 to i32
  %add209 = or i32 %add205, %shl208
  %105 = shl nuw nsw i8 %xor141380.1, 4
  %shl212 = zext i8 %105 to i32
  %add213 = or i32 %add209, %shl212
  %106 = shl nuw nsw i8 %xor126381.7, 3
  %shl216 = zext i8 %106 to i32
  %add217 = or i32 %add213, %shl216
  %107 = shl nuw nsw i8 %xor126381.5, 2
  %shl220 = zext i8 %107 to i32
  %add221 = add nuw nsw i32 %add217, %shl220
  %108 = shl nuw nsw i8 %xor126381.3, 1
  %shl224 = zext i8 %108 to i32
  %add225 = add nuw nsw i32 %add221, %shl224
  %add228 = add nuw nsw i32 %add225, %conv167.7
  %shl231 = shl nuw nsw i8 %xor382.5, 2
  %shl234 = shl nuw nsw i8 %xor382.3, 1
  %add235 = or i8 %shl234, %shl231
  %add238 = or i8 %add235, %xor382.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_compare_ecc.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_compare_ecc, %if.then252)) #11
          to label %do.end256 [label %if.then252], !srcloc !262

if.then252:                                       ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #13
  %conv253 = zext i8 %add238 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_compare_ecc.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.112, i32 noundef %add228, i32 noundef %conv253) #11
  br label %do.end256

do.end256:                                        ; preds = %if.then252, %sw.bb195
  %shl258 = shl nuw i8 1, %add238
  %arrayidx259 = getelementptr i8, ptr %page_data, i32 %add228
  %109 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx259, align 1
  %conv262 = xor i8 %110, %shl258
  store i8 %conv262, ptr %arrayidx259, align 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  %and = and i32 %1, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %and)
  %cmp = icmp eq i32 %and, 16777215
  br i1 %cmp, label %if.then264, label %sw.default.do.body281_crit_edge

sw.default.do.body281_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body281

if.then264:                                       ; preds = %sw.default
  %111 = ptrtoint ptr %ecc_data2 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ecc_data2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp267 = icmp eq i8 %112, 0
  br i1 %cmp267, label %land.lhs.true, label %if.then264.do.body281_crit_edge

if.then264.do.body281_crit_edge:                  ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body281

land.lhs.true:                                    ; preds = %if.then264
  %113 = ptrtoint ptr %arrayidx1.i392 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx1.i392, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp271 = icmp eq i8 %114, 0
  br i1 %cmp271, label %land.lhs.true273, label %land.lhs.true.do.body281_crit_edge

land.lhs.true.do.body281_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body281

land.lhs.true273:                                 ; preds = %land.lhs.true
  %115 = ptrtoint ptr %arrayidx3.i393 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx3.i393, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp276 = icmp eq i8 %116, 0
  br i1 %cmp276, label %land.lhs.true273.cleanup_crit_edge, label %land.lhs.true273.do.body281_crit_edge

land.lhs.true273.do.body281_crit_edge:            ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body281

land.lhs.true273.cleanup_crit_edge:               ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body281:                                       ; preds = %land.lhs.true273.do.body281_crit_edge, %land.lhs.true.do.body281_crit_edge, %if.then264.do.body281_crit_edge, %sw.default.do.body281_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_compare_ecc.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_compare_ecc, %if.then293)) #11
          to label %cleanup [label %if.then293], !srcloc !262

if.then293:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap_compare_ecc.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.113) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then293, %do.body281, %land.lhs.true273.cleanup_crit_edge, %do.end256, %if.then191, %do.body179, %if.then, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end256 ], [ 0, %entry.cleanup_crit_edge ], [ -74, %if.then ], [ -74, %if.then191 ], [ 0, %land.lhs.true273.cleanup_crit_edge ], [ -74, %if.then293 ], [ -74, %do.body ], [ -74, %do.body179 ], [ -74, %do.body281 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc_opt = getelementptr inbounds %struct.omap_nand_info, ptr %mtd, i32 0, i32 5
  %0 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc_opt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %off.0 = phi i32 [ 2, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool1.not = icmp eq i32 %section, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %off.0, ptr %oobregion, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %5 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total, align 8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc_opt = getelementptr inbounds %struct.omap_nand_info, ptr %mtd, i32 0, i32 5
  %0 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc_opt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %off.0 = phi i32 [ 2, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool1.not = icmp eq i32 %section, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %4 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total, align 8
  %add = add i32 %5, %off.0
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp4.not = icmp ult i32 %add, %7
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %oobregion, align 4
  %9 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %10, %add
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -34, %if.end.cleanup_crit_edge ], [ -34, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_omap_calculate_ecc_bch(ptr nocapture noundef readonly %mtd, ptr noundef %ecc_calc, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes, align 4
  %ecc_opt = getelementptr inbounds %struct.omap_nand_info, ptr %mtd, i32 0, i32 5
  %2 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_opt, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge13
    i32 2, label %entry.sw.bb65_crit_edge
    i32 3, label %entry.sw.bb65_crit_edge14
    i32 6, label %sw.bb109
  ]

entry.sw.bb65_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb65

entry.sw.bb65_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb65

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %arrayidx = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 11, i32 %i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !265
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !301
  %arrayidx5 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 12, i32 %i
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !265
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !302
  %arrayidx11 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 13, i32 %i
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !265
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !303
  %arrayidx17 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 14, i32 %i
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !265
  %20 = lshr i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !304
  %conv = trunc i32 %20 to i8
  %incdec.ptr = getelementptr i8, ptr %ecc_calc, i32 1
  %21 = ptrtoint ptr %ecc_calc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %ecc_calc, align 1
  %shr = lshr i32 %16, 24
  %conv22 = trunc i32 %shr to i8
  %incdec.ptr23 = getelementptr i8, ptr %ecc_calc, i32 2
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv22, ptr %incdec.ptr, align 1
  %shr24 = lshr i32 %16, 16
  %conv26 = trunc i32 %shr24 to i8
  %incdec.ptr27 = getelementptr i8, ptr %ecc_calc, i32 3
  %23 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv26, ptr %incdec.ptr23, align 1
  %shr28 = lshr i32 %16, 8
  %conv30 = trunc i32 %shr28 to i8
  %incdec.ptr31 = getelementptr i8, ptr %ecc_calc, i32 4
  %24 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv30, ptr %incdec.ptr27, align 1
  %conv33 = trunc i32 %16 to i8
  %incdec.ptr34 = getelementptr i8, ptr %ecc_calc, i32 5
  %25 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv33, ptr %incdec.ptr31, align 1
  %shr35 = lshr i32 %12, 24
  %conv37 = trunc i32 %shr35 to i8
  %incdec.ptr38 = getelementptr i8, ptr %ecc_calc, i32 6
  %26 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv37, ptr %incdec.ptr34, align 1
  %shr39 = lshr i32 %12, 16
  %conv41 = trunc i32 %shr39 to i8
  %incdec.ptr42 = getelementptr i8, ptr %ecc_calc, i32 7
  %27 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv41, ptr %incdec.ptr38, align 1
  %shr43 = lshr i32 %12, 8
  %conv45 = trunc i32 %shr43 to i8
  %incdec.ptr46 = getelementptr i8, ptr %ecc_calc, i32 8
  %28 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv45, ptr %incdec.ptr42, align 1
  %conv48 = trunc i32 %12 to i8
  %incdec.ptr49 = getelementptr i8, ptr %ecc_calc, i32 9
  %29 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv48, ptr %incdec.ptr46, align 1
  %shr50 = lshr i32 %8, 24
  %conv52 = trunc i32 %shr50 to i8
  %incdec.ptr53 = getelementptr i8, ptr %ecc_calc, i32 10
  %30 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv52, ptr %incdec.ptr49, align 1
  %shr54 = lshr i32 %8, 16
  %conv56 = trunc i32 %shr54 to i8
  %incdec.ptr57 = getelementptr i8, ptr %ecc_calc, i32 11
  %31 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv56, ptr %incdec.ptr53, align 1
  %shr58 = lshr i32 %8, 8
  %conv60 = trunc i32 %shr58 to i8
  %incdec.ptr61 = getelementptr i8, ptr %ecc_calc, i32 12
  %32 = ptrtoint ptr %incdec.ptr57 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv60, ptr %incdec.ptr57, align 1
  %conv63 = trunc i32 %8 to i8
  %33 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv63, ptr %incdec.ptr61, align 1
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry.sw.bb65_crit_edge, %entry.sw.bb65_crit_edge14
  %arrayidx69 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 11, i32 %i
  %34 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx69, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !265
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !305
  %arrayidx76 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 12, i32 %i
  %38 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx76, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !265
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !306
  %shr80 = lshr i32 %41, 12
  %conv82 = trunc i32 %shr80 to i8
  %incdec.ptr83 = getelementptr i8, ptr %ecc_calc, i32 1
  %42 = ptrtoint ptr %ecc_calc to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv82, ptr %ecc_calc, align 1
  %shr84 = lshr i32 %41, 4
  %conv86 = trunc i32 %shr84 to i8
  %incdec.ptr87 = getelementptr i8, ptr %ecc_calc, i32 2
  %43 = ptrtoint ptr %incdec.ptr83 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv86, ptr %incdec.ptr83, align 1
  %or = tail call i32 @llvm.fshl.i32(i32 %41, i32 %37, i32 4)
  %conv91 = trunc i32 %or to i8
  %incdec.ptr92 = getelementptr i8, ptr %ecc_calc, i32 3
  %44 = ptrtoint ptr %incdec.ptr87 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv91, ptr %incdec.ptr87, align 1
  %shr93 = lshr i32 %37, 20
  %conv95 = trunc i32 %shr93 to i8
  %incdec.ptr96 = getelementptr i8, ptr %ecc_calc, i32 4
  %45 = ptrtoint ptr %incdec.ptr92 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv95, ptr %incdec.ptr92, align 1
  %shr97 = lshr i32 %37, 12
  %conv99 = trunc i32 %shr97 to i8
  %incdec.ptr100 = getelementptr i8, ptr %ecc_calc, i32 5
  %46 = ptrtoint ptr %incdec.ptr96 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv99, ptr %incdec.ptr96, align 1
  %shr101 = lshr i32 %37, 4
  %conv103 = trunc i32 %shr101 to i8
  %incdec.ptr104 = getelementptr i8, ptr %ecc_calc, i32 6
  %47 = ptrtoint ptr %incdec.ptr100 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv103, ptr %incdec.ptr100, align 1
  %.tr = trunc i32 %37 to i8
  %conv107 = shl i8 %.tr, 4
  %48 = ptrtoint ptr %incdec.ptr104 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv107, ptr %incdec.ptr104, align 1
  br label %sw.epilog

sw.bb109:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx112 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 17, i32 %i
  %49 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx112, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !265
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !307
  %shr116 = lshr i32 %52, 8
  %conv118 = trunc i32 %shr116 to i8
  %53 = ptrtoint ptr %ecc_calc to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv118, ptr %ecc_calc, align 1
  %conv122 = trunc i32 %52 to i8
  %arrayidx123 = getelementptr i8, ptr %ecc_calc, i32 1
  %54 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv122, ptr %arrayidx123, align 1
  %arrayidx126 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 16, i32 %i
  %55 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx126, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !265
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  %shr130 = lshr i32 %58, 24
  %conv132 = trunc i32 %shr130 to i8
  %arrayidx133 = getelementptr i8, ptr %ecc_calc, i32 2
  %59 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv132, ptr %arrayidx133, align 1
  %shr134 = lshr i32 %58, 16
  %conv136 = trunc i32 %shr134 to i8
  %arrayidx137 = getelementptr i8, ptr %ecc_calc, i32 3
  %60 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv136, ptr %arrayidx137, align 1
  %shr138 = lshr i32 %58, 8
  %conv140 = trunc i32 %shr138 to i8
  %arrayidx141 = getelementptr i8, ptr %ecc_calc, i32 4
  %61 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv140, ptr %arrayidx141, align 1
  %conv144 = trunc i32 %58 to i8
  %arrayidx145 = getelementptr i8, ptr %ecc_calc, i32 5
  %62 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv144, ptr %arrayidx145, align 1
  %arrayidx148 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 15, i32 %i
  %63 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx148, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !265
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  %shr152 = lshr i32 %66, 24
  %conv154 = trunc i32 %shr152 to i8
  %arrayidx155 = getelementptr i8, ptr %ecc_calc, i32 6
  %67 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv154, ptr %arrayidx155, align 1
  %shr156 = lshr i32 %66, 16
  %conv158 = trunc i32 %shr156 to i8
  %arrayidx159 = getelementptr i8, ptr %ecc_calc, i32 7
  %68 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv158, ptr %arrayidx159, align 1
  %shr160 = lshr i32 %66, 8
  %conv162 = trunc i32 %shr160 to i8
  %arrayidx163 = getelementptr i8, ptr %ecc_calc, i32 8
  %69 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv162, ptr %arrayidx163, align 1
  %conv166 = trunc i32 %66 to i8
  %arrayidx167 = getelementptr i8, ptr %ecc_calc, i32 9
  %70 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv166, ptr %arrayidx167, align 1
  %arrayidx171 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 14, i32 %i
  %71 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx171, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #11, !srcloc !265
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  %shr175 = lshr i32 %74, 24
  %conv177 = trunc i32 %shr175 to i8
  %arrayidx178 = getelementptr i8, ptr %ecc_calc, i32 10
  %75 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv177, ptr %arrayidx178, align 1
  %shr179 = lshr i32 %74, 16
  %conv181 = trunc i32 %shr179 to i8
  %arrayidx182 = getelementptr i8, ptr %ecc_calc, i32 11
  %76 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv181, ptr %arrayidx182, align 1
  %shr183 = lshr i32 %74, 8
  %conv185 = trunc i32 %shr183 to i8
  %arrayidx186 = getelementptr i8, ptr %ecc_calc, i32 12
  %77 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv185, ptr %arrayidx186, align 1
  %conv189 = trunc i32 %74 to i8
  %arrayidx190 = getelementptr i8, ptr %ecc_calc, i32 13
  %78 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv189, ptr %arrayidx190, align 1
  %arrayidx194 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 13, i32 %i
  %79 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx194, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !265
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  %shr198 = lshr i32 %82, 24
  %conv200 = trunc i32 %shr198 to i8
  %arrayidx201 = getelementptr i8, ptr %ecc_calc, i32 14
  %83 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv200, ptr %arrayidx201, align 1
  %shr202 = lshr i32 %82, 16
  %conv204 = trunc i32 %shr202 to i8
  %arrayidx205 = getelementptr i8, ptr %ecc_calc, i32 15
  %84 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv204, ptr %arrayidx205, align 1
  %shr206 = lshr i32 %82, 8
  %conv208 = trunc i32 %shr206 to i8
  %arrayidx209 = getelementptr i8, ptr %ecc_calc, i32 16
  %85 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv208, ptr %arrayidx209, align 1
  %conv212 = trunc i32 %82 to i8
  %arrayidx213 = getelementptr i8, ptr %ecc_calc, i32 17
  %86 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv212, ptr %arrayidx213, align 1
  %arrayidx217 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 12, i32 %i
  %87 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx217, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !265
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %shr221 = lshr i32 %90, 24
  %conv223 = trunc i32 %shr221 to i8
  %arrayidx224 = getelementptr i8, ptr %ecc_calc, i32 18
  %91 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv223, ptr %arrayidx224, align 1
  %shr225 = lshr i32 %90, 16
  %conv227 = trunc i32 %shr225 to i8
  %arrayidx228 = getelementptr i8, ptr %ecc_calc, i32 19
  %92 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv227, ptr %arrayidx228, align 1
  %shr229 = lshr i32 %90, 8
  %conv231 = trunc i32 %shr229 to i8
  %arrayidx232 = getelementptr i8, ptr %ecc_calc, i32 20
  %93 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv231, ptr %arrayidx232, align 1
  %conv235 = trunc i32 %90 to i8
  %arrayidx236 = getelementptr i8, ptr %ecc_calc, i32 21
  %94 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv235, ptr %arrayidx236, align 1
  %arrayidx240 = getelementptr %struct.omap_nand_info, ptr %mtd, i32 0, i32 16, i32 11, i32 %i
  %95 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx240, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !265
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  %shr244 = lshr i32 %98, 24
  %conv246 = trunc i32 %shr244 to i8
  %arrayidx247 = getelementptr i8, ptr %ecc_calc, i32 22
  %99 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv246, ptr %arrayidx247, align 1
  %shr248 = lshr i32 %98, 16
  %conv250 = trunc i32 %shr248 to i8
  %arrayidx251 = getelementptr i8, ptr %ecc_calc, i32 23
  %100 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv250, ptr %arrayidx251, align 1
  %shr252 = lshr i32 %98, 8
  %conv254 = trunc i32 %shr252 to i8
  %arrayidx255 = getelementptr i8, ptr %ecc_calc, i32 24
  %101 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv254, ptr %arrayidx255, align 1
  %conv258 = trunc i32 %98 to i8
  %arrayidx259 = getelementptr i8, ptr %ecc_calc, i32 25
  %102 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv258, ptr %arrayidx259, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb109, %sw.bb65, %sw.bb
  %103 = ptrtoint ptr %ecc_opt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ecc_opt, align 8
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %104, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %for.cond.preheader
    i32 3, label %sw.epilog.sw.epilog288.sink.split_crit_edge
    i32 4, label %for.cond271.preheader
    i32 5, label %sw.epilog.sw.epilog288.sink.split_crit_edge15
    i32 6, label %sw.epilog.sw.epilog288_crit_edge
  ]

sw.epilog.sw.epilog288_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

sw.epilog.sw.epilog288.sink.split_crit_edge15:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288.sink.split

sw.epilog.sw.epilog288.sink.split_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288.sink.split

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond271.preheader:                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2724 = icmp sgt i32 %1, 0
  br i1 %cmp2724, label %for.cond271.preheader.for.body274_crit_edge, label %for.cond271.preheader.sw.epilog288_crit_edge

for.cond271.preheader.sw.epilog288_crit_edge:     ; preds = %for.cond271.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

for.cond271.preheader.for.body274_crit_edge:      ; preds = %for.cond271.preheader
  br label %for.body274

for.cond.preheader:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.sw.epilog288_crit_edge

for.cond.preheader.sw.epilog288_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx263 = getelementptr [7 x i8], ptr @bch4_polynomial, i32 0, i32 %j.07
  %106 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx263, align 1
  %arrayidx265 = getelementptr i8, ptr %ecc_calc, i32 %j.07
  %108 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx265, align 1
  %xor2 = xor i8 %109, %107
  store i8 %xor2, ptr %arrayidx265, align 1
  %inc = add nuw nsw i32 %j.07, 1
  %exitcond9.not = icmp eq i32 %inc, %1
  br i1 %exitcond9.not, label %for.body.sw.epilog288_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.sw.epilog288_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

for.body274:                                      ; preds = %for.body274.for.body274_crit_edge, %for.cond271.preheader.for.body274_crit_edge
  %j.15 = phi i32 [ %inc282, %for.body274.for.body274_crit_edge ], [ 0, %for.cond271.preheader.for.body274_crit_edge ]
  %arrayidx275 = getelementptr [13 x i8], ptr @bch8_polynomial, i32 0, i32 %j.15
  %110 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx275, align 1
  %arrayidx277 = getelementptr i8, ptr %ecc_calc, i32 %j.15
  %112 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx277, align 1
  %xor2791 = xor i8 %113, %111
  store i8 %xor2791, ptr %arrayidx277, align 1
  %inc282 = add nuw nsw i32 %j.15, 1
  %exitcond.not = icmp eq i32 %inc282, %1
  br i1 %exitcond.not, label %for.body274.sw.epilog288_crit_edge, label %for.body274.for.body274_crit_edge

for.body274.for.body274_crit_edge:                ; preds = %for.body274
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body274

for.body274.sw.epilog288_crit_edge:               ; preds = %for.body274
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog288

sw.epilog288.sink.split:                          ; preds = %sw.epilog.sw.epilog288.sink.split_crit_edge, %sw.epilog.sw.epilog288.sink.split_crit_edge15
  %sub285 = add i32 %1, -1
  %arrayidx286 = getelementptr i8, ptr %ecc_calc, i32 %sub285
  %114 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arrayidx286, align 1
  br label %sw.epilog288

sw.epilog288:                                     ; preds = %sw.epilog288.sink.split, %for.body274.sw.epilog288_crit_edge, %for.body.sw.epilog288_crit_edge, %for.cond.preheader.sw.epilog288_crit_edge, %for.cond271.preheader.sw.epilog288_crit_edge, %sw.epilog.sw.epilog288_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog288, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog288 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_sw_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nsteps.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 1
  %0 = ptrtoint ptr %nsteps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nsteps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp ugt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %total.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %2 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total.i, align 4
  %div.i = udiv i32 %3, %1
  %add = add i32 %div.i, 1
  %mul = mul i32 %add, %section
  %add3 = add i32 %mul, 2
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add3, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_sw_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %total.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total.i, align 4
  %nsteps.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 2, i32 3, i32 1
  %2 = ptrtoint ptr %nsteps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsteps.i, align 4
  %div.i = udiv i32 %1, %3
  %add = add i32 %div.i, 1
  %mul = mul i32 %add, %3
  %add3 = add i32 %mul, 2
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %5)
  %cmp.not = icmp ult i32 %add3, %5
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add3, ptr %oobregion, align 4
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %8, %add3
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elm_decode_bch_error_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !114, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !214, !216, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !232, !233, !235, !236, !237, !239, !241, !243, !245, !247, !248}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !{ptr @__initcall__kmod_omap2_nand__260_2305_omap_nand_driver_init6, !1, !"__initcall__kmod_omap2_nand__260_2305_omap_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2305, i32 1}
!2 = !{ptr @__exitcall_omap_nand_driver_exit, !1, !"__exitcall_omap_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias261, !4, !"__UNIQUE_ID_alias261", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2307, i32 1}
!5 = !{ptr @__UNIQUE_ID_file262, !6, !"__UNIQUE_ID_file262", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2308, i32 1}
!7 = !{ptr @__UNIQUE_ID_license263, !6, !"__UNIQUE_ID_license263", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description264, !9, !"__UNIQUE_ID_description264", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2309, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2300, i32 11}
!12 = !{ptr @omap_nand_driver, !13, !"omap_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2296, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2204, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @omap_nand_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap_nand_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2215, i32 9}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2217, i32 4}
!26 = !{ptr @omap_nand_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap_nand_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2238, i32 58}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2241, i32 3}
!32 = !{ptr @omap_nand_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_nand_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1665, i32 34}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1666, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omap_get_dt_info._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap_get_dt_info._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1673, i32 46}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1675, i32 47}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1677, i32 4}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @omap_get_dt_info.__UNIQUE_ID_ddebug259, !46, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1681, i32 37}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1682, i32 3}
!53 = !{ptr @omap_get_dt_info._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @omap_get_dt_info._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1686, i32 17}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1688, i32 24}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1689, i32 17}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1689, i32 37}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1691, i32 24}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1696, i32 24}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1701, i32 24}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1704, i32 3}
!71 = !{ptr @omap_get_dt_info._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap_get_dt_info._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1709, i32 38}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1717, i32 3}
!77 = !{ptr @omap_get_dt_info._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap_get_dt_info._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1652, i32 32}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1653, i32 23}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1654, i32 29}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1655, i32 29}
!87 = distinct !{null, !88, !"nand_xfer_types", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1651, i32 27}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!91 = distinct !{null, !92, !"omap_gpmc_controller_initialized", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2179, i32 13}
!93 = !{ptr @omap_nand_controller_ops, !94, !"omap_nand_controller_ops", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2172, i32 41}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1854, i32 45}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1857, i32 4}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @omap_nand_attach_chip._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @omap_nand_attach_chip._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1871, i32 5}
!104 = !{ptr @omap_nand_attach_chip._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @omap_nand_attach_chip._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1888, i32 12}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1890, i32 4}
!110 = !{ptr @omap_nand_attach_chip._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @omap_nand_attach_chip._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1901, i32 12}
!114 = !{ptr @omap_nand_attach_chip._entry.55, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1903, i32 4}
!116 = !{ptr @omap_nand_attach_chip._entry_ptr.56, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1914, i32 3}
!119 = !{ptr @omap_nand_attach_chip._entry.57, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @omap_nand_attach_chip._entry_ptr.59, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1934, i32 3}
!123 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @omap_nand_attach_chip._entry.60, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @omap_nand_attach_chip._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1951, i32 3}
!128 = !{ptr @omap_nand_attach_chip._entry.64, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @omap_nand_attach_chip._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1965, i32 4}
!132 = !{ptr @omap_nand_attach_chip._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @omap_nand_attach_chip._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1971, i32 3}
!136 = !{ptr @omap_nand_attach_chip._entry.70, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @omap_nand_attach_chip._entry_ptr.72, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1988, i32 3}
!140 = !{ptr @omap_nand_attach_chip._entry.73, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @omap_nand_attach_chip._entry_ptr.75, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2002, i32 4}
!144 = !{ptr @omap_nand_attach_chip._entry.76, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @omap_nand_attach_chip._entry_ptr.78, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2008, i32 3}
!148 = !{ptr @omap_nand_attach_chip._entry.79, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @omap_nand_attach_chip._entry_ptr.81, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.83, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2025, i32 3}
!152 = !{ptr @omap_nand_attach_chip._entry.82, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @omap_nand_attach_chip._entry_ptr.84, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2040, i32 3}
!156 = !{ptr @omap_nand_attach_chip._entry.85, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @omap_nand_attach_chip._entry_ptr.87, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2067, i32 3}
!160 = !{ptr @omap_nand_attach_chip._entry.88, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @omap_nand_attach_chip._entry_ptr.90, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 389, i32 3}
!164 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @omap_nand_dma_transfer._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @omap_nand_dma_transfer._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @init_completion.__key, !168, !"__key", i1 false, i1 false}
!168 = !{!"../include/linux/completion.h", i32 87, i32 2}
!169 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1634, i32 3}
!172 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @omap2_nand_ecc_check._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @omap2_nand_ecc_check._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1639, i32 3}
!177 = !{ptr @omap2_nand_ecc_check._entry.96, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @omap2_nand_ecc_check._entry_ptr.98, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1644, i32 3}
!181 = !{ptr @omap2_nand_ecc_check._entry.99, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @omap2_nand_ecc_check._entry_ptr.101, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1594, i32 3}
!185 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @is_elm_present._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @is_elm_present._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.105, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1600, i32 3}
!190 = !{ptr @is_elm_present._entry.104, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @is_elm_present._entry_ptr.106, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 874, i32 3}
!194 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @omap_enable_hwecc._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @omap_enable_hwecc._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 730, i32 3}
!199 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @omap_compare_ecc.__UNIQUE_ID_ddebug249, !198, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 735, i32 3}
!203 = !{ptr @omap_compare_ecc.__UNIQUE_ID_ddebug250, !202, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!204 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 752, i32 3}
!206 = !{ptr @omap_compare_ecc.__UNIQUE_ID_ddebug251, !205, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!207 = !{ptr @.str.113, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 765, i32 3}
!209 = !{ptr @omap_compare_ecc.__UNIQUE_ID_ddebug252, !208, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!210 = !{ptr @omap_ooblayout_ops, !211, !"omap_ooblayout_ops", i1 false, i1 false}
!211 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1768, i32 39}
!212 = !{ptr @bch4_polynomial, !213, !"bch4_polynomial", i1 false, i1 false}
!213 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 987, i32 12}
!214 = !{ptr @bch8_polynomial, !215, !"bch8_polynomial", i1 false, i1 false}
!215 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 988, i32 12}
!216 = !{ptr @omap_sw_ooblayout_ops, !217, !"omap_sw_ooblayout_ops", i1 false, i1 false}
!217 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1819, i32 39}
!218 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1247, i32 3}
!220 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @omap_elm_correct_data._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @omap_elm_correct_data._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1318, i32 4}
!225 = !{ptr @omap_elm_correct_data._entry.116, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @omap_elm_correct_data._entry_ptr.118, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.119, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1345, i32 7}
!229 = !{ptr @omap_elm_correct_data.__UNIQUE_ID_ddebug253, !228, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!230 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1349, i32 7}
!232 = !{ptr @omap_elm_correct_data.__UNIQUE_ID_ddebug254, !231, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!233 = !{ptr @.str.122, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 1356, i32 6}
!235 = !{ptr @omap_elm_correct_data._entry.121, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @omap_elm_correct_data._entry_ptr.123, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @bch4_vector, !238, !"bch4_vector", i1 false, i1 false}
!238 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 142, i32 15}
!239 = !{ptr @bch8_vector, !240, !"bch8_vector", i1 false, i1 false}
!240 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 140, i32 15}
!241 = !{ptr @bch16_vector, !242, !"bch16_vector", i1 false, i1 false}
!242 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 136, i32 15}
!243 = !{ptr @omap_gpmc_controller, !244, !"omap_gpmc_controller", i1 false, i1 false}
!244 = !{!"../drivers/mtd/nand/raw/omap2.c", i32 2178, i32 31}
!245 = !{ptr @nand_controller_init.__key, !246, !"__key", i1 false, i1 false}
!246 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!247 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @omap_nand_ids, !249, !"omap_nand_ids", i1 false, i1 false}
!249 = !{!"../include/linux/platform_data/mtd-nand-omap2.h", i32 66, i32 34}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 1, !"min_enum_size", i32 4}
!252 = !{i32 8, !"branch-target-enforcement", i32 0}
!253 = !{i32 8, !"sign-return-address", i32 0}
!254 = !{i32 8, !"sign-return-address-all", i32 0}
!255 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!256 = !{i32 7, !"uwtable", i32 1}
!257 = !{i32 7, !"frame-pointer", i32 2}
!258 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!259 = !{i8 0, i8 2}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{!"auto-init"}
!262 = !{i64 2148352536, i64 2148352541, i64 2148352554, i64 2148352598, i64 2148352632, i64 2148352653}
!263 = !{i64 2153884448}
!264 = !{i64 6343103}
!265 = !{i64 6343718}
!266 = !{i64 2154713673}
!267 = !{i64 2154713910}
!268 = !{i64 6343300}
!269 = !{i64 2154714382}
!270 = !{i64 2154714799}
!271 = !{i64 2154716917}
!272 = !{i64 2154715530}
!273 = !{i64 2154715768}
!274 = !{i64 2154716185}
!275 = !{i64 2154717173}
!276 = !{i64 2154717769}
!277 = !{i64 2153884872}
!278 = !{i64 6342680}
!279 = !{i64 2154718088}
!280 = !{i64 2154717930}
!281 = !{i64 2154718626}
!282 = !{i64 2154722650}
!283 = !{i64 2154723257}
!284 = !{i64 2154723555}
!285 = !{i64 2154723397}
!286 = !{i64 2154735258}
!287 = !{i64 2154735789}
!288 = !{i64 2154736104}
!289 = !{i64 2154736522}
!290 = !{i64 2154736955}
!291 = !{i64 2154737396}
!292 = !{i64 2154739492}
!293 = !{i64 2154740001}
!294 = !{i64 2154740418}
!295 = !{i64 2154740910}
!296 = !{i64 2154741334}
!297 = !{i64 2154749060}
!298 = !{i64 2154721417}
!299 = !{i64 2154721259}
!300 = !{i64 2154721955}
!301 = !{i64 2154742080}
!302 = !{i64 2154742618}
!303 = !{i64 2154743156}
!304 = !{i64 2154743694}
!305 = !{i64 2154744232}
!306 = !{i64 2154744770}
!307 = !{i64 2154745308}
!308 = !{i64 2154745846}
!309 = !{i64 2154746384}
!310 = !{i64 2154746922}
!311 = !{i64 2154747460}
!312 = !{i64 2154747998}
!313 = !{i64 2154748536}
