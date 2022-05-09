; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/lpc32xx_slc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/lpc32xx_slc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lpc32xx_nand_host = type { %struct.nand_chip, ptr, ptr, ptr, ptr, %struct.completion, ptr, i32, %struct.dma_slave_config, %struct.scatterlist, ptr, ptr, i32 }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.80 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.lpc32xx_nand_cfg_slc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_lpc32xx_slc__257_1032_lpc32xx_nand_driver_init6 = internal global ptr @lpc32xx_nand_driver_init, section ".initcall6.init", align 4
@lpc32xx_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc32xx_nand_probe, ptr @lpc32xx_nand_remove, ptr null, ptr @lpc32xx_nand_suspend, ptr @lpc32xx_nand_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc32xx_nand_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc32xx_nand_driver_exit = internal global ptr @lpc32xx_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file258 = internal constant [50 x i8] c"lpc32xx_slc.file=drivers/mtd/nand/raw/lpc32xx_slc\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [24 x i8] c"lpc32xx_slc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [53 x i8] c"lpc32xx_slc.author=Kevin Wells <kevin.wells@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [52 x i8] c"lpc32xx_slc.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [71 x i8] c"lpc32xx_slc.description=NAND driver for the NXP LPC32XX SLC controller\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpc32xx-nand\00", [19 x i8] zeroinitializer }, align 32
@lpc32xx_nand_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-slc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Missing or bad NAND config from device tree\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpc32xx_nand_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mtd/nand/raw/lpc32xx_slc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr = internal global ptr @lpc32xx_nand_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NAND WP\00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO not available\0A\00", [44 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr.9 = internal global ptr @lpc32xx_nand_probe._entry.7, section ".printk_index", align 4
@lpc32xx_nand_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 876, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Clock failure\0A\00", [17 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr.12 = internal global ptr @lpc32xx_nand_probe._entry.10, section ".printk_index", align 4
@lpc32xx_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @lpc32xx_nand_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxp_lpc3220_slc\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxp,wdr-clks\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,wwidth\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nxp,whold\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,wsetup\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxp,rdr-clks\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,rwidth\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nxp,rhold\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,rsetup\00", [21 x i8] zeroinitializer }, align 32
@lpc32xx_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chip parameters not specified correctly\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc32xx_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@lpc32xx_parse_dt._entry_ptr = internal global ptr @lpc32xx_parse_dt._entry, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lpc32xx_nand_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no DMA platform data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpc32xx_nand_dma_setup\00", [41 x i8] zeroinitializer }, align 32
@lpc32xx_nand_dma_setup._entry_ptr = internal global ptr @lpc32xx_nand_dma_setup._entry, section ".printk_index", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand-slc\00", [23 x i8] zeroinitializer }, align 32
@lpc32xx_nand_dma_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request DMA channel\0A\00", [33 x i8] zeroinitializer }, align 32
@lpc32xx_nand_dma_setup._entry_ptr.31 = internal global ptr @lpc32xx_nand_dma_setup._entry.29, section ".printk_index", align 4
@lpc32xx_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @lpc32xx_ooblayout_ecc, ptr @lpc32xx_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@bbt_smallpage_main_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 0, i32 6, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_smallpage_mirror_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 0, i32 6, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@lpc32xx_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 557, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FIFO not empty!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpc32xx_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpc32xx_xfer._entry_ptr = internal global ptr @lpc32xx_xfer._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lpc32xx_xfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.3, i32 563, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FIFO held data too long\0A\00", [39 x i8] zeroinitializer }, align 32
@lpc32xx_xfer._entry_ptr.37 = internal global ptr @lpc32xx_xfer._entry.35, section ".printk_index", align 4
@lpc32xx_xfer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA FIFO failure\0A\00", [46 x i8] zeroinitializer }, align 32
@lpc32xx_xfer._entry_ptr.40 = internal global ptr @lpc32xx_xfer._entry.38, section ".printk_index", align 4
@lpc32xx_xmit_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to setup DMA slave\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc32xx_xmit_dma\00", [47 x i8] zeroinitializer }, align 32
@lpc32xx_xmit_dma._entry_ptr = internal global ptr @lpc32xx_xmit_dma._entry, section ".printk_index", align 4
@lpc32xx_xmit_dma._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to map sg list\0A\00", [41 x i8] zeroinitializer }, align 32
@lpc32xx_xmit_dma._entry_ptr.45 = internal global ptr @lpc32xx_xmit_dma._entry.43, section ".printk_index", align 4
@lpc32xx_xmit_dma._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to prepare slave sg\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc32xx_xmit_dma._entry_ptr.48 = internal global ptr @lpc32xx_xmit_dma._entry.46, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bbt_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Bbt0", [28 x i8] zeroinitializer }, align 32
@mirror_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1tbB", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"lpc32xx_nand_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1021, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1027, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"lpc32xx_nand_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1015, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 851, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 858, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 859, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 876, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [28 x i8] c"lpc32xx_nand_controller_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 822, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 925, i32 14 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 751, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 752, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 753, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 754, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 755, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 756, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 757, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 758, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 763, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 767, i32 40 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 464, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 726, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 732, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 735, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"lpc32xx_ooblayout_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 167, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"bbt_smallpage_main_descr\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 179, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"bbt_smallpage_mirror_descr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 189, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 557, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 563, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 580, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 445, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 454, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 460, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 87, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"bbt_pattern\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 172, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"mirror_pattern\00", align 1
@___asan_gen_.219 = private constant [38 x i8] c"../drivers/mtd/nand/raw/lpc32xx_slc.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 173, i32 11 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_lpc32xx_nand_driver_exit, ptr @__initcall__kmod_lpc32xx_slc__257_1032_lpc32xx_nand_driver_init6, ptr @lpc32xx_nand_dma_setup._entry, ptr @lpc32xx_nand_dma_setup._entry.29, ptr @lpc32xx_nand_dma_setup._entry_ptr, ptr @lpc32xx_nand_dma_setup._entry_ptr.31, ptr @lpc32xx_nand_driver_exit, ptr @lpc32xx_nand_probe._entry, ptr @lpc32xx_nand_probe._entry.10, ptr @lpc32xx_nand_probe._entry.7, ptr @lpc32xx_nand_probe._entry_ptr, ptr @lpc32xx_nand_probe._entry_ptr.12, ptr @lpc32xx_nand_probe._entry_ptr.9, ptr @lpc32xx_parse_dt._entry, ptr @lpc32xx_parse_dt._entry_ptr, ptr @lpc32xx_xfer._entry, ptr @lpc32xx_xfer._entry.35, ptr @lpc32xx_xfer._entry.38, ptr @lpc32xx_xfer._entry_ptr, ptr @lpc32xx_xfer._entry_ptr.37, ptr @lpc32xx_xfer._entry_ptr.40, ptr @lpc32xx_xmit_dma._entry, ptr @lpc32xx_xmit_dma._entry.43, ptr @lpc32xx_xmit_dma._entry.46, ptr @lpc32xx_xmit_dma._entry_ptr, ptr @lpc32xx_xmit_dma._entry_ptr.45, ptr @lpc32xx_xmit_dma._entry_ptr.48, ptr @lpc32xx_nand_driver, ptr @.str, ptr @lpc32xx_nand_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @lpc32xx_nand_controller_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @lpc32xx_ooblayout_ops, ptr @bbt_smallpage_main_descr, ptr @bbt_smallpage_mirror_descr, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @init_completion.__key, ptr @.str.49, ptr @bbt_pattern, ptr @mirror_pattern], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_dma_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_smallpage_main_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_smallpage_mirror_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xfer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xmit_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xmit_dma._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xmit_dma._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc32xx_nand_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc32xx_nand_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2328, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #9
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %io_base, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %io_base_dma = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 12
  %4 = ptrtoint ptr %io_base_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %io_base_dma, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12.lpc32xx_parse_dt.exit_crit_edge, label %if.end.i

if.then12.lpc32xx_parse_dt.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_parse_dt.exit

if.end.i:                                         ; preds = %if.then12
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #9
  %wwidth.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 1
  %call.i.i63.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %wwidth.i, i32 noundef 1, i32 noundef 0) #9
  %whold.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 2
  %call.i.i64.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef %whold.i, i32 noundef 1, i32 noundef 0) #9
  %wsetup.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 3
  %call.i.i65.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef %wsetup.i, i32 noundef 1, i32 noundef 0) #9
  %rdr_clks.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 4
  %call.i.i66.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef %rdr_clks.i, i32 noundef 1, i32 noundef 0) #9
  %rwidth.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 5
  %call.i.i67.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef %rwidth.i, i32 noundef 1, i32 noundef 0) #9
  %rhold.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 6
  %call.i.i68.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef %rhold.i, i32 noundef 1, i32 noundef 0) #9
  %rsetup.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 7
  %call.i.i69.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef %rsetup.i, i32 noundef 1, i32 noundef 0) #9
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %wwidth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not.i = icmp eq i32 %12, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false13.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %whold.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %whold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.i = icmp eq i32 %14, 0
  br i1 %tobool15.not.i, label %lor.lhs.false13.i.do.end.i_crit_edge, label %lor.lhs.false16.i

lor.lhs.false13.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %15 = ptrtoint ptr %wsetup.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wsetup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not.i = icmp eq i32 %16, 0
  br i1 %tobool18.not.i, label %lor.lhs.false16.i.do.end.i_crit_edge, label %lor.lhs.false19.i

lor.lhs.false16.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false16.i
  %17 = ptrtoint ptr %rdr_clks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rdr_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not.i = icmp eq i32 %18, 0
  br i1 %tobool21.not.i, label %lor.lhs.false19.i.do.end.i_crit_edge, label %lor.lhs.false22.i

lor.lhs.false19.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false19.i
  %19 = ptrtoint ptr %rwidth.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not.i = icmp eq i32 %20, 0
  br i1 %tobool24.not.i, label %lor.lhs.false22.i.do.end.i_crit_edge, label %lor.lhs.false25.i

lor.lhs.false22.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false22.i
  %21 = ptrtoint ptr %rhold.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rhold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not.i = icmp eq i32 %22, 0
  br i1 %tobool27.not.i, label %lor.lhs.false25.i.do.end.i_crit_edge, label %lor.lhs.false28.i

lor.lhs.false25.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false28.i:                                ; preds = %lor.lhs.false25.i
  %23 = ptrtoint ptr %rsetup.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rsetup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not.i = icmp eq i32 %24, 0
  br i1 %tobool30.not.i, label %lor.lhs.false28.i.do.end.i_crit_edge, label %if.end32.i

lor.lhs.false28.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false28.i.do.end.i_crit_edge, %lor.lhs.false25.i.do.end.i_crit_edge, %lor.lhs.false22.i.do.end.i_crit_edge, %lor.lhs.false19.i.do.end.i_crit_edge, %lor.lhs.false16.i.do.end.i_crit_edge, %lor.lhs.false13.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %lpc32xx_parse_dt.exit

if.end32.i:                                       ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i70.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef null) #9
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %call.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i70.i, ptr %wp_gpio.i, align 4
  br label %lpc32xx_parse_dt.exit

lpc32xx_parse_dt.exit:                            ; preds = %if.end32.i, %do.end.i, %if.then12.lpc32xx_parse_dt.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end32.i ], [ null, %do.end.i ], [ null, %if.then12.lpc32xx_parse_dt.exit_crit_edge ]
  %ncfg = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %ncfg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %ncfg, align 4
  br label %if.end15

if.end15:                                         ; preds = %lpc32xx_parse_dt.exit, %if.end9.if.end15_crit_edge
  %ncfg16 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %ncfg16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ncfg16, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %wp_gpio = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %wp_gpio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wp_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %30)
  %cmp = icmp eq i32 %30, -517
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %30)
  %31 = icmp ult i32 %30, 2048
  br i1 %31, label %land.lhs.true, label %if.end23.if.end37_crit_edge

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end23
  %call30 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %30, ptr noundef nonnull @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end37_crit_edge, label %do.end35

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end35:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %32 = ptrtoint ptr %ncfg16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ncfg16, align 4
  %wp_gpio.i163 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %wp_gpio.i163 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wp_gpio.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %35)
  %36 = icmp ult i32 %35, 2048
  br i1 %36, label %if.then.i, label %if.end37.lpc32xx_wp_disable.exit_crit_edge

if.end37.lpc32xx_wp_disable.exit_crit_edge:       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_wp_disable.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i164 = tail call ptr @gpio_to_desc(i32 noundef %35) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i164, i32 noundef 1) #9
  br label %lpc32xx_wp_disable.exit

lpc32xx_wp_disable.exit:                          ; preds = %if.then.i, %if.end37.lpc32xx_wp_disable.exit_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %37 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %pdata, align 8
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 34
  %40 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %priv1.i, align 8
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %43 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %44 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lpc32xx_wp_disable.exit.nand_set_flash_node.exit_crit_edge

lpc32xx_wp_disable.exit.nand_set_flash_node.exit_crit_edge: ; preds = %lpc32xx_wp_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %lpc32xx_wp_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i166 = tail call i32 @of_property_read_string(ptr noundef %42, ptr noundef nonnull @.str.25, ptr noundef %name.i.i) #9
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %lpc32xx_wp_disable.exit.nand_set_flash_node.exit_crit_edge
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 55
  %46 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %47 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev, ptr %parent, align 8
  %call46 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call46, ptr %clk, align 4
  %cmp.i167 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end52, label %if.end54

do.end52:                                         ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %enable_wp

if.end54:                                         ; preds = %nand_set_flash_node.exit
  %call.i168 = tail call i32 @clk_prepare(ptr noundef %call46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end.i170, label %if.end54.enable_wp_crit_edge

if.end54.enable_wp_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %enable_wp

if.end.i170:                                      ; preds = %if.end54
  %call1.i = tail call i32 @clk_enable(ptr noundef %call46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end59, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call46) #9
  br label %enable_wp

if.end59:                                         ; preds = %if.end.i170
  %49 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base, align 8
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %legacy, align 8
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %IO_ADDR_W, align 4
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 7
  %53 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @lpc32xx_nand_cmd_ctrl, ptr %cmd_ctrl, align 4
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 9
  %54 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @lpc32xx_nand_device_ready, ptr %dev_ready, align 4
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 15
  %55 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 20, ptr %chip_delay, align 4
  tail call fastcc void @lpc32xx_nand_setup(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @lpc32xx_nand_read_byte, ptr %read_byte, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 6
  %58 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @lpc32xx_nand_read_buf, ptr %read_buf, align 8
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 5
  %59 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @lpc32xx_nand_write_buf, ptr %write_buf, align 4
  %dma_buf_len = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 7
  %60 = ptrtoint ptr %dma_buf_len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4160, ptr %dma_buf_len, align 4
  %call.i172 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4160, i32 noundef 3520) #9
  %data_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 11
  %61 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i172, ptr %data_buf, align 8
  %cmp74 = icmp eq ptr %call.i172, null
  br i1 %cmp74, label %if.end59.unprepare_clk_crit_edge, label %if.end76

if.end59.unprepare_clk_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_clk

if.end76:                                         ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  %62 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata, align 8
  %tobool.not.i173 = icmp eq ptr %63, null
  br i1 %tobool.not.i173, label %if.end76.do.end.i176_crit_edge, label %lor.lhs.false.i175

if.end76.do.end.i176_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i176

lor.lhs.false.i175:                               ; preds = %if.end76
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool2.not.i174 = icmp eq ptr %65, null
  br i1 %tobool2.not.i174, label %lor.lhs.false.i175.do.end.i176_crit_edge, label %if.end.i177

lor.lhs.false.i175.do.end.i176_crit_edge:         ; preds = %lor.lhs.false.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i176

do.end.i176:                                      ; preds = %lor.lhs.false.i175.do.end.i176_crit_edge, %if.end76.do.end.i176_crit_edge
  %66 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.26) #12
  br label %lpc32xx_nand_dma_setup.exit.thread

if.end.i177:                                      ; preds = %lor.lhs.false.i175
  %68 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i) #9
  %69 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %call5.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef %72, ptr noundef nonnull @.str.28, ptr noundef null) #9
  %dma_chan.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 6
  %73 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call5.i, ptr %dma_chan.i, align 8
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %do.end11.i, label %if.end80

do.end11.i:                                       ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.30) #12
  br label %lpc32xx_nand_dma_setup.exit.thread

lpc32xx_nand_dma_setup.exit.thread:               ; preds = %do.end11.i, %do.end.i176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  br label %unprepare_clk

if.end80:                                         ; preds = %if.end.i177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  %ops = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 16, i32 1
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @lpc32xx_nand_controller_ops, ptr %ops, align 4
  %call.i179 = call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool83.not = icmp eq i32 %call.i179, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.release_dma_crit_edge

if.end80.release_dma_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_dma

if.end85:                                         ; preds = %if.end80
  %77 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.13, ptr %name.i.i, align 8
  %78 = ptrtoint ptr %ncfg16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ncfg16, align 4
  %parts = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parts, align 4
  %num_parts = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %79, i32 0, i32 10
  %82 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_parts, align 4
  %call88 = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef %81, i32 noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end85.cleanup_crit_edge, label %cleanup_nand

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void @nand_cleanup(ptr noundef nonnull %call.i) #9
  br label %release_dma

release_dma:                                      ; preds = %cleanup_nand, %if.end80.release_dma_crit_edge
  %res.0 = phi i32 [ %call.i179, %if.end80.release_dma_crit_edge ], [ %call88, %cleanup_nand ]
  %84 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_chan.i, align 8
  call void @dma_release_channel(ptr noundef %85) #9
  br label %unprepare_clk

unprepare_clk:                                    ; preds = %release_dma, %lpc32xx_nand_dma_setup.exit.thread, %if.end59.unprepare_clk_crit_edge
  %res.1 = phi i32 [ %res.0, %release_dma ], [ -12, %if.end59.unprepare_clk_crit_edge ], [ -5, %lpc32xx_nand_dma_setup.exit.thread ]
  %86 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %87) #9
  call void @clk_unprepare(ptr noundef %87) #9
  br label %enable_wp

enable_wp:                                        ; preds = %unprepare_clk, %if.then3.i, %if.end54.enable_wp_crit_edge, %do.end52
  %res.2 = phi i32 [ -2, %do.end52 ], [ %res.1, %unprepare_clk ], [ %call1.i, %if.then3.i ], [ %call.i168, %if.end54.enable_wp_crit_edge ]
  %88 = ptrtoint ptr %ncfg16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ncfg16, align 4
  %wp_gpio.i181 = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %wp_gpio.i181 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wp_gpio.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %91)
  %92 = icmp ult i32 %91, 2048
  br i1 %92, label %if.then.i183, label %enable_wp.cleanup_crit_edge

enable_wp.cleanup_crit_edge:                      ; preds = %enable_wp
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i183:                                     ; preds = %enable_wp
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i182 = call ptr @gpio_to_desc(i32 noundef %91) #9
  call void @gpiod_set_raw_value(ptr noundef %call.i.i182, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i183, %enable_wp.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %do.end35, %if.end20.cleanup_crit_edge, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ -16, %do.end35 ], [ -2, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end20.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ %res.2, %enable_wp.cleanup_crit_edge ], [ %res.2, %if.then.i183 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !125

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 956, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #9
  %dma_chan = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan, align 8
  tail call void @dma_release_channel(ptr noundef %3) #9
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  %7 = and i32 %6, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr30 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %7) #9, !srcloc !129
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %ncfg.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ncfg.i, align 4
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wp_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %if.then.i, label %if.end.lpc32xx_wp_enable.exit_crit_edge

if.end.lpc32xx_wp_enable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_wp_enable.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %15) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #9
  br label %lpc32xx_wp_enable.exit

lpc32xx_wp_enable.exit:                           ; preds = %if.then.i, %if.end.lpc32xx_wp_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %pm.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %5 = and i32 %4, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #9, !srcloc !129
  %ncfg.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ncfg.i, align 4
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wp_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %12 = icmp ult i32 %11, 2048
  br i1 %12, label %if.then.i, label %entry.lpc32xx_wp_enable.exit_crit_edge

entry.lpc32xx_wp_enable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_wp_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %11) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #9
  br label %lpc32xx_wp_enable.exit

lpc32xx_wp_enable.exit:                           ; preds = %if.then.i, %entry.lpc32xx_wp_enable.exit_crit_edge
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call fastcc void @lpc32xx_nand_setup(ptr noundef %1)
  %ncfg.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ncfg.i, align 4
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wp_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %7) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_nand_cmd_ctrl(ptr nocapture noundef readonly %chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  %5 = and i32 %4, -536870913
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and = shl i32 %ctrl, 5
  %7 = and i32 %and, 32
  %tmp.0 = or i32 %6, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr6 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %8) #9, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, -1
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %if.then7

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then7:                                         ; preds = %entry
  %and8 = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 8
  br i1 %tobool9.not, label %do.body17, label %do.body11

do.body11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr15 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %11) #9, !srcloc !129
  br label %if.end23

do.body17:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr21 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %11) #9, !srcloc !129
  br label %if.end23

if.end23:                                         ; preds = %do.body17, %do.body11, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_device_ready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  %5 = lshr i32 %4, 24
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpc32xx_nand_setup(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #9, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  %add.ptr10 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 8
  %add.ptr15 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 50331648) #9, !srcloc !129
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 2
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %ncfg = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 4
  %11 = ptrtoint ptr %ncfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ncfg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %wwidth = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %wwidth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wwidth, align 4
  %call.op = add i32 %call, -1
  %add = select i1 %cmp, i32 133249999, i32 %call.op
  %sub = add i32 %add, %16
  %div = udiv i32 %sub, %16
  %sub19 = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub19)
  %cmp21 = icmp ult i32 %sub19, 15
  %phi.bo = shl i32 %sub19, 24
  %cond = select i1 %cmp21, i32 %phi.bo, i32 251658240
  %whold = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %whold to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %whold, align 4
  %sub25 = add i32 %add, %18
  %div28 = udiv i32 %sub25, %18
  %sub29 = add i32 %div28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub29)
  %cmp31 = icmp ult i32 %sub29, 15
  %phi.bo144 = shl i32 %sub29, 20
  %cond35 = select i1 %cmp31, i32 %phi.bo144, i32 15728640
  %wsetup = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %wsetup to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wsetup, align 4
  %sub40 = add i32 %add, %20
  %div43 = udiv i32 %sub40, %20
  %sub44 = add i32 %div43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub44)
  %cmp46 = icmp ult i32 %sub44, 15
  %phi.bo145 = shl i32 %sub44, 16
  %cond50 = select i1 %cmp46, i32 %phi.bo145, i32 983040
  %rdr_clks = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %rdr_clks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rdr_clks, align 4
  %rwidth = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 5
  %23 = ptrtoint ptr %rwidth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rwidth, align 4
  %sub59 = add i32 %add, %24
  %div62 = udiv i32 %sub59, %24
  %sub63 = add i32 %div62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub63)
  %cmp65 = icmp ult i32 %sub63, 15
  %phi.bo146 = shl i32 %sub63, 8
  %cond69 = select i1 %cmp65, i32 %phi.bo146, i32 3840
  %rhold = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 6
  %25 = ptrtoint ptr %rhold to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rhold, align 4
  %sub74 = add i32 %add, %26
  %div77 = udiv i32 %sub74, %26
  %sub78 = add i32 %div77, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub78)
  %cmp80 = icmp ult i32 %sub78, 15
  %phi.bo147 = shl i32 %sub78, 4
  %cond84 = select i1 %cmp80, i32 %phi.bo147, i32 240
  %rsetup = getelementptr inbounds %struct.lpc32xx_nand_cfg_slc, ptr %12, i32 0, i32 7
  %27 = ptrtoint ptr %rsetup to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rsetup, align 4
  %sub89 = add i32 %add, %28
  %div92 = udiv i32 %sub89, %28
  %sub93 = add i32 %div92, -1
  %29 = tail call i32 @llvm.umin.i32(i32 %sub93, i32 15)
  %shl = shl i32 %14, 28
  %or = or i32 %cond, %shl
  %or37 = or i32 %or, %cond35
  %or52 = or i32 %or37, %cond50
  %and54 = shl i32 %22, 12
  %shl55 = and i32 %and54, 61440
  %or56 = or i32 %or52, %shl55
  %or71 = or i32 %or56, %cond69
  %or86 = or i32 %or71, %cond84
  %or101 = or i32 %or86, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or101)
  %31 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base, align 8
  %add.ptr106 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %30) #9, !srcloc !129
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @lpc32xx_nand_read_byte(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !126
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  %conv = trunc i32 %5 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_nand_read_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3 = icmp sgt i32 %len, 0
  br i1 %cmp3, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.05 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %len.addr.04 = phi i32 [ %len, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %len.addr.04, -1
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !126
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %conv = trunc i32 %5 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.05, i32 1
  %6 = ptrtoint ptr %buf.addr.05 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf.addr.05, align 1
  %cmp = icmp ugt i32 %len.addr.04, 1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_nand_write_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1 = icmp sgt i32 %len, 0
  br i1 %cmp1, label %do.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %len.addr.03 = phi i32 [ %len, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %buf.addr.02 = phi ptr [ %buf, %do.body.lr.ph ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %dec = add nsw i32 %len.addr.03, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %incdec.ptr = getelementptr i8, ptr %buf.addr.02, i32 1
  %2 = ptrtoint ptr %buf.addr.02 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf.addr.02, align 1
  %conv = zext i8 %3 to i32
  %4 = shl nuw i32 %conv, 24
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #9, !srcloc !129
  %cmp = icmp ugt i32 %len.addr.03, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_nand_attach_chip(ptr noundef %chip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %data_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_buf, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 4096
  %ecc_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %ecc_buf, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %8)
  %cmp2 = icmp ult i32 %8, 513
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %9 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lpc32xx_ooblayout_ops, ptr %ooblayout1.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %placement = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 1
  %10 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %placement, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %size, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %12 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %strength, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %13 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %bytes, align 4
  %prepad = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 8
  %14 = ptrtoint ptr %prepad to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %prepad, align 8
  %postpad = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 9
  %15 = ptrtoint ptr %postpad to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %postpad, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %16 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lpc32xx_nand_read_page_raw_syndrome, ptr %read_page_raw, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %17 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lpc32xx_nand_read_page_syndrome, ptr %read_page, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %18 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lpc32xx_nand_write_page_raw_syndrome, ptr %write_page_raw, align 4
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %19 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @lpc32xx_nand_write_page_syndrome, ptr %write_page, align 4
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %20 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lpc32xx_nand_write_oob_syndrome, ptr %write_oob, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %21 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lpc32xx_nand_read_oob_syndrome, ptr %read_oob, align 8
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %22 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lpc32xx_nand_ecc_calculate, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %23 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rawnand_sw_hamming_correct, ptr %correct, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %24 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @lpc32xx_nand_ecc_enable, ptr %hwctl, align 4
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %25 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bbt_options, align 8
  %and = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cmp2.not = xor i1 %cmp2, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp2.not
  br i1 %brmerge, label %if.end4.cleanup_crit_edge, label %if.then22

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 13
  %27 = ptrtoint ptr %bbt_td to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bbt_smallpage_main_descr, ptr %bbt_td, align 4
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 14
  %28 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bbt_smallpage_mirror_descr, ptr %bbt_md, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_read_page_raw_syndrome(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_buf, align 8
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steps, align 4
  %mul = mul i32 %5, %3
  tail call void %1(ptr noundef %chip, ptr noundef %buf, i32 noundef %mul) #9
  %6 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_buf, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %8 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %10 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oobsize, align 4
  tail call void %7(ptr noundef %chip, ptr noundef %9, i32 noundef %11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_read_page_syndrome(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %oobregion = alloca %struct.mtd_oob_region, align 8
  %tmpecc = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #9
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %oobregion, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpecc) #9
  %3 = call ptr @memset(ptr %tmpecc, i32 255, i32 64)
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %call3 = tail call fastcc i32 @lpc32xx_xfer(ptr noundef %chip, ptr noundef %buf, i32 noundef 1)
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_buf, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oobsize, align 4
  tail call void %5(ptr noundef %chip, ptr noundef %7, i32 noundef %9) #9
  %ecc_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ecc_buf, align 4
  %12 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %steps, align 4
  %mul.i = mul i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp24.i = icmp sgt i32 %mul.i, 0
  br i1 %cmp24.i, label %entry.for.body.i_crit_edge, label %entry.lpc32xx_slc_ecc_copy.exit_crit_edge

entry.lpc32xx_slc_ecc_copy.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_slc_ecc_copy.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.025.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %div.i = sdiv i32 %i.025.i, 3
  %arrayidx.i = getelementptr i32, ptr %11, i32 %div.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %15, 2
  %neg.i = and i32 %shl.i, 16777212
  %and.i = xor i32 %neg.i, 16777215
  %conv.i = trunc i32 %and.i to i8
  %add.i = add i32 %i.025.i, 2
  %arrayidx2.i = getelementptr i8, ptr %tmpecc, i32 %add.i
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %shr.i = lshr i32 %and.i, 8
  %conv4.i = trunc i32 %shr.i to i8
  %add5.i = add nsw i32 %i.025.i, 1
  %arrayidx6.i = getelementptr i8, ptr %tmpecc, i32 %add5.i
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %and.i, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr i8, ptr %tmpecc, i32 %i.025.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %add11.i = add i32 %i.025.i, 3
  %cmp.i = icmp slt i32 %add11.i, %mul.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.lpc32xx_slc_ecc_copy.exit_crit_edge

for.body.i.lpc32xx_slc_ecc_copy.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_slc_ecc_copy.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

lpc32xx_slc_ecc_copy.exit:                        ; preds = %for.body.i.lpc32xx_slc_ecc_copy.exit_crit_edge, %entry.lpc32xx_slc_ecc_copy.exit_crit_edge
  %call6 = call i32 @mtd_ooblayout_ecc(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %oobregion) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %lpc32xx_slc_ecc_copy.exit.cleanup_crit_edge

lpc32xx_slc_ecc_copy.exit.cleanup_crit_edge:      ; preds = %lpc32xx_slc_ecc_copy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lpc32xx_slc_ecc_copy.exit
  %19 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp56 = icmp sgt i32 %20, 0
  br i1 %cmp56, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %21 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %oob_poi, align 4
  %23 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobregion, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %ecc_stats15 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %oobecc.059 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr21, %for.body.for.body_crit_edge ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %for.body.for.body_crit_edge ]
  %buf.addr.057 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr18, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %correct to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %correct, align 4
  %27 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes, align 4
  %mul = mul i32 %28, %i.058
  %arrayidx = getelementptr [64 x i8], ptr %tmpecc, i32 0, i32 %mul
  %call12 = call i32 %26(ptr noundef %chip, ptr noundef %buf.addr.057, ptr noundef %oobecc.059, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %failed.ecc_stats15 = select i1 %cmp13, ptr %failed, ptr %ecc_stats15
  %.call12 = select i1 %cmp13, i32 1, i32 %call12
  %29 = ptrtoint ptr %failed.ecc_stats15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %failed.ecc_stats15, align 4
  %add = add i32 %30, %.call12
  store i32 %add, ptr %failed.ecc_stats15, align 4
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 8
  %add.ptr18 = getelementptr i8, ptr %buf.addr.057, i32 %32
  %33 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytes, align 4
  %add.ptr21 = getelementptr i8, ptr %oobecc.059, i32 %34
  %inc22 = add nuw nsw i32 %i.058, 1
  %35 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc22, %36
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lpc32xx_slc_ecc_copy.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %lpc32xx_slc_ecc_copy.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpecc) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_write_page_raw_syndrome(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  %mul = mul i32 %3, %1
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %mul) #9
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_buf, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oobsize, align 4
  tail call void %5(ptr noundef %chip, ptr noundef %7, i32 noundef %9) #9
  %call3 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_write_page_syndrome(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %oobregion = alloca %struct.mtd_oob_region, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #9
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %oobregion, align 8
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %call3 = tail call fastcc i32 @lpc32xx_xfer(ptr noundef %chip, ptr noundef %buf, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @mtd_ooblayout_ecc(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %oobregion) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %3 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oob_poi, align 4
  %5 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobregion, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 %6
  %ecc_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ecc_buf, align 4
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps, align 4
  %mul.i = mul i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp24.i = icmp sgt i32 %mul.i, 0
  br i1 %cmp24.i, label %if.end7.for.body.i_crit_edge, label %if.end7.lpc32xx_slc_ecc_copy.exit_crit_edge

if.end7.lpc32xx_slc_ecc_copy.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_slc_ecc_copy.exit

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %i.025.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %div.i = sdiv i32 %i.025.i, 3
  %arrayidx.i = getelementptr i32, ptr %8, i32 %div.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %12, 2
  %neg.i = and i32 %shl.i, 16777212
  %and.i = xor i32 %neg.i, 16777215
  %conv.i = trunc i32 %and.i to i8
  %add.i = add i32 %i.025.i, 2
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %shr.i = lshr i32 %and.i, 8
  %conv4.i = trunc i32 %shr.i to i8
  %add5.i = add nsw i32 %i.025.i, 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr, i32 %add5.i
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %and.i, 16
  %conv9.i = trunc i32 %shr7.i to i8
  %arrayidx10.i = getelementptr i8, ptr %add.ptr, i32 %i.025.i
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %add11.i = add i32 %i.025.i, 3
  %cmp.i = icmp slt i32 %add11.i, %mul.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.lpc32xx_slc_ecc_copy.exit_crit_edge

for.body.i.lpc32xx_slc_ecc_copy.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lpc32xx_slc_ecc_copy.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

lpc32xx_slc_ecc_copy.exit:                        ; preds = %for.body.i.lpc32xx_slc_ecc_copy.exit_crit_edge, %if.end7.lpc32xx_slc_ecc_copy.exit_crit_edge
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_buf, align 4
  %18 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oobsize, align 4
  call void %17(ptr noundef %chip, ptr noundef %19, i32 noundef %21) #9
  %call11 = call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  br label %cleanup

cleanup:                                          ; preds = %lpc32xx_slc_ecc_copy.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %lpc32xx_slc_ecc_copy.exit ], [ %call3, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_write_oob_syndrome(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %call1 = tail call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %1, ptr noundef %3, i32 noundef %5) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_read_oob_syndrome(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call i32 @nand_read_oob_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %1, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_nand_ecc_calculate(ptr nocapture noundef readnone %chip, ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lpc32xx_nand_ecc_enable(ptr nocapture noundef %chip, i32 noundef %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpc32xx_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %length, align 4
  %1 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %oobregion, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpc32xx_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  %. = select i1 %tobool.not, i32 0, i32 6
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %., ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpc32xx_xfer(ptr nocapture noundef readonly %mtd, ptr noundef %buf, i32 noundef %read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read)
  %tobool.not = icmp eq i32 %read, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %cmp.not = icmp ult ptr %2, %buf
  br i1 %cmp.not, label %if.else, label %if.end5

if.else:                                          ; preds = %entry
  %data_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_buf, align 8
  br i1 %tobool.not, label %if.end5.thread, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %7 = call ptr @memcpy(ptr %4, ptr %buf, i32 %6)
  br label %do.body16

if.end5:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end5.do.body16_crit_edge, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.do.body16_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %if.else.do.body_crit_edge
  %dma_buf.06 = phi ptr [ %buf, %if.end5.do.body_crit_edge ], [ %4, %if.else.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  %11 = or i32 %10, 503316480
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 8
  %add.ptr14 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #9, !srcloc !129
  br label %do.body32

do.body16:                                        ; preds = %if.end5.do.body16_crit_edge, %if.end5.thread
  %dma_buf.03 = phi ptr [ %4, %if.end5.thread ], [ %buf, %if.end5.do.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %io_base21 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %io_base21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base21, align 8
  %add.ptr22 = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %17 = and i32 %16, -503316481
  %18 = or i32 %17, 469762048
  %19 = ptrtoint ptr %io_base21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base21, align 8
  %add.ptr30 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #9, !srcloc !129
  br label %do.body32

do.body32:                                        ; preds = %do.body16, %do.body
  %dma_buf.02 = phi ptr [ %dma_buf.06, %do.body ], [ %dma_buf.03, %do.body16 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %io_base35 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base35, align 8
  %add.ptr36 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 33554432) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %writesize40 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %23 = ptrtoint ptr %writesize40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writesize40, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base35, align 8
  %add.ptr42 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %25) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base35, align 8
  %add.ptr49 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %31 = or i32 %30, 16777216
  %32 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base35, align 8
  %add.ptr55 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %31) #9, !srcloc !129
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %34 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp568 = icmp sgt i32 %35, 0
  br i1 %cmp568, label %for.body.lr.ph, label %do.body32.for.end_crit_edge

do.body32.for.end_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body32
  %io_base_dma = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 12
  %size = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 4
  %ecc_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %if.end73
  %inc = add nuw nsw i32 %i.09, 1
  %36 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %steps, align 4
  %cmp56 = icmp slt i32 %inc, %37
  br i1 %cmp56, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %38 = phi i32 [ %35, %for.body.lr.ph ], [ %37, %for.cond.for.body_crit_edge ]
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %39 = ptrtoint ptr %io_base_dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_base_dma, align 4
  %add = add i32 %40, 56
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 8
  %mul = mul i32 %42, %i.09
  %add.ptr58 = getelementptr i8, ptr %dma_buf.02, i32 %mul
  %43 = ptrtoint ptr %writesize40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %writesize40, align 4
  %div = udiv i32 %44, %38
  %call62 = tail call fastcc i32 @lpc32xx_xmit_dma(ptr noundef %mtd, i32 noundef %add, ptr noundef %add.ptr58, i32 noundef %div, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %for.body
  %45 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %steps, align 4
  %sub = add i32 %46, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.09, i32 %sub)
  %cmp68 = icmp eq i32 %i.09, %sub
  br i1 %cmp68, label %if.end65.for.end_crit_edge, label %if.end70

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end70:                                         ; preds = %if.end65
  br i1 %tobool.not, label %if.then72, label %if.end70.if.end73_crit_edge

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #9
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70.if.end73_crit_edge
  %48 = ptrtoint ptr %io_base_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_base_dma, align 4
  %add75 = add i32 %49, 52
  %50 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ecc_buf, align 4
  %arrayidx = getelementptr i32, ptr %51, i32 %i.09
  %call76 = tail call fastcc i32 @lpc32xx_xmit_dma(ptr noundef %mtd, i32 noundef %add75, ptr noundef %arrayidx, i32 noundef 4, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.cond, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %if.end65.for.end_crit_edge, %for.cond.for.end_crit_edge, %do.body32.for.end_crit_edge
  %52 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base35, align 8
  %add.ptr83 = getelementptr i8, ptr %53, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  %55 = and i32 %54, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool88.not = icmp eq i32 %55, 0
  br i1 %tobool88.not, label %for.end.if.end124_crit_edge, label %do.end92

for.end.if.end124_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.end92:                                         ; preds = %for.end
  %parent = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.32) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add94 = add i32 %58, 10
  %59 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_base35, align 8
  %add.ptr9811 = getelementptr i8, ptr %60, i32 24
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9811) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %62 = and i32 %61, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool103.not12 = icmp eq i32 %62, 0
  br i1 %tobool103.not12, label %do.end92.while.end_crit_edge, label %do.end92.land.rhs_crit_edge

do.end92.land.rhs_crit_edge:                      ; preds = %do.end92
  br label %land.rhs

do.end92.while.end_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %do.end110.land.rhs_crit_edge, %do.end92.land.rhs_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub104 = sub i32 %63, %add94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub104)
  %cmp105 = icmp slt i32 %sub104, 0
  br i1 %cmp105, label %do.end110, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end110:                                        ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !154
  %64 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io_base35, align 8
  %add.ptr98 = getelementptr i8, ptr %65, i32 24
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %67 = and i32 %66, 67108864
  %tobool103.not = icmp eq i32 %67, 0
  br i1 %tobool103.not, label %do.end110.while.end_crit_edge, label %do.end110.land.rhs_crit_edge

do.end110.land.rhs_crit_edge:                     ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

do.end110.while.end_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end110.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end92.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub115 = sub i32 %68, %add94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub115)
  %cmp116 = icmp slt i32 %sub115, 0
  br i1 %cmp116, label %while.end.if.end124_crit_edge, label %do.end120

while.end.if.end124_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.end120:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.36) #12
  br label %if.end124

if.end124:                                        ; preds = %do.end120, %while.end.if.end124_crit_edge, %for.end.if.end124_crit_edge
  %status.0 = phi i32 [ 0, %while.end.if.end124_crit_edge ], [ -5, %do.end120 ], [ 0, %for.end.if.end124_crit_edge ]
  br i1 %tobool.not, label %if.then126, label %if.end124.if.end127_crit_edge

if.end124.if.end127_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end124.if.end127_crit_edge
  %72 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io_base35, align 8
  %add.ptr131 = getelementptr i8, ptr %73, i32 52
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #9, !srcloc !126
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %ecc_buf135 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 10
  %76 = ptrtoint ptr %ecc_buf135 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ecc_buf135, align 4
  %78 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %steps, align 4
  %sub138 = add i32 %79, -1
  %arrayidx139 = getelementptr i32, ptr %77, i32 %sub138
  %80 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %75, ptr %arrayidx139, align 4
  %dma_chan = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_chan, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 47
  %85 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.end127.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.end127.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %86(ptr noundef %82) #9
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.end127.dmaengine_terminate_all.exit_crit_edge
  %87 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_base35, align 8
  %add.ptr144 = getelementptr i8, ptr %88, i32 24
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %90 = and i32 %89, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool149.not = icmp eq i32 %90, 0
  br i1 %tobool149.not, label %lor.lhs.false, label %dmaengine_terminate_all.exit.do.end161_crit_edge

dmaengine_terminate_all.exit.do.end161_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end161

lor.lhs.false:                                    ; preds = %dmaengine_terminate_all.exit
  %91 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io_base35, align 8
  %add.ptr153 = getelementptr i8, ptr %92, i32 48
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool157.not = icmp eq i32 %93, 0
  br i1 %tobool157.not, label %lor.lhs.false.do.body165_crit_edge, label %lor.lhs.false.do.end161_crit_edge

lor.lhs.false.do.end161_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end161

lor.lhs.false.do.body165_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165

do.end161:                                        ; preds = %lor.lhs.false.do.end161_crit_edge, %dmaengine_terminate_all.exit.do.end161_crit_edge
  %parent163 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %94 = ptrtoint ptr %parent163 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent163, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.39) #12
  br label %do.body165

do.body165:                                       ; preds = %do.end161, %lor.lhs.false.do.body165_crit_edge
  %status.1 = phi i32 [ -5, %do.end161 ], [ %status.0, %lor.lhs.false.do.body165_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %io_base35, align 8
  %add.ptr171 = getelementptr i8, ptr %97, i32 16
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %99 = and i32 %98, -16777217
  %100 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io_base35, align 8
  %add.ptr177 = getelementptr i8, ptr %101, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %99) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %102 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io_base35, align 8
  %add.ptr184 = getelementptr i8, ptr %103, i32 20
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %105 = and i32 %104, -503316481
  %106 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %io_base35, align 8
  %add.ptr190 = getelementptr i8, ptr %107, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 %105) #9, !srcloc !129
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = or i1 %tobool.not, %cmp.not.not
  br i1 %brmerge, label %do.body165.cleanup_crit_edge, label %if.then193

do.body165.cleanup_crit_edge:                     ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then193:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  %data_buf194 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 11
  %108 = ptrtoint ptr %data_buf194 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data_buf194, align 8
  %110 = ptrtoint ptr %writesize40 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %writesize40, align 4
  %112 = call ptr @memcpy(ptr %buf, ptr %109, i32 %111)
  br label %cleanup

cleanup:                                          ; preds = %if.then193, %do.body165.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %do.body165.cleanup_crit_edge ], [ %status.1, %if.then193 ], [ %call76, %if.end73.cleanup_crit_edge ], [ %call62, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpc32xx_xmit_dma(ptr nocapture noundef readonly %mtd, i32 noundef %dma, ptr noundef %mem, i32 noundef %len, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dma_slave_config = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dma_slave_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dir, ptr %dma_slave_config, align 8
  %src_addr = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dma, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dma, ptr %dst_addr, align 8
  %src_addr_width = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %dst_addr_width, align 8
  %src_maxburst = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 5
  %7 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %dst_maxburst, align 8
  %device_fc = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %device_fc, align 4
  %dma_chan = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chan, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %dmaengine_slave_config.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %entry
  %call.i = tail call i32 %15(ptr noundef %11, ptr noundef %dma_slave_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %dmaengine_slave_config.exit.do.end_crit_edge

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %parent = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end:                                           ; preds = %dmaengine_slave_config.exit
  %sgl = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 9
  tail call void @sg_init_one(ptr noundef %sgl, ptr noundef %mem, i32 noundef %len) #9
  %18 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_chan, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev12 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12, align 4
  %call14 = tail call i32 @dma_map_sg_attrs(ptr noundef %23, ptr noundef %sgl, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 1
  br i1 %cmp.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent20 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %24 = ptrtoint ptr %parent20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %26 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_chan, align 8
  %tobool.not.i81 = icmp eq ptr %27, null
  br i1 %tobool.not.i81, label %if.end21.do.end29_crit_edge, label %lor.lhs.false.i

if.end21.do.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

lor.lhs.false.i:                                  ; preds = %if.end21
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool1.not.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end29_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end29_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 39
  %30 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end29_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end29_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i82 = tail call ptr %31(ptr noundef nonnull %27, ptr noundef %sgl, i32 noundef 1, i32 noundef %dir, i32 noundef 3, ptr noundef null) #9
  %tobool25.not = icmp eq ptr %call.i82, null
  br i1 %tobool25.not, label %dmaengine_prep_slave_sg.exit.do.end29_crit_edge, label %if.end32

dmaengine_prep_slave_sg.exit.do.end29_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end29:                                         ; preds = %dmaengine_prep_slave_sg.exit.do.end29_crit_edge, %lor.lhs.false2.i.do.end29_crit_edge, %lor.lhs.false.i.do.end29_crit_edge, %if.end21.do.end29_crit_edge
  %parent31 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %32 = ptrtoint ptr %parent31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.47) #12
  %34 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma_chan, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dev45 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev45, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %39, ptr noundef %sgl, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

if.end32:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %comp = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @init_completion.__key) #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i82, i32 0, i32 6
  %41 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @lpc32xx_dma_complete_func, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i82, i32 0, i32 8
  %42 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %comp, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i82, i32 0, i32 4
  %43 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_submit.i, align 4
  %call.i84 = tail call i32 %44(ptr noundef nonnull %call.i82) #9
  %45 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_chan, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %50(ptr noundef %46) #9
  %call38 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 100) #9
  %51 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_chan, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev41 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev41, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %56, ptr noundef %sgl, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end29, %do.end18, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end18 ], [ 0, %if.end32 ], [ -6, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_dma_complete_func(ptr noundef %completion) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %completion) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_lpc32xx_slc__257_1032_lpc32xx_nand_driver_init6, !1, !"__initcall__kmod_lpc32xx_slc__257_1032_lpc32xx_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1032, i32 1}
!2 = !{ptr @__exitcall_lpc32xx_nand_driver_exit, !1, !"__exitcall_lpc32xx_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file258, !4, !"__UNIQUE_ID_file258", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1034, i32 1}
!5 = !{ptr @__UNIQUE_ID_license259, !4, !"__UNIQUE_ID_license259", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author260, !7, !"__UNIQUE_ID_author260", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1035, i32 1}
!8 = !{ptr @__UNIQUE_ID_author261, !9, !"__UNIQUE_ID_author261", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1036, i32 1}
!10 = !{ptr @__UNIQUE_ID_description262, !11, !"__UNIQUE_ID_description262", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1037, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1027, i32 11}
!14 = !{ptr @lpc32xx_nand_driver, !15, !"lpc32xx_nand_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1021, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 851, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lpc32xx_nand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpc32xx_nand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 858, i32 25}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 859, i32 3}
!28 = !{ptr @lpc32xx_nand_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lpc32xx_nand_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 876, i32 3}
!32 = !{ptr @lpc32xx_nand_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lpc32xx_nand_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 925, i32 14}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 751, i32 27}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 752, i32 27}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 753, i32 27}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 754, i32 27}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 755, i32 27}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 756, i32 27}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 757, i32 27}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 758, i32 27}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 763, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lpc32xx_parse_dt._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @lpc32xx_parse_dt._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 767, i32 40}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 726, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @lpc32xx_nand_dma_setup._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @lpc32xx_nand_dma_setup._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 732, i32 19}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 735, i32 3}
!70 = !{ptr @lpc32xx_nand_dma_setup._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lpc32xx_nand_dma_setup._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @lpc32xx_nand_controller_ops, !73, !"lpc32xx_nand_controller_ops", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 822, i32 41}
!74 = !{ptr @lpc32xx_ooblayout_ops, !75, !"lpc32xx_ooblayout_ops", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 167, i32 39}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 557, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @lpc32xx_xfer._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @lpc32xx_xfer._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 563, i32 4}
!84 = !{ptr @lpc32xx_xfer._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lpc32xx_xfer._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 580, i32 3}
!88 = !{ptr @lpc32xx_xfer._entry.38, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lpc32xx_xfer._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 445, i32 3}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @lpc32xx_xmit_dma._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @lpc32xx_xmit_dma._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 454, i32 3}
!97 = !{ptr @lpc32xx_xmit_dma._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @lpc32xx_xmit_dma._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 460, i32 3}
!101 = !{ptr @lpc32xx_xmit_dma._entry.46, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @lpc32xx_xmit_dma._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @init_completion.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../include/linux/completion.h", i32 87, i32 2}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @bbt_smallpage_main_descr, !107, !"bbt_smallpage_main_descr", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 179, i32 30}
!108 = !{ptr @bbt_pattern, !109, !"bbt_pattern", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 172, i32 11}
!110 = !{ptr @bbt_smallpage_mirror_descr, !111, !"bbt_smallpage_mirror_descr", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 189, i32 30}
!112 = !{ptr @mirror_pattern, !113, !"mirror_pattern", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 173, i32 11}
!114 = !{ptr @lpc32xx_nand_match, !115, !"lpc32xx_nand_match", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/lpc32xx_slc.c", i32 1015, i32 34}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 5652407}
!127 = !{i64 2154680660}
!128 = !{i64 2154680916}
!129 = !{i64 5651989}
!130 = !{i64 2154681638}
!131 = !{i64 2154681894}
!132 = !{i64 2154638695}
!133 = !{i64 2154638965}
!134 = !{i64 2154640553}
!135 = !{i64 2154619536}
!136 = !{i64 2154620532}
!137 = !{i64 2154620953}
!138 = !{i64 2154621414}
!139 = !{i64 2154637973}
!140 = !{i64 2154641136}
!141 = !{i64 2154641676}
!142 = !{i64 2154641936}
!143 = !{i64 2154648448}
!144 = !{i64 2154649459}
!145 = !{i64 2154650648}
!146 = !{i64 2154651691}
!147 = !{i64 2154652021}
!148 = !{i64 2154652476}
!149 = !{i64 2154653749}
!150 = !{i64 2154654694}
!151 = !{i64 2154655859}
!152 = !{i64 2154657967}
!153 = !{i64 2154658629}
!154 = !{i64 2154658471}
!155 = !{i64 2154661712}
!156 = !{i64 2154662252}
!157 = !{i64 2154662801}
!158 = !{i64 2154665421}
!159 = !{i64 2154666370}
!160 = !{i64 2154667526}
!161 = !{i64 2154668563}
