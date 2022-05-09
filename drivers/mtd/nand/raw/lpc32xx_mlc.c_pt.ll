; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/lpc32xx_mlc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/lpc32xx_mlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.lpc32xx_nand_host = type { ptr, %struct.nand_chip, ptr, ptr, ptr, i32, ptr, %struct.completion, %struct.completion, i32, i32, ptr, i32, %struct.completion, ptr, %struct.dma_slave_config, %struct.scatterlist, ptr, ptr, i32 }
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
%struct.lpc32xx_nand_cfg_mlc = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_lpc32xx_mlc__251_905_lpc32xx_nand_driver_init6 = internal global ptr @lpc32xx_nand_driver_init, section ".initcall6.init", align 4
@lpc32xx_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc32xx_nand_probe, ptr @lpc32xx_nand_remove, ptr null, ptr @lpc32xx_nand_suspend, ptr @lpc32xx_nand_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc32xx_nand_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc32xx_nand_driver_exit = internal global ptr @lpc32xx_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file252 = internal constant [50 x i8] c"lpc32xx_mlc.file=drivers/mtd/nand/raw/lpc32xx_mlc\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"lpc32xx_mlc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [52 x i8] c"lpc32xx_mlc.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [71 x i8] c"lpc32xx_mlc.description=NAND driver for the NXP LPC32XX MLC controller\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpc32xx_mlc\00", [20 x i8] zeroinitializer }, align 32
@lpc32xx_nand_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-mlc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Missing or bad NAND config from device tree\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpc32xx_nand_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mtd/nand/raw/lpc32xx_mlc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr = internal global ptr @lpc32xx_nand_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NAND WP\00", [24 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO not available\0A\00", [44 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr.9 = internal global ptr @lpc32xx_nand_probe._entry.7, section ".printk_index", align 4
@lpc32xx_nand_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 735, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Clock initialization failure\0A\00", [34 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr.12 = internal global ptr @lpc32xx_nand_probe._entry.10, section ".printk_index", align 4
@lpc32xx_nand_bbt = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 270370, [8 x i32] [i32 524224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 0, i32 0, [8 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@lpc32xx_nand_bbt_mirror = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 270370, [8 x i32] [i32 524160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 0, i32 0, [8 x i8] zeroinitializer, i32 0, i32 0, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error requesting NAND IRQ\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc32xx_nand_probe._entry_ptr.15 = internal global ptr @lpc32xx_nand_probe._entry.13, section ".printk_index", align 4
@lpc32xx_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @lpc32xx_nand_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxp,tcea-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxp,busy-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp,nand-ta\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp,rd-high\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,rd-low\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp,wr-high\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,wr-low\00", [21 x i8] zeroinitializer }, align 32
@lpc32xx_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chip parameters not specified correctly\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc32xx_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@lpc32xx_parse_dt._entry_ptr = internal global ptr @lpc32xx_parse_dt._entry, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@lpc32xx_waitfunc_nand.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpc32xx_waitfunc_nand\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Warning: NAND not ready.\0A\00", [38 x i8] zeroinitializer }, align 32
@lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpc32xx_waitfunc_controller\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Warning: Controller not ready.\0A\00", [32 x i8] zeroinitializer }, align 32
@lpc32xx_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no DMA platform data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc32xx_dma_setup\00", [46 x i8] zeroinitializer }, align 32
@lpc32xx_dma_setup._entry_ptr = internal global ptr @lpc32xx_dma_setup._entry, section ".printk_index", align 4
@lpc32xx_dma_setup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.3, i32 586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request DMA channel\0A\00", [33 x i8] zeroinitializer }, align 32
@lpc32xx_dma_setup._entry_ptr.36 = internal global ptr @lpc32xx_dma_setup._entry.34, section ".printk_index", align 4
@lpc32xx_dma_setup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to setup DMA slave\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc32xx_dma_setup._entry_ptr.39 = internal global ptr @lpc32xx_dma_setup._entry.37, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@lpc32xx_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @lpc32xx_ooblayout_ecc, ptr @lpc32xx_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@lpc32xx_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 468, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: DECODER_FAILURE\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc32xx_read_page\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lpc32xx_read_page._entry_ptr = internal global ptr @lpc32xx_read_page._entry, section ".printk_index", align 4
@lpc32xx_xmit_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to map sg list\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc32xx_xmit_dma\00", [47 x i8] zeroinitializer }, align 32
@lpc32xx_xmit_dma._entry_ptr = internal global ptr @lpc32xx_xmit_dma._entry, section ".printk_index", align 4
@lpc32xx_xmit_dma._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to prepare slave sg\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc32xx_xmit_dma._entry_ptr.48 = internal global ptr @lpc32xx_xmit_dma._entry.46, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"lpc32xx_nand_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 894, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 900, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"lpc32xx_nand_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 888, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 712, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 719, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 720, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 735, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"lpc32xx_nand_bbt\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 163, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"lpc32xx_nand_bbt_mirror\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 169, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 784, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [28 x i8] c"lpc32xx_nand_controller_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 678, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 624, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 625, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 626, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 627, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 628, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 629, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 630, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 635, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 639, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 464, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 332, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 352, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 577, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 586, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 605, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 87, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"lpc32xx_ooblayout_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 158, i32 39 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 468, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 405, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [38 x i8] c"../drivers/mtd/nand/raw/lpc32xx_mlc.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 411, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_lpc32xx_nand_driver_exit, ptr @__initcall__kmod_lpc32xx_mlc__251_905_lpc32xx_nand_driver_init6, ptr @lpc32xx_dma_setup._entry, ptr @lpc32xx_dma_setup._entry.34, ptr @lpc32xx_dma_setup._entry.37, ptr @lpc32xx_dma_setup._entry_ptr, ptr @lpc32xx_dma_setup._entry_ptr.36, ptr @lpc32xx_dma_setup._entry_ptr.39, ptr @lpc32xx_nand_driver_exit, ptr @lpc32xx_nand_probe._entry, ptr @lpc32xx_nand_probe._entry.10, ptr @lpc32xx_nand_probe._entry.13, ptr @lpc32xx_nand_probe._entry.7, ptr @lpc32xx_nand_probe._entry_ptr, ptr @lpc32xx_nand_probe._entry_ptr.12, ptr @lpc32xx_nand_probe._entry_ptr.15, ptr @lpc32xx_nand_probe._entry_ptr.9, ptr @lpc32xx_parse_dt._entry, ptr @lpc32xx_parse_dt._entry_ptr, ptr @lpc32xx_read_page._entry, ptr @lpc32xx_read_page._entry_ptr, ptr @lpc32xx_xmit_dma._entry, ptr @lpc32xx_xmit_dma._entry.46, ptr @lpc32xx_xmit_dma._entry_ptr, ptr @lpc32xx_xmit_dma._entry_ptr.48, ptr @lpc32xx_nand_driver, ptr @.str, ptr @lpc32xx_nand_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @lpc32xx_nand_bbt, ptr @lpc32xx_nand_bbt_mirror, ptr @.str.14, ptr @lpc32xx_nand_controller_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @init_completion.__key, ptr @.str.40, ptr @lpc32xx_ooblayout_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_bbt to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_bbt_mirror to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_dma_setup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_dma_setup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xmit_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_xmit_dma._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc32xx_nand_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc32xx_nand_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2464, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #7
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %io_base, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call2, align 4
  %io_base_phy = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %io_base_phy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %io_base_phy, align 8
  %nand_chip11 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end10.if.end18_crit_edge, label %if.then15

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %if.end10
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then15.lpc32xx_parse_dt.exit_crit_edge, label %if.end.i

if.then15.lpc32xx_parse_dt.exit_crit_edge:        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_parse_dt.exit

if.end.i:                                         ; preds = %if.then15
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #7
  %busy_delay.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 1
  %call.i.i56.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef %busy_delay.i, i32 noundef 1, i32 noundef 0) #7
  %nand_ta.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 2
  %call.i.i57.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef %nand_ta.i, i32 noundef 1, i32 noundef 0) #7
  %rd_high.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 3
  %call.i.i58.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.19, ptr noundef %rd_high.i, i32 noundef 1, i32 noundef 0) #7
  %rd_low.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 4
  %call.i.i59.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef %rd_low.i, i32 noundef 1, i32 noundef 0) #7
  %wr_high.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 5
  %call.i.i60.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef %wr_high.i, i32 noundef 1, i32 noundef 0) #7
  %wr_low.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 6
  %call.i.i61.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef %wr_low.i, i32 noundef 1, i32 noundef 0) #7
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %12 = ptrtoint ptr %busy_delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %busy_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not.i = icmp eq i32 %13, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false12.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %nand_ta.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nand_ta.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.i = icmp eq i32 %15, 0
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.do.end.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false12.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false12.i
  %16 = ptrtoint ptr %rd_high.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rd_high.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not.i = icmp eq i32 %17, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.do.end.i_crit_edge, label %lor.lhs.false18.i

lor.lhs.false15.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false15.i
  %18 = ptrtoint ptr %rd_low.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rd_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i, label %lor.lhs.false18.i.do.end.i_crit_edge, label %lor.lhs.false21.i

lor.lhs.false18.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false18.i
  %20 = ptrtoint ptr %wr_high.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wr_high.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not.i = icmp eq i32 %21, 0
  br i1 %tobool23.not.i, label %lor.lhs.false21.i.do.end.i_crit_edge, label %lor.lhs.false24.i

lor.lhs.false21.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false21.i
  %22 = ptrtoint ptr %wr_low.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wr_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool26.not.i = icmp eq i32 %23, 0
  br i1 %tobool26.not.i, label %lor.lhs.false24.i.do.end.i_crit_edge, label %if.end28.i

lor.lhs.false24.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false24.i.do.end.i_crit_edge, %lor.lhs.false21.i.do.end.i_crit_edge, %lor.lhs.false18.i.do.end.i_crit_edge, %lor.lhs.false15.i.do.end.i_crit_edge, %lor.lhs.false12.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %lpc32xx_parse_dt.exit

if.end28.i:                                       ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef null) #7
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i62.i, ptr %wp_gpio.i, align 4
  br label %lpc32xx_parse_dt.exit

lpc32xx_parse_dt.exit:                            ; preds = %if.end28.i, %do.end.i, %if.then15.lpc32xx_parse_dt.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end28.i ], [ null, %do.end.i ], [ null, %if.then15.lpc32xx_parse_dt.exit_crit_edge ]
  %ncfg = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %ncfg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i, ptr %ncfg, align 8
  br label %if.end18

if.end18:                                         ; preds = %lpc32xx_parse_dt.exit, %if.end10.if.end18_crit_edge
  %ncfg19 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %ncfg19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ncfg19, align 8
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %wp_gpio = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %wp_gpio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wp_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %29)
  %cmp = icmp eq i32 %29, -517
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %29)
  %30 = icmp ult i32 %29, 2048
  br i1 %30, label %land.lhs.true, label %if.end26.if.end39_crit_edge

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end26
  %call32 = tail call i32 @gpio_request(i32 noundef %29, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end39_crit_edge, label %do.end37

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end37:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %31 = ptrtoint ptr %ncfg19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ncfg19, align 8
  %wp_gpio.i194 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %wp_gpio.i194 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wp_gpio.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %34)
  %35 = icmp ult i32 %34, 2048
  br i1 %35, label %if.then.i, label %if.end39.lpc32xx_wp_disable.exit_crit_edge

if.end39.lpc32xx_wp_disable.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_wp_disable.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i195 = tail call ptr @gpio_to_desc(i32 noundef %34) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i195, i32 noundef 1) #7
  br label %lpc32xx_wp_disable.exit

lpc32xx_wp_disable.exit:                          ; preds = %if.then.i, %if.end39.lpc32xx_wp_disable.exit_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %36 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %pdata, align 8
  %priv1.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 34
  %39 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %priv1.i, align 8
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %42 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %43 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lpc32xx_wp_disable.exit.nand_set_flash_node.exit_crit_edge

lpc32xx_wp_disable.exit.nand_set_flash_node.exit_crit_edge: ; preds = %lpc32xx_wp_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %lpc32xx_wp_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i197 = tail call i32 @of_property_read_string(ptr noundef %41, ptr noundef nonnull @.str.26, ptr noundef %name.i.i) #7
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %lpc32xx_wp_disable.exit.nand_set_flash_node.exit_crit_edge
  %parent = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %parent, align 8
  %call47 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call47, ptr %clk, align 4
  %cmp.i198 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %do.end53, label %if.end55

do.end53:                                         ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %free_gpio

if.end55:                                         ; preds = %nand_set_flash_node.exit
  %call.i199 = tail call i32 @clk_prepare(ptr noundef %call47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end.i201, label %if.end55.put_clk_crit_edge

if.end55.put_clk_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_clk

if.end.i201:                                      ; preds = %if.end55
  %call1.i = tail call i32 @clk_enable(ptr noundef %call47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end60, label %if.end.i201.put_clk.sink.split_crit_edge

if.end.i201.put_clk.sink.split_crit_edge:         ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_clk.sink.split

if.end60:                                         ; preds = %if.end.i201
  %legacy = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5
  %cmd_ctrl = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5, i32 7
  %47 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @lpc32xx_nand_cmd_ctrl, ptr %cmd_ctrl, align 4
  %dev_ready = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5, i32 9
  %48 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @lpc32xx_nand_device_ready, ptr %dev_ready, align 4
  %chip_delay = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5, i32 15
  %49 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 25, ptr %chip_delay, align 4
  %50 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %51, i32 32768
  %52 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %legacy, align 8
  %IO_ADDR_W = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5, i32 1
  %53 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr, ptr %IO_ADDR_W, align 4
  tail call fastcc void @lpc32xx_nand_setup(ptr noundef nonnull %call.i)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %waitfunc = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5, i32 10
  %55 = ptrtoint ptr %waitfunc to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @lpc32xx_waitfunc, ptr %waitfunc, align 8
  %options = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 512, ptr %options, align 8
  %bbt_options = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 10
  %57 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 393216, ptr %bbt_options, align 8
  %bbt_td = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 13
  %58 = ptrtoint ptr %bbt_td to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @lpc32xx_nand_bbt, ptr %bbt_td, align 4
  %bbt_md = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 14
  %59 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @lpc32xx_nand_bbt_mirror, ptr %bbt_md, align 8
  %60 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base, align 8
  %add.ptr77 = getelementptr i8, ptr %61, i32 65596
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr77) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %comp_nand = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 7
  %63 = ptrtoint ptr %comp_nand to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %comp_nand, align 4
  %wait.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #7
  %comp_controller = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %comp_controller to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %comp_controller, align 4
  %wait.i203 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i203, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #7
  %call80 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 5
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call80, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp82 = icmp slt i32 %call80, 0
  br i1 %cmp82, label %if.end60.unprepare_clk_crit_edge, label %if.end84

if.end60.unprepare_clk_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %unprepare_clk

if.end84:                                         ; preds = %if.end60
  %call.i204 = tail call i32 @request_threaded_irq(i32 noundef %call80, ptr noundef nonnull @lpc3xxx_nand_irq, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool87.not = icmp eq i32 %call.i204, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %unprepare_clk

if.end93:                                         ; preds = %if.end84
  %ops = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %call.i, i32 0, i32 1, i32 5, i32 16, i32 1
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @lpc32xx_nand_controller_ops, ptr %ops, align 4
  %call.i205 = tail call i32 @nand_scan_with_ids(ptr noundef %nand_chip11, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool96.not = icmp eq i32 %call.i205, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.free_irq_crit_edge

if.end93.free_irq_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_irq

if.end98:                                         ; preds = %if.end93
  %67 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str, ptr %name.i.i, align 8
  %68 = ptrtoint ptr %ncfg19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ncfg19, align 8
  %parts = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parts, align 4
  %num_parts = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %69, i32 0, i32 9
  %72 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_parts, align 4
  %call101 = tail call i32 @mtd_device_parse_register(ptr noundef %nand_chip11, ptr noundef null, ptr noundef null, ptr noundef %71, i32 noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end98.cleanup_crit_edge, label %cleanup_nand

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nand_cleanup(ptr noundef %nand_chip11) #7
  br label %free_irq

free_irq:                                         ; preds = %cleanup_nand, %if.end93.free_irq_crit_edge
  %res.0 = phi i32 [ %call.i205, %if.end93.free_irq_crit_edge ], [ %call101, %cleanup_nand ]
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  %call106 = tail call ptr @free_irq(i32 noundef %75, ptr noundef nonnull %call.i) #7
  br label %unprepare_clk

unprepare_clk:                                    ; preds = %free_irq, %do.end91, %if.end60.unprepare_clk_crit_edge
  %res.1 = phi i32 [ -6, %do.end91 ], [ %res.0, %free_irq ], [ -22, %if.end60.unprepare_clk_crit_edge ]
  %76 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %77) #7
  br label %put_clk.sink.split

put_clk.sink.split:                               ; preds = %unprepare_clk, %if.end.i201.put_clk.sink.split_crit_edge
  %call47.sink = phi ptr [ %77, %unprepare_clk ], [ %call47, %if.end.i201.put_clk.sink.split_crit_edge ]
  %res.3.ph = phi i32 [ %res.1, %unprepare_clk ], [ %call1.i, %if.end.i201.put_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %call47.sink) #7
  br label %put_clk

put_clk:                                          ; preds = %put_clk.sink.split, %if.end55.put_clk_crit_edge
  %res.3 = phi i32 [ %call.i199, %if.end55.put_clk_crit_edge ], [ %res.3.ph, %put_clk.sink.split ]
  %78 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %79) #7
  br label %free_gpio

free_gpio:                                        ; preds = %put_clk, %do.end53
  %res.4 = phi i32 [ -2, %do.end53 ], [ %res.3, %put_clk ]
  %80 = ptrtoint ptr %ncfg19 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ncfg19, align 8
  %wp_gpio.i207 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %wp_gpio.i207 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wp_gpio.i207, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %83)
  %84 = icmp ult i32 %83, 2048
  br i1 %84, label %if.then.i209, label %free_gpio.lpc32xx_wp_enable.exit_crit_edge

free_gpio.lpc32xx_wp_enable.exit_crit_edge:       ; preds = %free_gpio
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_wp_enable.exit

if.then.i209:                                     ; preds = %free_gpio
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i208 = tail call ptr @gpio_to_desc(i32 noundef %83) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i208, i32 noundef 0) #7
  br label %lpc32xx_wp_enable.exit

lpc32xx_wp_enable.exit:                           ; preds = %if.then.i209, %free_gpio.lpc32xx_wp_enable.exit_crit_edge
  %85 = ptrtoint ptr %ncfg19 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ncfg19, align 8
  %wp_gpio113 = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %wp_gpio113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wp_gpio113, align 4
  tail call void @gpio_free(i32 noundef %88) #7
  br label %cleanup

cleanup:                                          ; preds = %lpc32xx_wp_enable.exit, %if.end98.cleanup_crit_edge, %do.end37, %if.end23.cleanup_crit_edge, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then7 ], [ -16, %do.end37 ], [ %res.4, %lpc32xx_wp_enable.exit ], [ -2, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end23.cleanup_crit_edge ], [ 0, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nand_chip = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %nand_chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 835, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand_chip) #7
  %irq = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call22 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %7) #7
  %ncfg.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ncfg.i, align 8
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wp_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %12 = icmp ult i32 %11, 2048
  br i1 %12, label %if.then.i, label %if.end.lpc32xx_wp_enable.exit_crit_edge

if.end.lpc32xx_wp_enable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_wp_enable.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %11) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #7
  br label %lpc32xx_wp_enable.exit

lpc32xx_wp_enable.exit:                           ; preds = %if.then.i, %if.end.lpc32xx_wp_enable.exit_crit_edge
  %13 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ncfg.i, align 8
  %wp_gpio = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %wp_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wp_gpio, align 4
  tail call void @gpio_free(i32 noundef %16) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %pm.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ncfg.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ncfg.i, align 8
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wp_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then.i, label %entry.lpc32xx_wp_enable.exit_crit_edge

entry.lpc32xx_wp_enable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_wp_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %5) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #7
  br label %lpc32xx_wp_enable.exit

lpc32xx_wp_enable.exit:                           ; preds = %if.then.i, %entry.lpc32xx_wp_enable.exit_crit_edge
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call fastcc void @lpc32xx_nand_setup(ptr noundef %1)
  %ncfg.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ncfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ncfg.i, align 8
  %wp_gpio.i = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %wp_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wp_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %8 = icmp ult i32 %7, 2048
  br i1 %8, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %7) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_nand_cmd_ctrl(ptr nocapture noundef readonly %nand_chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, -1
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %and = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %io_base5 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %io_base5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base5, align 8
  br i1 %tobool.not, label %do.body2, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %4, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !124
  br label %if.end7

do.body2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6 = getelementptr i8, ptr %4, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #7, !srcloc !124
  br label %if.end7

if.end7:                                          ; preds = %do.body2, %do.body, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_device_ready(ptr nocapture noundef readonly %nand_chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand_chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 65608
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %5 = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpc32xx_nand_setup(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #7, !srcloc !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  %clk = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 3
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp, i32 104000000, i32 %call
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 65604
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 24226) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 8
  %add.ptr10 = getelementptr i8, ptr %8, i32 65584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 100663296) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr15 = getelementptr i8, ptr %10, i32 65604
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 24226) #7, !srcloc !128
  %ncfg = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 6
  %11 = ptrtoint ptr %ncfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ncfg, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %div = udiv i32 %spec.store.select, %14
  %add = shl i32 %div, 24
  %and = add i32 %add, 16777216
  %shl = and i32 %and, 50331648
  %busy_delay = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %busy_delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busy_delay, align 4
  %div17 = udiv i32 %spec.store.select, %16
  %add18 = shl i32 %div17, 19
  %and19 = add i32 %add18, 524288
  %shl20 = and i32 %and19, 16252928
  %or21 = or i32 %shl20, %shl
  %nand_ta = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %nand_ta to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nand_ta, align 4
  %div23 = udiv i32 %spec.store.select, %18
  %add24 = shl i32 %div23, 16
  %and25 = add i32 %add24, 65536
  %shl26 = and i32 %and25, 458752
  %or27 = or i32 %or21, %shl26
  %rd_high = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %rd_high to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rd_high, align 4
  %div29 = udiv i32 %spec.store.select, %20
  %add30 = shl i32 %div29, 12
  %and31 = add i32 %add30, 4096
  %shl32 = and i32 %and31, 61440
  %or33 = or i32 %or27, %shl32
  %rd_low = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %rd_low to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rd_low, align 4
  %div35 = udiv i32 %spec.store.select, %22
  %and36 = shl i32 %div35, 8
  %shl37 = and i32 %and36, 3840
  %or38 = or i32 %or33, %shl37
  %wr_high = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %12, i32 0, i32 5
  %23 = ptrtoint ptr %wr_high to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_high, align 4
  %div40 = udiv i32 %spec.store.select, %24
  %add41 = shl i32 %div40, 4
  %and42 = add i32 %add41, 16
  %shl43 = and i32 %and42, 240
  %or44 = or i32 %or38, %shl43
  %wr_low = getelementptr inbounds %struct.lpc32xx_nand_cfg_mlc, ptr %12, i32 0, i32 6
  %25 = ptrtoint ptr %wr_low to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_low, align 4
  %div46 = udiv i32 %spec.store.select, %26
  %and47 = and i32 %div46, 15
  %or49 = or i32 %or44, %and47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or49)
  %28 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base, align 8
  %add.ptr54 = getelementptr i8, ptr %29, i32 65588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %27) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 8
  %add.ptr59 = getelementptr i8, ptr %31, i32 65592
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 48) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 8
  %add.ptr64 = getelementptr i8, ptr %33, i32 65612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 16777216) #7, !srcloc !124
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_waitfunc(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %io_base.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 65608
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lpc32xx_waitfunc_nand.exit_crit_edge

entry.lpc32xx_waitfunc_nand.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_nand.exit

if.end.i:                                         ; preds = %entry
  %comp_nand.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %comp_nand.i) #7
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 8
  %add.ptr72.i = getelementptr i8, ptr %7, i32 65608
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not3.i = icmp eq i8 %9, 0
  br i1 %tobool13.not3.i, label %do.body.lr.ph.i, label %if.end.i.lpc32xx_waitfunc_nand.exit_crit_edge

if.end.i.lpc32xx_waitfunc_nand.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_nand.exit

do.body.lr.ph.i:                                  ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56
  br label %do.body.i

do.body.i:                                        ; preds = %do.end26.i.do.body.i_crit_edge, %do.body.lr.ph.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_waitfunc_nand.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc32xx_waitfunc, %if.then20.i)) #7
          to label %do.end26.i [label %if.then20.i], !srcloc !137

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_waitfunc_nand.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.28) #7
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !139
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %11, i32 65608
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %13 = and i8 %12, 1
  %tobool13.not.i = icmp eq i8 %13, 0
  br i1 %tobool13.not.i, label %do.end26.i.do.body.i_crit_edge, label %do.end26.i.lpc32xx_waitfunc_nand.exit_crit_edge

do.end26.i.lpc32xx_waitfunc_nand.exit_crit_edge:  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_nand.exit

do.end26.i.do.body.i_crit_edge:                   ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

lpc32xx_waitfunc_nand.exit:                       ; preds = %do.end26.i.lpc32xx_waitfunc_nand.exit_crit_edge, %if.end.i.lpc32xx_waitfunc_nand.exit_crit_edge, %entry.lpc32xx_waitfunc_nand.exit_crit_edge
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  %io_base.i4 = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %io_base.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i4, align 8
  %add.ptr.i5 = getelementptr i8, ptr %17, i32 65608
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i5) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i6 = icmp eq i8 %19, 0
  br i1 %tobool.not.i6, label %if.end.i9, label %lpc32xx_waitfunc_nand.exit.lpc32xx_waitfunc_controller.exit_crit_edge

lpc32xx_waitfunc_nand.exit.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %lpc32xx_waitfunc_nand.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

if.end.i9:                                        ; preds = %lpc32xx_waitfunc_nand.exit
  %comp_controller.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %15, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %comp_controller.i) #7
  %20 = ptrtoint ptr %io_base.i4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i4, align 8
  %add.ptr72.i7 = getelementptr i8, ptr %21, i32 65608
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72.i7) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not3.i8 = icmp eq i8 %23, 0
  br i1 %tobool13.not3.i8, label %do.body.lr.ph.i11, label %if.end.i9.lpc32xx_waitfunc_controller.exit_crit_edge

if.end.i9.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

do.body.lr.ph.i11:                                ; preds = %if.end.i9
  %dev.i10 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56
  br label %do.body.i12

do.body.i12:                                      ; preds = %do.end26.i16.do.body.i12_crit_edge, %do.body.lr.ph.i11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc32xx_waitfunc, %if.then20.i13)) #7
          to label %do.end26.i16 [label %if.then20.i13], !srcloc !137

if.then20.i13:                                    ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, ptr noundef %dev.i10, ptr noundef nonnull @.str.30) #7
  br label %do.end26.i16

do.end26.i16:                                     ; preds = %if.then20.i13, %do.body.i12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !143
  %24 = ptrtoint ptr %io_base.i4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i4, align 8
  %add.ptr7.i14 = getelementptr i8, ptr %25, i32 65608
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i14) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %27 = and i8 %26, 2
  %tobool13.not.i15 = icmp eq i8 %27, 0
  br i1 %tobool13.not.i15, label %do.end26.i16.do.body.i12_crit_edge, label %do.end26.i16.lpc32xx_waitfunc_controller.exit_crit_edge

do.end26.i16.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %do.end26.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

do.end26.i16.do.body.i12_crit_edge:               ; preds = %do.end26.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i12

lpc32xx_waitfunc_controller.exit:                 ; preds = %do.end26.i16.lpc32xx_waitfunc_controller.exit_crit_edge, %if.end.i9.lpc32xx_waitfunc_controller.exit_crit_edge, %lpc32xx_waitfunc_nand.exit.lpc32xx_waitfunc_controller.exit_crit_edge
  ret i32 64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc3xxx_nand_irq(i32 noundef %irq, ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 65596
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %comp_nand = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 7
  tail call void @complete(ptr noundef %comp_nand) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %comp_controller = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %host, i32 0, i32 8
  tail call void @complete(ptr noundef %comp_controller) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_nand_attach_chip(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %4 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %7, i32 noundef 3520) #7
  %dma_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %dma_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %dma_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 4
  %call.i48 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %10, i32 noundef 3520) #7
  %dummy_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %dummy_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i48, ptr %dummy_buf, align 8
  %tobool10.not = icmp eq ptr %call.i48, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %size, align 8
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %13 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @lpc32xx_ecc_enable, ptr %hwctl, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %14 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lpc32xx_read_page, ptr %read_page_raw, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %15 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @lpc32xx_read_page, ptr %read_page, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %16 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lpc32xx_write_page_lowlevel, ptr %write_page_raw, align 4
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %17 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lpc32xx_write_page_lowlevel, ptr %write_page, align 4
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %18 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lpc32xx_write_oob, ptr %write_oob, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %19 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @lpc32xx_read_oob, ptr %read_oob, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %20 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %strength, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %bytes, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %22 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lpc32xx_ooblayout_ops, ptr %ooblayout1.i, align 8
  %23 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writesize, align 4
  %div47 = lshr i32 %24, 9
  %mlcsubpages = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %mlcsubpages to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div47, ptr %mlcsubpages, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lpc32xx_ecc_enable(ptr nocapture noundef %chip, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_read_page(ptr noundef %chip, ptr nocapture noundef writeonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %call3 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %mlcsubpages = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %mlcsubpages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mlcsubpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4104 = icmp sgt i32 %5, 0
  br i1 %cmp4104, label %do.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %ecc_stats19 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %do.body

do.body:                                          ; preds = %for.cond44.preheader.do.body_crit_edge, %do.body.lr.ph
  %buf.addr.0107 = phi ptr [ %buf, %do.body.lr.ph ], [ %add.ptr41, %for.cond44.preheader.do.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %do.body.lr.ph ], [ %inc59, %for.cond44.preheader.do.body_crit_edge ]
  %oobbuf.0105 = phi ptr [ %3, %do.body.lr.ph ], [ %add.ptr54.3, %for.cond44.preheader.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 65556
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !133
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %io_base.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 65608
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.lpc32xx_waitfunc_controller.exit_crit_edge

do.body.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

if.end.i:                                         ; preds = %do.body
  %comp_controller.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %9, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %comp_controller.i) #7
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i, align 8
  %add.ptr72.i = getelementptr i8, ptr %15, i32 65608
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not3.i = icmp eq i8 %17, 0
  br i1 %tobool13.not3.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.lpc32xx_waitfunc_controller.exit_crit_edge

if.end.i.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.end26.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc32xx_read_page, %if.then20.i)) #7
          to label %do.end26.i [label %if.then20.i], !srcloc !137

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, ptr noundef %dev.i, ptr noundef nonnull @.str.30) #7
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !143
  %18 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %19, i32 65608
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %21 = and i8 %20, 2
  %tobool13.not.i = icmp eq i8 %21, 0
  br i1 %tobool13.not.i, label %do.end26.i.do.body.i_crit_edge, label %do.end26.i.lpc32xx_waitfunc_controller.exit_crit_edge

do.end26.i.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

do.end26.i.do.body.i_crit_edge:                   ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

lpc32xx_waitfunc_controller.exit:                 ; preds = %do.end26.i.lpc32xx_waitfunc_controller.exit_crit_edge, %if.end.i.lpc32xx_waitfunc_controller.exit_crit_edge, %do.body.lpc32xx_waitfunc_controller.exit_crit_edge
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 8
  %add.ptr7 = getelementptr i8, ptr %23, i32 65608
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !146
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %and = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %lpc32xx_waitfunc_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %failed, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %failed, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #10
  br label %for.body33.preheader

if.else14:                                        ; preds = %lpc32xx_waitfunc_controller.exit
  %and15 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else14.for.body33.preheader_crit_edge, label %if.then17

if.else14.for.body33.preheader_crit_edge:         ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.preheader

for.body33.preheader:                             ; preds = %if.then17, %if.else14.for.body33.preheader_crit_edge, %if.then10
  br label %for.body33

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %25, 4
  %and18 = and i32 %shr, 3
  %add = add nuw nsw i32 %and18, 1
  %28 = ptrtoint ptr %ecc_stats19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ecc_stats19, align 4
  %add20 = add i32 %add, %29
  store i32 %add20, ptr %ecc_stats19, align 4
  br label %for.body33.preheader

for.cond44.preheader:                             ; preds = %for.body33
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base, align 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !146
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %34 = ptrtoint ptr %oobbuf.0105 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %oobbuf.0105, align 4
  %add.ptr54 = getelementptr i8, ptr %oobbuf.0105, i32 4
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !146
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %39 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr54, align 4
  %add.ptr54.1 = getelementptr i8, ptr %oobbuf.0105, i32 8
  %40 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !146
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %44 = ptrtoint ptr %add.ptr54.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr54.1, align 4
  %add.ptr54.2 = getelementptr i8, ptr %oobbuf.0105, i32 12
  %45 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base, align 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !146
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %49 = ptrtoint ptr %add.ptr54.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %add.ptr54.2, align 4
  %add.ptr54.3 = getelementptr i8, ptr %oobbuf.0105, i32 16
  %inc59 = add nuw nsw i32 %i.0106, 1
  %50 = ptrtoint ptr %mlcsubpages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mlcsubpages, align 4
  %cmp4 = icmp slt i32 %inc59, %51
  br i1 %cmp4, label %for.cond44.preheader.do.body_crit_edge, label %for.cond44.preheader.cleanup_crit_edge

for.cond44.preheader.cleanup_crit_edge:           ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond44.preheader.do.body_crit_edge:           ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.preheader
  %buf.addr.1101 = phi ptr [ %add.ptr41, %for.body33.for.body33_crit_edge ], [ %buf.addr.0107, %for.body33.preheader ]
  %j.0100 = phi i32 [ %inc42, %for.body33.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  %52 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base, align 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !146
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %56 = ptrtoint ptr %buf.addr.1101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %buf.addr.1101, align 4
  %add.ptr41 = getelementptr i8, ptr %buf.addr.1101, i32 4
  %inc42 = add nuw nsw i32 %j.0100, 1
  %exitcond.not = icmp eq i32 %inc42, 128
  br i1 %exitcond.not, label %for.cond44.preheader, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

cleanup:                                          ; preds = %for.cond44.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_write_page_lowlevel(ptr noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %call3 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %mlcsubpages = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %mlcsubpages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mlcsubpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp476 = icmp sgt i32 %5, 0
  br i1 %cmp476, label %do.body.lr.ph, label %entry.for.end42_crit_edge

entry.for.end42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

do.body.lr.ph:                                    ; preds = %entry
  %io_base = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56
  br label %do.body

do.body:                                          ; preds = %lpc32xx_waitfunc_controller.exit.do.body_crit_edge, %do.body.lr.ph
  %i.079 = phi i32 [ 0, %do.body.lr.ph ], [ %inc41, %lpc32xx_waitfunc_controller.exit.do.body_crit_edge ]
  %oobbuf.078 = phi ptr [ %3, %do.body.lr.ph ], [ %add.ptr33, %lpc32xx_waitfunc_controller.exit.do.body_crit_edge ]
  %buf.addr.077 = phi ptr [ %buf, %do.body.lr.ph ], [ %add.ptr20, %lpc32xx_waitfunc_controller.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 65544
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !133
  br label %do.body15

do.body15:                                        ; preds = %do.body15.do.body15_crit_edge, %do.body
  %j.075 = phi i32 [ 0, %do.body ], [ %inc, %do.body15.do.body15_crit_edge ]
  %buf.addr.174 = phi ptr [ %buf.addr.077, %do.body ], [ %add.ptr20, %do.body15.do.body15_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %buf.addr.174 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf.addr.174, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !124
  %add.ptr20 = getelementptr i8, ptr %buf.addr.174, i32 4
  %inc = add nuw nsw i32 %j.075, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body22, label %do.body15.do.body15_crit_edge

do.body15.do.body15_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

do.body22:                                        ; preds = %do.body15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %oobbuf.078 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobbuf.078, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !124
  %add.ptr27 = getelementptr i8, ptr %oobbuf.078, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr27, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #7, !srcloc !128
  %add.ptr33 = getelementptr i8, ptr %oobbuf.078, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base, align 8
  %add.ptr38 = getelementptr i8, ptr %24, i32 65552
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 0) #7, !srcloc !133
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %io_base.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 65608
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body22.lpc32xx_waitfunc_controller.exit_crit_edge

do.body22.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

if.end.i:                                         ; preds = %do.body22
  %comp_controller.i = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %26, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %comp_controller.i) #7
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i, align 8
  %add.ptr72.i = getelementptr i8, ptr %32, i32 65608
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not3.i = icmp eq i8 %34, 0
  br i1 %tobool13.not3.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.lpc32xx_waitfunc_controller.exit_crit_edge

if.end.i.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.end26.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc32xx_write_page_lowlevel, %if.then20.i)) #7
          to label %do.end26.i [label %if.then20.i], !srcloc !137

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, ptr noundef %dev.i, ptr noundef nonnull @.str.30) #7
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !143
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %36, i32 65608
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #7, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %38 = and i8 %37, 2
  %tobool13.not.i = icmp eq i8 %38, 0
  br i1 %tobool13.not.i, label %do.end26.i.do.body.i_crit_edge, label %do.end26.i.lpc32xx_waitfunc_controller.exit_crit_edge

do.end26.i.lpc32xx_waitfunc_controller.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lpc32xx_waitfunc_controller.exit

do.end26.i.do.body.i_crit_edge:                   ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

lpc32xx_waitfunc_controller.exit:                 ; preds = %do.end26.i.lpc32xx_waitfunc_controller.exit_crit_edge, %if.end.i.lpc32xx_waitfunc_controller.exit_crit_edge, %do.body22.lpc32xx_waitfunc_controller.exit_crit_edge
  %inc41 = add nuw nsw i32 %i.079, 1
  %39 = ptrtoint ptr %mlcsubpages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mlcsubpages, align 4
  %cmp4 = icmp slt i32 %inc41, %40
  br i1 %cmp4, label %lpc32xx_waitfunc_controller.exit.do.body_crit_edge, label %lpc32xx_waitfunc_controller.exit.for.end42_crit_edge

lpc32xx_waitfunc_controller.exit.for.end42_crit_edge: ; preds = %lpc32xx_waitfunc_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42

lpc32xx_waitfunc_controller.exit.do.body_crit_edge: ; preds = %lpc32xx_waitfunc_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end42:                                        ; preds = %lpc32xx_waitfunc_controller.exit.for.end42_crit_edge, %entry.for.end42_crit_edge
  %call43 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #7
  ret i32 %call43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_write_oob(ptr nocapture noundef readnone %chip, i32 noundef %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dummy_buf = getelementptr inbounds %struct.lpc32xx_nand_host, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %dummy_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dummy_buf, align 8
  %call1 = tail call i32 @lpc32xx_read_page(ptr noundef %chip, ptr noundef %3, i32 noundef 1, i32 noundef %page)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = shl i32 %section, 4
  %mul = add i32 %add, 16
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %sub = sub i32 %mul, %3
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %oobregion, align 4
  %5 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %section, 4
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %oobregion, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes, align 4
  %sub = sub i32 16, %4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !95, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_lpc32xx_mlc__251_905_lpc32xx_nand_driver_init6, !1, !"__initcall__kmod_lpc32xx_mlc__251_905_lpc32xx_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 905, i32 1}
!2 = !{ptr @__exitcall_lpc32xx_nand_driver_exit, !1, !"__exitcall_lpc32xx_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file252, !4, !"__UNIQUE_ID_file252", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 907, i32 1}
!5 = !{ptr @__UNIQUE_ID_license253, !4, !"__UNIQUE_ID_license253", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author254, !7, !"__UNIQUE_ID_author254", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 908, i32 1}
!8 = !{ptr @__UNIQUE_ID_description255, !9, !"__UNIQUE_ID_description255", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 909, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 900, i32 11}
!12 = !{ptr @lpc32xx_nand_driver, !13, !"lpc32xx_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 894, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 712, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lpc32xx_nand_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpc32xx_nand_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 719, i32 38}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 720, i32 3}
!26 = !{ptr @lpc32xx_nand_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc32xx_nand_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 735, i32 3}
!30 = !{ptr @lpc32xx_nand_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpc32xx_nand_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 784, i32 3}
!34 = !{ptr @lpc32xx_nand_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lpc32xx_nand_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 624, i32 27}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 625, i32 27}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 626, i32 27}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 627, i32 27}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 628, i32 27}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 629, i32 27}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 630, i32 27}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 635, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @lpc32xx_parse_dt._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @lpc32xx_parse_dt._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 639, i32 40}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 332, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @lpc32xx_waitfunc_nand.__UNIQUE_ID_ddebug249, !60, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 352, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @lpc32xx_waitfunc_controller.__UNIQUE_ID_ddebug250, !64, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!67 = !{ptr @lpc32xx_nand_bbt, !68, !"lpc32xx_nand_bbt", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 163, i32 30}
!69 = !{ptr @lpc32xx_nand_bbt_mirror, !70, !"lpc32xx_nand_bbt_mirror", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 169, i32 30}
!71 = distinct !{null, !72, !"use_dma", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 229, i32 12}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 577, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lpc32xx_dma_setup._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @lpc32xx_dma_setup._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 583, i32 19}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 586, i32 3}
!82 = !{ptr @lpc32xx_dma_setup._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @lpc32xx_dma_setup._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 605, i32 3}
!86 = !{ptr @lpc32xx_dma_setup._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @lpc32xx_dma_setup._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @init_completion.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/completion.h", i32 87, i32 2}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @lpc32xx_nand_controller_ops, !92, !"lpc32xx_nand_controller_ops", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 678, i32 41}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 468, i32 4}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lpc32xx_read_page._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @lpc32xx_read_page._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 405, i32 3}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lpc32xx_xmit_dma._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @lpc32xx_xmit_dma._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 411, i32 3}
!106 = !{ptr @lpc32xx_xmit_dma._entry.46, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @lpc32xx_xmit_dma._entry_ptr.48, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @lpc32xx_ooblayout_ops, !109, !"lpc32xx_ooblayout_ops", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 158, i32 39}
!110 = !{ptr @lpc32xx_nand_match, !111, !"lpc32xx_nand_match", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/lpc32xx_mlc.c", i32 888, i32 34}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 5736050}
!122 = !{i64 2154784120}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 5735852}
!125 = !{i64 2154754994}
!126 = !{i64 2154750096}
!127 = !{i64 2154751098}
!128 = !{i64 5735232}
!129 = !{i64 2154751560}
!130 = !{i64 2154752005}
!131 = !{i64 2154752827}
!132 = !{i64 2154753296}
!133 = !{i64 5735655}
!134 = !{i64 2154753639}
!135 = !{i64 2154755604}
!136 = !{i64 2154755891}
!137 = !{i64 2148224399, i64 2148224404, i64 2148224417, i64 2148224461, i64 2148224495, i64 2148224516}
!138 = !{i64 2154758454}
!139 = !{i64 2154758296}
!140 = !{i64 2154758737}
!141 = !{i64 2154759024}
!142 = !{i64 2154761641}
!143 = !{i64 2154761483}
!144 = !{i64 2154755308}
!145 = !{i64 2154765481}
!146 = !{i64 5736270}
!147 = !{i64 2154766094}
!148 = !{i64 2154768809}
!149 = !{i64 2154768259}
!150 = !{i64 2154769073}
!151 = !{i64 2154769404}
!152 = !{i64 2154769910}
!153 = !{i64 2154770425}
!154 = !{i64 2154770921}
