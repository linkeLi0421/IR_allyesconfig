; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/sh_flctl.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/sh_flctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.flctl_soc_config = type { i32, i8 }
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
%struct.sh_flctl = type { %struct.nand_chip, ptr, %struct.dev_pm_qos_request, ptr, i32, [2112 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, %struct.completion }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.81, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.75 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.75 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.81 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.70, ptr }
%union.anon.70 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.sh_flctl_platform_data = type { ptr, i32, i32, i8, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_sh_flctl__253_1227_flctl_driver_init6 = internal global ptr @flctl_driver_init, section ".initcall6.init", align 4
@flctl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @flctl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_flctl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_flctl_driver_exit = internal global ptr @flctl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file254 = internal constant [44 x i8] c"sh_flctl.file=drivers/mtd/nand/raw/sh_flctl\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [24 x i8] c"sh_flctl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [34 x i8] c"sh_flctl.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [41 x i8] c"sh_flctl.description=SuperH FLCTL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [33 x i8] c"sh_flctl.alias=platform:sh_flctl\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flste\00", [26 x i8] zeroinitializer }, align 32
@flctl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request interrupt failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flctl_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/nand/raw/sh_flctl.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@flctl_probe._entry_ptr = internal global ptr @flctl_probe._entry, section ".printk_index", align 4
@flctl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no setup data defined\0A\00", [41 x i8] zeroinitializer }, align 32
@flctl_probe._entry_ptr.8 = internal global ptr @flctl_probe._entry.6, section ".printk_index", align 4
@flctl_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @flctl_chip_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@flctl_handle_flste._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1062, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flste irq: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flctl_handle_flste\00", [45 x i8] zeroinitializer }, align 32
@flctl_handle_flste._entry_ptr = internal global ptr @flctl_handle_flste._entry, section ".printk_index", align 4
@flctl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: no OF configuration attached\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flctl_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@flctl_parse_dt._entry_ptr = internal global ptr @flctl_parse_dt._entry, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@flctl_select_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 944, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PM QoS request failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flctl_select_chip\00", [46 x i8] zeroinitializer }, align 32
@flctl_select_chip._entry_ptr = internal global ptr @flctl_select_chip._entry, section ".printk_index", align 4
@flctl_cmdfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Invalid address !?\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flctl_cmdfunc\00", [18 x i8] zeroinitializer }, align 32
@flctl_cmdfunc._entry_ptr = internal global ptr @flctl_cmdfunc._entry, section ".printk_index", align 4
@execmd_read_page_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 649, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"applied ecc on page 0x%x\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"execmd_read_page_sector\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@execmd_read_page_sector._entry_ptr = internal global ptr @execmd_read_page_sector._entry, section ".printk_index", align 4
@execmd_read_page_sector._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.3, i32 655, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"page 0x%x contains corrupted data\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@execmd_read_page_sector._entry_ptr.24 = internal global ptr @execmd_read_page_sector._entry.21, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_recfifo_ready.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sh_flctl\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait_recfifo_ready\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"reading empty sector %d, ecc error ignored\0A\00", [52 x i8] zeroinitializer }, align 32
@timeout_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Timeout occurred in %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timeout_error\00", [18 x i8] zeroinitializer }, align 32
@timeout_error._entry_ptr = internal global ptr @timeout_error._entry, section ".printk_index", align 4
@flctl_dma_fifo0_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 414, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DMA submit failed, falling back to PIO\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flctl_dma_fifo0_transfer\00", [39 x i8] zeroinitializer }, align 32
@flctl_dma_fifo0_transfer._entry_ptr = internal global ptr @flctl_dma_fifo0_transfer._entry, section ".printk_index", align 4
@flctl_dma_fifo0_transfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 423, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA failed, falling back to PIO\0A\00", [63 x i8] zeroinitializer }, align 32
@flctl_dma_fifo0_transfer._entry_ptr.34 = internal global ptr @flctl_dma_fifo0_transfer._entry.32, section ".printk_index", align 4
@flctl_dma_fifo0_transfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wait_for_completion_timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@flctl_dma_fifo0_transfer._entry_ptr.37 = internal global ptr @flctl_dma_fifo0_transfer._entry.35, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.wait_rfifo_ready = private unnamed_addr constant [17 x i8] c"wait_rfifo_ready\00", align 1
@__func__.wait_completion = private unnamed_addr constant [16 x i8] c"wait_completion\00", align 1
@__func__.wait_wecfifo_ready = private unnamed_addr constant [19 x i8] c"wait_wecfifo_ready\00", align 1
@__func__.wait_wfifo_ready = private unnamed_addr constant [17 x i8] c"wait_wfifo_ready\00", align 1
@flctl_setup_dma.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"flctl_setup_dma\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: TX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@flctl_setup_dma.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RX: got channel %p\0A\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@flctl_4secc_oob_smallpage_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @flctl_4secc_ooblayout_sp_ecc, ptr @flctl_4secc_ooblayout_sp_free }, [24 x i8] zeroinitializer }, align 32
@flctl_4secc_smallpage = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 0, [8 x i32] zeroinitializer, i32 11, i32 0, [8 x i8] zeroinitializer, i32 1, i32 0, i32 0, ptr @scan_ff_pattern }, [60 x i8] zeroinitializer }, align 32
@flctl_4secc_oob_largepage_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @flctl_4secc_ooblayout_lp_ecc, ptr @flctl_4secc_ooblayout_lp_free }, [24 x i8] zeroinitializer }, align 32
@flctl_4secc_largepage = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 0, [8 x i32] zeroinitializer, i32 0, i32 0, [8 x i8] zeroinitializer, i32 2, i32 0, i32 0, ptr @scan_ff_pattern }, [60 x i8] zeroinitializer }, align 32
@scan_ff_pattern = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\FF", [30 x i8] zeroinitializer }, align 32
@of_flctl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,shmobile-flctl-sh7372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @flctl_sh7372_config }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@flctl_sh7372_config = internal global { %struct.flctl_soc_config, [24 x i8] } { %struct.flctl_soc_config { i32 1180161, i8 -64 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.44 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 5, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 255]
@__sancov_gen_cov_switch_values.45 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 5, i64 16, i64 80, i64 96, i64 112, i64 128, i64 144, i64 255]
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"flctl_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1219, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1136, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1138, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1148, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"flctl_nand_controller_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1054, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1062, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1094, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 464, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 943, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 869, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 648, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 653, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 326, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 128, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 413, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 422, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 434, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 326, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 186, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 202, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 87, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [30 x i8] c"flctl_4secc_oob_smallpage_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 58, i32 39 }
@___asan_gen_.202 = private unnamed_addr constant [22 x i8] c"flctl_4secc_smallpage\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 103, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"flctl_4secc_oob_largepage_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 96, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"flctl_4secc_largepage\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 109, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"scan_ff_pattern\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 101, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"of_flctl_match\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1080, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c"flctl_sh7372_config\00", align 1
@___asan_gen_.218 = private constant [35 x i8] c"../drivers/mtd/nand/raw/sh_flctl.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1074, i32 32 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_flctl_driver_exit, ptr @__initcall__kmod_sh_flctl__253_1227_flctl_driver_init6, ptr @execmd_read_page_sector._entry, ptr @execmd_read_page_sector._entry.21, ptr @execmd_read_page_sector._entry_ptr, ptr @execmd_read_page_sector._entry_ptr.24, ptr @flctl_cmdfunc._entry, ptr @flctl_cmdfunc._entry_ptr, ptr @flctl_dma_fifo0_transfer._entry, ptr @flctl_dma_fifo0_transfer._entry.32, ptr @flctl_dma_fifo0_transfer._entry.35, ptr @flctl_dma_fifo0_transfer._entry_ptr, ptr @flctl_dma_fifo0_transfer._entry_ptr.34, ptr @flctl_dma_fifo0_transfer._entry_ptr.37, ptr @flctl_driver_exit, ptr @flctl_handle_flste._entry, ptr @flctl_handle_flste._entry_ptr, ptr @flctl_parse_dt._entry, ptr @flctl_parse_dt._entry_ptr, ptr @flctl_probe._entry, ptr @flctl_probe._entry.6, ptr @flctl_probe._entry_ptr, ptr @flctl_probe._entry_ptr.8, ptr @flctl_select_chip._entry, ptr @flctl_select_chip._entry_ptr, ptr @timeout_error._entry, ptr @timeout_error._entry_ptr, ptr @flctl_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @flctl_nand_controller_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @init_completion.__key, ptr @.str.43, ptr @flctl_4secc_oob_smallpage_ops, ptr @flctl_4secc_smallpage, ptr @flctl_4secc_oob_largepage_ops, ptr @flctl_4secc_largepage, ptr @scan_ff_pattern, ptr @of_flctl_match, ptr @flctl_sh7372_config], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_handle_flste._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_select_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_cmdfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @execmd_read_page_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @execmd_read_page_sector._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_dma_fifo0_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_dma_fifo0_transfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_dma_fifo0_transfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_4secc_oob_smallpage_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_4secc_smallpage to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_4secc_oob_largepage_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_4secc_largepage to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_ff_pattern to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flctl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flctl_sh7372_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @flctl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @flctl_driver, ptr noundef nonnull @flctl_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @flctl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @flctl_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flctl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4440, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #9
  %reg = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %reg, align 8
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
  %add = add i32 %3, 36
  %fifo = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %fifo, align 4
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call.i148 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call10, ptr noundef nonnull @flctl_handle_flste, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool15.not = icmp eq i32 %call.i148, 0
  br i1 %tobool15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool20.not = icmp eq ptr %6, null
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end18
  %call.i149 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i149, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %do.end31

if.end.i:                                         ; preds = %if.then21
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #9
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.do.end31_crit_edge, label %if.end26.thread157

if.end.i.do.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

if.end26.thread157:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i149 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i149, align 4
  %flcmncr_val5.i = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %flcmncr_val5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flcmncr_val5.i, align 4
  %has_hwecc.i = getelementptr inbounds %struct.flctl_soc_config, ptr %call.i149, i32 0, i32 1
  %10 = ptrtoint ptr %has_hwecc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %has_hwecc.i, align 4
  %has_hwecc6.i = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %has_hwecc6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load7.i = load i8, ptr %has_hwecc6.i, align 4
  %bf.clear.i = and i8 %bf.load7.i, 63
  %bf.set.i = and i8 %bf.load.i, -64
  %bf.set17.i = or i8 %bf.clear.i, %bf.set.i
  store i8 %bf.set17.i, ptr %has_hwecc6.i, align 4
  br label %if.end33

if.end26:                                         ; preds = %if.end18
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 8
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %if.end26.do.end31_crit_edge, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end26.do.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %if.end26.do.end31_crit_edge, %if.end.i.do.end31_crit_edge, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end26.if.end33_crit_edge, %if.end26.thread157
  %pdata.0160 = phi ptr [ %call.i.i, %if.end26.thread157 ], [ %13, %if.end26.if.end33_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %17 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end33.nand_set_flash_node.exit_crit_edge

if.end33.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i150 = tail call i32 @of_property_read_string(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef %name.i.i) #9
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end33.nand_set_flash_node.exit_crit_edge
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent, align 8
  %pdev39 = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %pdev39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %pdev39, align 8
  %has_hwecc = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %pdata.0160, i32 0, i32 3
  %22 = ptrtoint ptr %has_hwecc to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %has_hwecc, align 4
  %hwecc = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %hwecc to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load40 = load i8, ptr %hwecc, align 8
  %24 = lshr i8 %bf.load, 1
  %bf.shl = and i8 %24, 64
  %bf.clear = and i8 %bf.load40, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %hwecc, align 8
  %bf.load41 = load i8, ptr %has_hwecc, align 4
  %25 = lshr i8 %bf.load41, 1
  %bf.shl47 = and i8 %25, 32
  %bf.clear48 = and i8 %bf.set, -33
  %bf.set49 = or i8 %bf.shl47, %bf.clear48
  store i8 %bf.set49, ptr %hwecc, align 8
  %flcmncr_val = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %pdata.0160, i32 0, i32 2
  %26 = ptrtoint ptr %flcmncr_val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flcmncr_val, align 4
  %flcmncr_base = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %flcmncr_base to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flcmncr_base, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool56.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool56.not, i32 16, i32 528
  %flintdmacr_base = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %flintdmacr_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %flintdmacr_base, align 4
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 15
  %30 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 20, ptr %chip_delay, align 4
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @flctl_read_byte, ptr %read_byte, align 4
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 5
  %32 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @flctl_write_buf, ptr %write_buf, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 6
  %33 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @flctl_read_buf, ptr %read_buf, align 8
  %select_chip = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %select_chip to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @flctl_select_chip, ptr %select_chip, align 8
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @flctl_cmdfunc, ptr %cmdfunc, align 8
  %set_features = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 13
  %36 = ptrtoint ptr %set_features to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nand_get_set_features_notsupp, ptr %set_features, align 4
  %get_features = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 14
  %37 = ptrtoint ptr %get_features to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nand_get_set_features_notsupp, ptr %get_features, align 8
  %38 = ptrtoint ptr %flcmncr_val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flcmncr_val, align 4
  %and = and i32 %39, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %nand_set_flash_node.exit.if.end67_crit_edge, label %if.then66

nand_set_flash_node.exit.if.end67_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then66:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  %options = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %options, align 8
  %or = or i32 %41, 2
  store i32 %or, ptr %options, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %nand_set_flash_node.exit.if.end67_crit_edge
  %options68 = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %42 = ptrtoint ptr %options68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %options68, align 8
  %or69 = or i32 %43, 50331648
  store i32 %or69, ptr %options68, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i151 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #9
  tail call fastcc void @flctl_setup_dma(ptr noundef nonnull %call.i)
  %ops = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 16, i32 1
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @flctl_nand_controller_ops, ptr %ops, align 4
  %call.i152 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool75.not = icmp eq i32 %call.i152, 0
  br i1 %tobool75.not, label %if.end77, label %if.end67.err_chip_crit_edge

if.end67.err_chip_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_chip

if.end77:                                         ; preds = %if.end67
  %45 = ptrtoint ptr %pdata.0160 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata.0160, align 4
  %nr_parts = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %pdata.0160, i32 0, i32 1
  %47 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_parts, align 4
  %call78 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef %46, i32 noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.cleanup_crit_edge, label %cleanup_nand

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nand_cleanup(ptr noundef nonnull %call.i) #9
  br label %err_chip

err_chip:                                         ; preds = %cleanup_nand, %if.end67.err_chip_crit_edge
  %ret.0 = phi i32 [ %call.i152, %if.end67.err_chip_crit_edge ], [ %call78, %cleanup_nand ]
  %chan_fifo0_rx.i = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 17
  %49 = ptrtoint ptr %chan_fifo0_rx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan_fifo0_rx.i, align 4
  %tobool.not.i153 = icmp eq ptr %50, null
  br i1 %tobool.not.i153, label %err_chip.if.end.i154_crit_edge, label %if.then.i

err_chip.if.end.i154_crit_edge:                   ; preds = %err_chip
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i154

if.then.i:                                        ; preds = %err_chip
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %50) #9
  %51 = ptrtoint ptr %chan_fifo0_rx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %chan_fifo0_rx.i, align 4
  br label %if.end.i154

if.end.i154:                                      ; preds = %if.then.i, %err_chip.if.end.i154_crit_edge
  %chan_fifo0_tx.i = getelementptr inbounds %struct.sh_flctl, ptr %call.i, i32 0, i32 18
  %52 = ptrtoint ptr %chan_fifo0_tx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_fifo0_tx.i, align 8
  %tobool3.not.i = icmp eq ptr %53, null
  br i1 %tobool3.not.i, label %if.end.i154.flctl_release_dma.exit_crit_edge, label %if.then4.i

if.end.i154.flctl_release_dma.exit_crit_edge:     ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %flctl_release_dma.exit

if.then4.i:                                       ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %53) #9
  %54 = ptrtoint ptr %chan_fifo0_tx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %chan_fifo0_tx.i, align 8
  br label %flctl_release_dma.exit

flctl_release_dma.exit:                           ; preds = %if.then4.i, %if.end.i154.flctl_release_dma.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %flctl_release_dma.exit, %if.end77.cleanup_crit_edge, %do.end31, %do.end, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %call.i148, %do.end ], [ %ret.0, %flctl_release_dma.exit ], [ -22, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flctl_handle_flste(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.sh_flctl, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %reg = getelementptr inbounds %struct.sh_flctl, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !131
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %flintdmacr_base = getelementptr inbounds %struct.sh_flctl, ptr %dev_id, i32 0, i32 15
  %6 = ptrtoint ptr %flintdmacr_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flintdmacr_base, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 8
  %add.ptr6 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %8) #9, !srcloc !134
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @flctl_read_byte(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %inc = add i32 %1, 1
  store i32 %inc, ptr %index, align 4
  ret i8 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @flctl_write_buf(ptr nocapture noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %1
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %len)
  %3 = load i32, ptr %index, align 4
  %add = add i32 %3, %len
  store i32 %add, ptr %index, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @flctl_read_buf(ptr nocapture noundef %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %1
  %2 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %len)
  %3 = load i32, ptr %index, align 4
  %add = add i32 %3, %len
  store i32 %add, ptr %index, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flctl_select_chip(ptr noundef %chip, i32 noundef %chipnr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %chipnr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %chipnr, label %do.body54 [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %flcmncr_base = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %1 = ptrtoint ptr %flcmncr_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flcmncr_base, align 8
  %and = and i32 %2, -9
  store i32 %and, ptr %flcmncr_base, align 8
  %pdev = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %flcmncr_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flcmncr_base, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %reg = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #9, !srcloc !134
  %qos_request = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %10 = ptrtoint ptr %qos_request to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %qos_request, align 8
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.then

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %pm_qos = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 2
  %call4 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %pm_qos) #9
  %12 = ptrtoint ptr %qos_request to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load6 = load i8, ptr %qos_request, align 8
  %bf.clear7 = and i8 %bf.load6, -17
  store i8 %bf.clear7, ptr %qos_request, align 8
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  %flcmncr_base12 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %13 = ptrtoint ptr %flcmncr_base12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flcmncr_base12, align 8
  %or = or i32 %14, 8
  store i32 %or, ptr %flcmncr_base12, align 8
  %qos_request13 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %15 = ptrtoint ptr %qos_request13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load14 = load i8, ptr %qos_request13, align 8
  %16 = and i8 %bf.load14, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  br i1 %tobool18.not, label %if.then19, label %sw.bb11.if.end35_crit_edge

sw.bb11.if.end35_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then19:                                        ; preds = %sw.bb11
  %pdev20 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 1
  %17 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev20, align 8
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %pm_qos22 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 2
  %call23 = tail call i32 @dev_pm_qos_add_request(ptr noundef %dev21, ptr noundef %pm_qos22, i32 noundef 1, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %do.end27, label %if.then19.if.end30_crit_edge

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.end27:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev20, align 8
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.14, i32 noundef %call23) #12
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.then19.if.end30_crit_edge
  %21 = ptrtoint ptr %qos_request13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load32 = load i8, ptr %qos_request13, align 8
  %bf.set34 = or i8 %bf.load32, 16
  store i8 %bf.set34, ptr %qos_request13, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %sw.bb11.if.end35_crit_edge
  %22 = ptrtoint ptr %qos_request13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load36 = load i8, ptr %qos_request13, align 8
  %23 = and i8 %bf.load36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %if.end35.sw.epilog_crit_edge, label %if.then41

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %pdev42 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 1
  %24 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev42, align 8
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %call.i79 = tail call i32 @__pm_runtime_resume(ptr noundef %dev43, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %reg48 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %26 = ptrtoint ptr %reg48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg48, align 8
  %add.ptr49 = getelementptr i8, ptr %27, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #9, !srcloc !134
  br label %sw.epilog.sink.split

do.body54:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/sh_flctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 955, 0\0A.popsection", ""() #9, !srcloc !137
  unreachable

sw.epilog.sink.split:                             ; preds = %if.then41, %if.then, %sw.bb.sw.epilog.sink.split_crit_edge
  %pdev42.sink = phi ptr [ %pdev42, %if.then41 ], [ %pdev, %if.then ], [ %pdev, %sw.bb.sw.epilog.sink.split_crit_edge ]
  %28 = ptrtoint ptr %pdev42.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev42.sink, align 8
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %call.i80 = tail call i32 @__pm_runtime_idle(ptr noundef %dev51, i32 noundef 4) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end35.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flctl_cmdfunc(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %read_bytes = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %read_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %command)
  %cond = icmp eq i32 %command, 16
  br i1 %cond, label %sw.bb95, label %if.then

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 7
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %index, align 4
  %4 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %command, label %if.then.runtime_exit_crit_edge [
    i32 1, label %if.then.sw.bb_crit_edge
    i32 0, label %if.then.sw.bb_crit_edge759
    i32 80, label %sw.bb18
    i32 5, label %sw.bb38
    i32 144, label %sw.bb60
    i32 96, label %sw.bb70
    i32 208, label %sw.bb71
    i32 128, label %sw.bb75
    i32 255, label %sw.bb151
    i32 112, label %sw.bb143
  ]

if.then.sw.bb_crit_edge759:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.runtime_exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %runtime_exit

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge759
  %hwecc = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %5 = ptrtoint ptr %hwecc to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %hwecc, align 8
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %cond.i = select i1 %tobool8.not, i32 1, i32 4
  %flcmncr_base.i.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %7 = ptrtoint ptr %flcmncr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flcmncr_base.i.i, align 8
  %and.i.i = and i32 %8, -786433
  %or.i.i = or i32 %and.i.i, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not62.i.i = icmp slt i8 %bf.load, 0
  %flcmncr_val.0.i.i = select i1 %tobool.not62.i.i, i32 %or.i.i, i32 %and.i.i
  %rw_ADRCNT.i.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %9 = ptrtoint ptr %rw_ADRCNT.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rw_ADRCNT.i.i, align 4
  %options.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %11 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options.i.i, align 8
  %and5.i.i = shl i32 %12, 18
  %13 = and i32 %and5.i.i, 524288
  %14 = or i32 %13, %flcmncr_val.0.i.i
  %or28.i.i = or i32 %10, 34668544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %reg.i.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i) #9
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 8
  %add.ptr33.i.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %18) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 8
  %add.ptr38.i.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 3145728) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %26 = or i32 %25, 278528
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !131
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  %or16.i = or i32 %32, %cond.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #9
  %34 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %33) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %shl.i = shl i32 %page_addr, 2
  %36 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %37 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %36) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %flintdmacr_base.i.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 15
  %39 = ptrtoint ptr %flintdmacr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flintdmacr_base.i.i, align 4
  %or1.i.i = or i32 %40, 786432
  %41 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #9
  %42 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %flintdmacr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flintdmacr_base.i.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %47 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg.i.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %46) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.i78.i = getelementptr i8, ptr %50, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i78.i, i8 1) #9, !srcloc !149
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3
  %sector.084.i = phi i32 [ 0, %if.then3 ], [ %inc37.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %sector.084.i, 9
  tail call fastcc void @read_fiforeg(ptr noundef %chip, i32 noundef 512, i32 noundef %mul.i) #9
  %51 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %writesize.i, align 4
  %call.i.i = tail call fastcc i32 @wait_recfifo_ready(ptr noundef %chip, i32 noundef %sector.084.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %do.end32.i, label %read_ecfiforeg.exit.i

read_ecfiforeg.exit.i:                            ; preds = %for.body.i
  %mul24.i = shl i32 %sector.084.i, 4
  %add.i = add i32 %52, %mul24.i
  %arrayidx.i = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %add.i
  %53 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.i80.i = getelementptr i8, ptr %54, i32 40
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #9, !srcloc !131
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx.i, align 4
  %58 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.1.i.i = getelementptr i8, ptr %59, i32 40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #9, !srcloc !131
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %arrayidx.1.i.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %62 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.1.i.i, align 4
  %63 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.2.i.i = getelementptr i8, ptr %64, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i) #9, !srcloc !131
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %arrayidx.2.i.i = getelementptr i32, ptr %arrayidx.i, i32 2
  %67 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx.2.i.i, align 4
  %68 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.3.i.i = getelementptr i8, ptr %69, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i.i) #9, !srcloc !131
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %arrayidx.3.i.i = getelementptr i32, ptr %arrayidx.i, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cond83.i = icmp eq i32 %call.i.i, 1
  br i1 %cond83.i, label %do.end28.i, label %read_ecfiforeg.exit.i.for.inc.i_crit_edge

read_ecfiforeg.exit.i.for.inc.i_crit_edge:        ; preds = %read_ecfiforeg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end28.i:                                       ; preds = %read_ecfiforeg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %page_addr) #12
  br label %for.inc.sink.split.i

do.end32.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 8
  %dev34.i = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev34.i, ptr noundef nonnull @.str.22, i32 noundef %page_addr) #12
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %do.end32.i, %do.end28.i
  %ecc_stats.sink86.i = phi ptr [ %ecc_stats.i, %do.end28.i ], [ %failed.i, %do.end32.i ]
  %77 = ptrtoint ptr %ecc_stats.sink86.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ecc_stats.sink86.i, align 4
  %inc.i = add i32 %78, 1
  store i32 %inc.i, ptr %ecc_stats.sink86.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %read_ecfiforeg.exit.i.for.inc.i_crit_edge
  %inc37.i = add nuw nsw i32 %sector.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc37.i, %cond.i
  br i1 %exitcond.not.i, label %for.inc.i.while.body.i.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.while.body.i.i_crit_edge:               ; preds = %for.inc.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %for.inc.i.while.body.i.i_crit_edge
  %dec13.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 65535, %for.inc.i.while.body.i.i_crit_edge ]
  %79 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg.i.i, align 8
  %add.ptr.i82.i = getelementptr i8, ptr %80, i32 44
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i82.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %82 = and i8 %81, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool2.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %83 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg.i.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %84, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 0) #9, !srcloc !149
  br label %execmd_read_page_sector.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748) #9
  %dec.i.i = add nsw i32 %dec13.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec13.i.i, 0
  br i1 %tobool.not.i.i, label %while.end.i.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg.i.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %89, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 0) #9, !srcloc !149
  br label %execmd_read_page_sector.exit

execmd_read_page_sector.exit:                     ; preds = %while.end.i.i, %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg.i.i, align 8
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %93 = and i32 %92, -278529
  %94 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #9, !srcloc !134
  br label %runtime_exit

if.end4:                                          ; preds = %sw.bb
  %or = or i32 %command, 12288
  %command.sink = select i1 %tobool8.not, i32 %command, i32 %or
  tail call fastcc void @set_cmd_regs(ptr noundef %chip, i32 noundef %command, i32 noundef %command.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp1.not.i = icmp eq i32 %page_addr, -1
  br i1 %cmp1.not.i, label %if.end4.set_addr.exit_crit_edge, label %if.then2.i

if.end4.set_addr.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit

if.then2.i:                                       ; preds = %if.end4
  %96 = ptrtoint ptr %hwecc to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i307 = load i8, ptr %hwecc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i307)
  %tobool4.not.i = icmp sgt i8 %bf.load.i307, -1
  br i1 %tobool4.not.i, label %if.else17.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then2.i
  %and7.i = shl i32 %page_addr, 16
  %rw_ADRCNT.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %97 = ptrtoint ptr %rw_ADRCNT.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rw_ADRCNT.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %98)
  %cmp12.i = icmp eq i32 %98, -2147483648
  br i1 %cmp12.i, label %if.then13.i, label %if.then5.i.set_addr.exit_crit_edge

if.then5.i.set_addr.exit_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit

if.then13.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %99 = shl i32 %page_addr, 8
  %and15.i = and i32 %99, -16777216
  %reg.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %100 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg.i, align 8
  %add.ptr.i = getelementptr i8, ptr %101, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and15.i) #9, !srcloc !134
  br label %set_addr.exit

if.else17.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %and18.i = shl i32 %page_addr, 8
  br label %set_addr.exit

set_addr.exit:                                    ; preds = %if.else17.i, %if.then13.i, %if.then5.i.set_addr.exit_crit_edge, %if.end4.set_addr.exit_crit_edge
  %addr.0.i = phi i32 [ %and7.i, %if.then13.i ], [ %and7.i, %if.then5.i.set_addr.exit_crit_edge ], [ %and18.i, %if.else17.i ], [ 0, %if.end4.set_addr.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %102 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i) #9
  %reg35.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %103 = ptrtoint ptr %reg35.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg35.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %104, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %102) #9, !srcloc !134
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %105 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %107 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %oobsize, align 4
  %add = add i32 %108, %106
  %109 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add, ptr %read_bytes, align 8
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %110 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %options, align 8
  %and = lshr i32 %111, 1
  %and.lobit = and i32 %and, 1
  %spec.select = ashr i32 %column, %and.lobit
  %112 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index, align 4
  %add17 = add i32 %spec.select, %113
  store i32 %add17, ptr %index, align 4
  br label %do.body157

sw.bb18:                                          ; preds = %if.then
  %hwecc19 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %114 = ptrtoint ptr %hwecc19 to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load20 = load i8, ptr %hwecc19, align 8
  %115 = and i8 %bf.load20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool24.not = icmp eq i8 %115, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool31.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %sw.bb18
  %cond.i311 = select i1 %tobool31.not, i32 1, i32 4
  %flcmncr_base.i.i312 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %116 = ptrtoint ptr %flcmncr_base.i.i312 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flcmncr_base.i.i312, align 8
  %and.i.i313 = and i32 %117, -786433
  %or.i.i314 = or i32 %and.i.i313, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load20)
  %tobool.not62.i.i315 = icmp slt i8 %bf.load20, 0
  %flcmncr_val.0.i.i316 = select i1 %tobool.not62.i.i315, i32 %or.i.i314, i32 %and.i.i313
  %rw_ADRCNT.i.i317 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %118 = ptrtoint ptr %rw_ADRCNT.i.i317 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rw_ADRCNT.i.i317, align 4
  %options.i.i318 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %120 = ptrtoint ptr %options.i.i318 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %options.i.i318, align 8
  %and5.i.i319 = shl i32 %121, 18
  %122 = and i32 %and5.i.i319, 524288
  %123 = or i32 %122, %flcmncr_val.0.i.i316
  %or28.i.i320 = or i32 %119, 34668544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #9
  %reg.i.i321 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %125 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg.i.i321, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %127 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i320) #9
  %128 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr33.i.i322 = getelementptr i8, ptr %129, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i322, i32 %127) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %130 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr38.i.i323 = getelementptr i8, ptr %131, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i323, i32 3145728) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %flintdmacr_base.i.i324 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 15
  %132 = ptrtoint ptr %flintdmacr_base.i.i324 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flintdmacr_base.i.i324, align 4
  %or1.i.i325 = or i32 %133, 786432
  %134 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i325) #9
  %135 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i.i326 = getelementptr i8, ptr %136, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i326, i32 %134) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %137 = ptrtoint ptr %flintdmacr_base.i.i324 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flintdmacr_base.i.i324, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #9
  %140 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr6.i.i327 = getelementptr i8, ptr %141, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i327, i32 %139) #9, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp1.not.i.i = icmp eq i32 %page_addr, -1
  %and7.i.i = shl i32 %page_addr, 16
  %142 = shl i32 %page_addr, 8
  %and15.i.i = and i32 %142, -16777216
  br label %for.body.i328

for.body.i328:                                    ; preds = %wait_completion.exit.i.for.body.i328_crit_edge, %if.then25
  %i.027.i = phi i32 [ 0, %if.then25 ], [ %inc.i342, %wait_completion.exit.i.for.body.i328_crit_edge ]
  br i1 %cmp1.not.i.i, label %for.body.i328.set_addr.exit.i_crit_edge, label %if.then2.i.i

for.body.i328.set_addr.exit.i_crit_edge:          ; preds = %for.body.i328
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit.i

if.then2.i.i:                                     ; preds = %for.body.i328
  %mul.i329 = mul nuw nsw i32 %i.027.i, 528
  %add.i330 = add nuw nsw i32 %mul.i329, 512
  %143 = ptrtoint ptr %options.i.i318 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %options.i.i318, align 8
  %and.i14.i = lshr i32 %144, 1
  %and.lobit.i.i = and i32 %and.i14.i, 1
  %spec.select.i.i = lshr i32 %add.i330, %and.lobit.i.i
  %145 = ptrtoint ptr %hwecc19 to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load.i16.i = load i8, ptr %hwecc19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i16.i)
  %tobool4.not.i.i = icmp sgt i8 %bf.load.i16.i, -1
  br i1 %tobool4.not.i.i, label %if.else17.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  %and6.i.i = and i32 %spec.select.i.i, 4088
  %or11.i.i = or i32 %and6.i.i, %and7.i.i
  %146 = ptrtoint ptr %rw_ADRCNT.i.i317 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rw_ADRCNT.i.i317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %147)
  %cmp12.i.i = icmp eq i32 %147, -2147483648
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.then5.i.i.set_addr.exit.i_crit_edge

if.then5.i.i.set_addr.exit.i_crit_edge:           ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit.i

if.then13.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %148 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %149, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %and15.i.i) #9, !srcloc !134
  br label %set_addr.exit.i

if.else17.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or28.i20.i = or i32 %spec.select.i.i, %142
  br label %set_addr.exit.i

set_addr.exit.i:                                  ; preds = %if.else17.i.i, %if.then13.i.i, %if.then5.i.i.set_addr.exit.i_crit_edge, %for.body.i328.set_addr.exit.i_crit_edge
  %addr.0.i.i = phi i32 [ %or11.i.i, %if.then13.i.i ], [ %or11.i.i, %if.then5.i.i.set_addr.exit.i_crit_edge ], [ %or28.i20.i, %if.else17.i.i ], [ 0, %for.body.i328.set_addr.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %150 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i.i) #9
  %151 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr36.i.i = getelementptr i8, ptr %152, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %150) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %153 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i331 = getelementptr i8, ptr %154, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i331, i32 268435456) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %155 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %156, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i, i8 1) #9, !srcloc !149
  %mul1.i = shl i32 %i.027.i, 4
  %arrayidx.i.i = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %mul1.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %set_addr.exit.i
  %dec7.i.i.i = phi i32 [ 65535, %set_addr.exit.i ], [ %dec.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %157 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i31.i.i = getelementptr i8, ptr %158, i32 20
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %160 = and i32 %159, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool2.not.i.i.i = icmp eq i32 %160, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %while.body.i.i.i.wait_rfifo_ready.exit.i.i_crit_edge

while.body.i.i.i.wait_rfifo_ready.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_rfifo_ready.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748) #9
  %dec.i.i.i = add nsw i32 %dec7.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec7.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.end.i.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %163, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_rfifo_ready) #12
  br label %wait_rfifo_ready.exit.i.i

wait_rfifo_ready.exit.i.i:                        ; preds = %while.end.i.i.i, %while.body.i.i.i.wait_rfifo_ready.exit.i.i_crit_edge
  %164 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %165, i32 36
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #9, !srcloc !131
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %168 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %arrayidx.i.i, align 4
  br label %while.body.i.i.1.i

while.body.i.i.1.i:                               ; preds = %if.end.i.i.1.i.while.body.i.i.1.i_crit_edge, %wait_rfifo_ready.exit.i.i
  %dec7.i.i.1.i = phi i32 [ 65535, %wait_rfifo_ready.exit.i.i ], [ %dec.i.i.1.i, %if.end.i.i.1.i.while.body.i.i.1.i_crit_edge ]
  %169 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i31.i.1.i = getelementptr i8, ptr %170, i32 20
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.1.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %172 = and i32 %171, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool2.not.i.i.1.i = icmp eq i32 %172, 0
  br i1 %tobool2.not.i.i.1.i, label %if.end.i.i.1.i, label %while.body.i.i.1.i.wait_rfifo_ready.exit.i.1.i_crit_edge

while.body.i.i.1.i.wait_rfifo_ready.exit.i.1.i_crit_edge: ; preds = %while.body.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_rfifo_ready.exit.i.1.i

if.end.i.i.1.i:                                   ; preds = %while.body.i.i.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748) #9
  %dec.i.i.1.i = add nsw i32 %dec7.i.i.1.i, -1
  %tobool.not.i.i.1.i = icmp eq i32 %dec7.i.i.1.i, 0
  br i1 %tobool.not.i.i.1.i, label %while.end.i.i.1.i, label %if.end.i.i.1.i.while.body.i.i.1.i_crit_edge

if.end.i.i.1.i.while.body.i.i.1.i_crit_edge:      ; preds = %if.end.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.1.i

while.end.i.i.1.i:                                ; preds = %if.end.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.1.i = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.1.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_rfifo_ready) #12
  br label %wait_rfifo_ready.exit.i.1.i

wait_rfifo_ready.exit.i.1.i:                      ; preds = %while.end.i.i.1.i, %while.body.i.i.1.i.wait_rfifo_ready.exit.i.1.i_crit_edge
  %176 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i23.1.i = getelementptr i8, ptr %177, i32 36
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.1.i) #9, !srcloc !131
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %arrayidx6.i.1.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %180 = ptrtoint ptr %arrayidx6.i.1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx6.i.1.i, align 4
  br label %while.body.i.i.2.i

while.body.i.i.2.i:                               ; preds = %if.end.i.i.2.i.while.body.i.i.2.i_crit_edge, %wait_rfifo_ready.exit.i.1.i
  %dec7.i.i.2.i = phi i32 [ 65535, %wait_rfifo_ready.exit.i.1.i ], [ %dec.i.i.2.i, %if.end.i.i.2.i.while.body.i.i.2.i_crit_edge ]
  %181 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i31.i.2.i = getelementptr i8, ptr %182, i32 20
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.2.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %184 = and i32 %183, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool2.not.i.i.2.i = icmp eq i32 %184, 0
  br i1 %tobool2.not.i.i.2.i, label %if.end.i.i.2.i, label %while.body.i.i.2.i.wait_rfifo_ready.exit.i.2.i_crit_edge

while.body.i.i.2.i.wait_rfifo_ready.exit.i.2.i_crit_edge: ; preds = %while.body.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_rfifo_ready.exit.i.2.i

if.end.i.i.2.i:                                   ; preds = %while.body.i.i.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 214748) #9
  %dec.i.i.2.i = add nsw i32 %dec7.i.i.2.i, -1
  %tobool.not.i.i.2.i = icmp eq i32 %dec7.i.i.2.i, 0
  br i1 %tobool.not.i.i.2.i, label %while.end.i.i.2.i, label %if.end.i.i.2.i.while.body.i.i.2.i_crit_edge

if.end.i.i.2.i.while.body.i.i.2.i_crit_edge:      ; preds = %if.end.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.2.i

while.end.i.i.2.i:                                ; preds = %if.end.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.2.i = getelementptr inbounds %struct.platform_device, ptr %187, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.2.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_rfifo_ready) #12
  br label %wait_rfifo_ready.exit.i.2.i

wait_rfifo_ready.exit.i.2.i:                      ; preds = %while.end.i.i.2.i, %while.body.i.i.2.i.wait_rfifo_ready.exit.i.2.i_crit_edge
  %188 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i23.2.i = getelementptr i8, ptr %189, i32 36
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.2.i) #9, !srcloc !131
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %arrayidx6.i.2.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %192 = ptrtoint ptr %arrayidx6.i.2.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx6.i.2.i, align 4
  br label %while.body.i.i.3.i

while.body.i.i.3.i:                               ; preds = %if.end.i.i.3.i.while.body.i.i.3.i_crit_edge, %wait_rfifo_ready.exit.i.2.i
  %dec7.i.i.3.i = phi i32 [ 65535, %wait_rfifo_ready.exit.i.2.i ], [ %dec.i.i.3.i, %if.end.i.i.3.i.while.body.i.i.3.i_crit_edge ]
  %193 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i31.i.3.i = getelementptr i8, ptr %194, i32 20
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.3.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %196 = and i32 %195, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool2.not.i.i.3.i = icmp eq i32 %196, 0
  br i1 %tobool2.not.i.i.3.i, label %if.end.i.i.3.i, label %while.body.i.i.3.i.wait_rfifo_ready.exit.i.3.i_crit_edge

while.body.i.i.3.i.wait_rfifo_ready.exit.i.3.i_crit_edge: ; preds = %while.body.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_rfifo_ready.exit.i.3.i

if.end.i.i.3.i:                                   ; preds = %while.body.i.i.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 214748) #9
  %dec.i.i.3.i = add nsw i32 %dec7.i.i.3.i, -1
  %tobool.not.i.i.3.i = icmp eq i32 %dec7.i.i.3.i, 0
  br i1 %tobool.not.i.i.3.i, label %while.end.i.i.3.i, label %if.end.i.i.3.i.while.body.i.i.3.i_crit_edge

if.end.i.i.3.i.while.body.i.i.3.i_crit_edge:      ; preds = %if.end.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.3.i

while.end.i.i.3.i:                                ; preds = %if.end.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.3.i = getelementptr inbounds %struct.platform_device, ptr %199, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.3.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_rfifo_ready) #12
  br label %wait_rfifo_ready.exit.i.3.i

wait_rfifo_ready.exit.i.3.i:                      ; preds = %while.end.i.i.3.i, %while.body.i.i.3.i.wait_rfifo_ready.exit.i.3.i_crit_edge
  %200 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i23.3.i = getelementptr i8, ptr %201, i32 36
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.3.i) #9, !srcloc !131
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %arrayidx6.i.3.i = getelementptr i32, ptr %arrayidx.i.i, i32 3
  %204 = ptrtoint ptr %arrayidx6.i.3.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %arrayidx6.i.3.i, align 4
  br label %while.body.i.i334

while.body.i.i334:                                ; preds = %if.end.i.i338.while.body.i.i334_crit_edge, %wait_rfifo_ready.exit.i.3.i
  %dec13.i.i332 = phi i32 [ %dec.i.i337, %if.end.i.i338.while.body.i.i334_crit_edge ], [ 65535, %wait_rfifo_ready.exit.i.3.i ]
  %205 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %206, i32 44
  %207 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i25.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %208 = and i8 %207, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool2.not.i.i333 = icmp eq i8 %208, 0
  br i1 %tobool2.not.i.i333, label %if.end.i.i338, label %do.body.i.i336

do.body.i.i336:                                   ; preds = %while.body.i.i334
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr4.i.i335 = getelementptr i8, ptr %210, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i335, i8 0) #9, !srcloc !149
  br label %wait_completion.exit.i

if.end.i.i338:                                    ; preds = %while.body.i.i334
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 214748) #9
  %dec.i.i337 = add nsw i32 %dec13.i.i332, -1
  %tobool.not.i26.i = icmp eq i32 %dec13.i.i332, 0
  br i1 %tobool.not.i26.i, label %while.end.i.i341, label %if.end.i.i338.while.body.i.i334_crit_edge

if.end.i.i338.while.body.i.i334_crit_edge:        ; preds = %if.end.i.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i334

while.end.i.i341:                                 ; preds = %if.end.i.i338
  call void @__sanitizer_cov_trace_pc() #11
  %212 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pdev, align 8
  %dev.i.i.i339 = getelementptr inbounds %struct.platform_device, ptr %213, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i339, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %214 = ptrtoint ptr %reg.i.i321 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %reg.i.i321, align 8
  %add.ptr9.i.i340 = getelementptr i8, ptr %215, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i340, i8 0) #9, !srcloc !149
  br label %wait_completion.exit.i

wait_completion.exit.i:                           ; preds = %while.end.i.i341, %do.body.i.i336
  %inc.i342 = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i343 = icmp eq i32 %inc.i342, %cond.i311
  br i1 %exitcond.not.i343, label %wait_completion.exit.i.runtime_exit_crit_edge, label %wait_completion.exit.i.for.body.i328_crit_edge

wait_completion.exit.i.for.body.i328_crit_edge:   ; preds = %wait_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i328

wait_completion.exit.i.runtime_exit_crit_edge:    ; preds = %wait_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %runtime_exit

if.end26:                                         ; preds = %sw.bb18
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @set_cmd_regs(ptr noundef %chip, i32 noundef 80, i32 noundef 12288)
  %writesize33 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %216 = ptrtoint ptr %writesize33 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %writesize33, align 4
  br label %if.end35

if.else34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @set_cmd_regs(ptr noundef %chip, i32 noundef 80, i32 noundef 80)
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then32
  %.sink = phi i32 [ 0, %if.else34 ], [ %217, %if.then32 ]
  tail call fastcc void @set_addr(ptr noundef %chip, i32 noundef %.sink, i32 noundef %page_addr)
  %oobsize36 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %218 = ptrtoint ptr %oobsize36 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %oobsize36, align 4
  %220 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %read_bytes, align 8
  br label %do.body157

sw.bb38:                                          ; preds = %if.then
  %hwecc39 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %221 = ptrtoint ptr %hwecc39 to i32
  call void @__asan_load1_noabort(i32 %221)
  %bf.load40 = load i8, ptr %hwecc39, align 8
  %222 = and i8 %bf.load40, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool44.not = icmp eq i8 %222, 0
  br i1 %tobool44.not, label %if.end46, label %sw.bb38.runtime_exit_crit_edge

sw.bb38.runtime_exit_crit_edge:                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %runtime_exit

if.end46:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %tobool51.not = icmp sgt i8 %bf.load40, -1
  %. = select i1 %tobool51.not, i32 5, i32 57349
  tail call fastcc void @set_cmd_regs(ptr noundef %chip, i32 noundef 5, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.i = icmp eq i32 %column, -1
  br i1 %cmp.i, label %if.end46.set_addr.exit361_crit_edge, label %if.else.i

if.end46.set_addr.exit361_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit361

if.else.i:                                        ; preds = %if.end46
  %options.i344 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %223 = ptrtoint ptr %options.i344 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %options.i344, align 8
  %and.i345 = lshr i32 %224, 1
  %and.lobit.i346 = and i32 %and.i345, 1
  %spec.select.i = ashr i32 %column, %and.lobit.i346
  %225 = ptrtoint ptr %hwecc39 to i32
  call void @__asan_load1_noabort(i32 %225)
  %bf.load.i348 = load i8, ptr %hwecc39, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i348)
  %tobool4.not.i349 = icmp sgt i8 %bf.load.i348, -1
  br i1 %tobool4.not.i349, label %if.else.i.set_addr.exit361_crit_edge, label %if.then5.i353

if.else.i.set_addr.exit361_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit361

if.then5.i353:                                    ; preds = %if.else.i
  %and6.i = and i32 %spec.select.i, 4095
  %rw_ADRCNT.i351 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %226 = ptrtoint ptr %rw_ADRCNT.i351 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rw_ADRCNT.i351, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %227)
  %cmp12.i352 = icmp eq i32 %227, -2147483648
  br i1 %cmp12.i352, label %if.then13.i356, label %if.then5.i353.set_addr.exit361_crit_edge

if.then5.i353.set_addr.exit361_crit_edge:         ; preds = %if.then5.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit361

if.then13.i356:                                   ; preds = %if.then5.i353
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %reg.i354 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %228 = ptrtoint ptr %reg.i354 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reg.i354, align 8
  %add.ptr.i355 = getelementptr i8, ptr %229, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i355, i32 0) #9, !srcloc !134
  br label %set_addr.exit361

set_addr.exit361:                                 ; preds = %if.then13.i356, %if.then5.i353.set_addr.exit361_crit_edge, %if.else.i.set_addr.exit361_crit_edge, %if.end46.set_addr.exit361_crit_edge
  %addr.0.i358 = phi i32 [ %and6.i, %if.then13.i356 ], [ %and6.i, %if.then5.i353.set_addr.exit361_crit_edge ], [ 0, %if.end46.set_addr.exit361_crit_edge ], [ %spec.select.i, %if.else.i.set_addr.exit361_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %230 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i358) #9
  %reg35.i359 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %231 = ptrtoint ptr %reg35.i359 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg35.i359, align 8
  %add.ptr36.i360 = getelementptr i8, ptr %232, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i360, i32 %230) #9, !srcloc !134
  %writesize56 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %233 = ptrtoint ptr %writesize56 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %writesize56, align 4
  %oobsize57 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %235 = ptrtoint ptr %oobsize57 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %oobsize57, align 4
  %add58 = sub i32 %234, %column
  %sub = add i32 %add58, %236
  %237 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %sub, ptr %read_bytes, align 8
  br label %do.body157

sw.bb60:                                          ; preds = %if.then
  %flcmncr_base.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %238 = ptrtoint ptr %flcmncr_base.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %flcmncr_base.i, align 8
  %and.i364 = and i32 %239, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %240 = tail call i32 @llvm.bswap.i32(i32 %and.i364) #9
  %reg.i365 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %241 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %reg.i365, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %243 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %reg.i365, align 8
  %add.ptr33.i = getelementptr i8, ptr %244, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 4354) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %reg.i365, align 8
  %add.ptr38.i = getelementptr i8, ptr %246, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 -1879048192) #9, !srcloc !134
  %options62 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %247 = ptrtoint ptr %options62 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %options62, align 8
  %and63 = lshr i32 %248, 1
  %and63.lobit = and i32 %and63, 1
  %spec.select303 = shl i32 %column, %and63.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select303)
  %cmp.i366 = icmp eq i32 %spec.select303, -1
  br i1 %cmp.i366, label %sw.bb60.set_addr.exit387_crit_edge, label %if.else.i367

sw.bb60.set_addr.exit387_crit_edge:               ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit387

if.else.i367:                                     ; preds = %sw.bb60
  %page_size.i362 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %spec.select.i371 = ashr i32 %spec.select303, %and63.lobit
  %249 = ptrtoint ptr %page_size.i362 to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load.i373 = load i8, ptr %page_size.i362, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i373)
  %tobool4.not.i374 = icmp sgt i8 %bf.load.i373, -1
  br i1 %tobool4.not.i374, label %if.else.i367.set_addr.exit387_crit_edge, label %if.then5.i379

if.else.i367.set_addr.exit387_crit_edge:          ; preds = %if.else.i367
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit387

if.then5.i379:                                    ; preds = %if.else.i367
  %and6.i376 = and i32 %spec.select.i371, 4095
  %rw_ADRCNT.i377 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %250 = ptrtoint ptr %rw_ADRCNT.i377 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %rw_ADRCNT.i377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %251)
  %cmp12.i378 = icmp eq i32 %251, -2147483648
  br i1 %cmp12.i378, label %if.then13.i382, label %if.then5.i379.set_addr.exit387_crit_edge

if.then5.i379.set_addr.exit387_crit_edge:         ; preds = %if.then5.i379
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit387

if.then13.i382:                                   ; preds = %if.then5.i379
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %252 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %reg.i365, align 8
  %add.ptr.i381 = getelementptr i8, ptr %253, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i381, i32 0) #9, !srcloc !134
  br label %set_addr.exit387

set_addr.exit387:                                 ; preds = %if.then13.i382, %if.then5.i379.set_addr.exit387_crit_edge, %if.else.i367.set_addr.exit387_crit_edge, %sw.bb60.set_addr.exit387_crit_edge
  %addr.0.i384 = phi i32 [ %and6.i376, %if.then13.i382 ], [ %and6.i376, %if.then5.i379.set_addr.exit387_crit_edge ], [ 0, %sw.bb60.set_addr.exit387_crit_edge ], [ %spec.select.i371, %if.else.i367.set_addr.exit387_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %254 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i384) #9
  %255 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %reg.i365, align 8
  %add.ptr36.i386 = getelementptr i8, ptr %256, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i386, i32 %254) #9, !srcloc !134
  %257 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 8, ptr %read_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %258 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %read_bytes, align 8
  %260 = tail call i32 @llvm.bswap.i32(i32 %259)
  %261 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %reg.i365, align 8
  %add.ptr = getelementptr i8, ptr %262, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %260) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %flintdmacr_base.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 15
  %263 = ptrtoint ptr %flintdmacr_base.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %flintdmacr_base.i, align 4
  %or1.i = or i32 %264, 786432
  %265 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #9
  %266 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg.i365, align 8
  %add.ptr.i389 = getelementptr i8, ptr %267, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i389, i32 %265) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %268 = ptrtoint ptr %flintdmacr_base.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %flintdmacr_base.i, align 4
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #9
  %271 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %reg.i365, align 8
  %add.ptr6.i = getelementptr i8, ptr %272, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %270) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %273 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %reg.i365, align 8
  %add.ptr.i391 = getelementptr i8, ptr %274, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i391, i8 1) #9, !srcloc !149
  %275 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %read_bytes, align 8
  tail call fastcc void @read_fiforeg(ptr noundef %chip, i32 noundef %276, i32 noundef 0)
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %set_addr.exit387
  %dec13.i = phi i32 [ 65535, %set_addr.exit387 ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %277 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %reg.i365, align 8
  %add.ptr.i393 = getelementptr i8, ptr %278, i32 44
  %279 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i393) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %280 = and i8 %279, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool2.not.i = icmp eq i8 %280, 0
  br i1 %tobool2.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %281 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %reg.i365, align 8
  %add.ptr4.i = getelementptr i8, ptr %282, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 0) #9, !srcloc !149
  br label %runtime_exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %283 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %283(i32 noundef 214748) #9
  %dec.i = add nsw i32 %dec13.i, -1
  %tobool.not.i394 = icmp eq i32 %dec13.i, 0
  br i1 %tobool.not.i394, label %while.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %284 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %pdev, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %285, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %286 = ptrtoint ptr %reg.i365 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %reg.i365, align 8
  %add.ptr9.i = getelementptr i8, ptr %287, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 0) #9, !srcloc !149
  br label %runtime_exit

sw.bb70:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %erase1_page_addr = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 11
  %288 = ptrtoint ptr %erase1_page_addr to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %page_addr, ptr %erase1_page_addr, align 4
  br label %runtime_exit

sw.bb71:                                          ; preds = %if.then
  %flcmncr_base.i395 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %289 = ptrtoint ptr %flcmncr_base.i395 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %flcmncr_base.i395, align 8
  %page_size.i396 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %291 = ptrtoint ptr %page_size.i396 to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load.i397 = load i8, ptr %page_size.i396, align 8
  %and.i398 = and i32 %290, -786433
  %or.i399 = or i32 %and.i398, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i397)
  %tobool.not62.i400 = icmp slt i8 %bf.load.i397, 0
  %flcmncr_val.0.i401 = select i1 %tobool.not62.i400, i32 %or.i399, i32 %and.i398
  %erase_ADRCNT.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 12
  %292 = ptrtoint ptr %erase_ADRCNT.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %erase_ADRCNT.i, align 8
  %or28.i = or i32 %293, 1245184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %294 = tail call i32 @llvm.bswap.i32(i32 %flcmncr_val.0.i401) #9
  %reg.i402 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %295 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %reg.i402, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %294) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %297 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #9
  %298 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %reg.i402, align 8
  %add.ptr33.i403 = getelementptr i8, ptr %299, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i403, i32 %297) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %300 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %reg.i402, align 8
  %add.ptr38.i404 = getelementptr i8, ptr %301, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i404, i32 1624244224) #9, !srcloc !134
  %erase1_page_addr74 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 11
  %302 = ptrtoint ptr %erase1_page_addr74 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %erase1_page_addr74, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #9
  %305 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %reg.i402, align 8
  %add.ptr36.i407 = getelementptr i8, ptr %306, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i407, i32 %304) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %307 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %reg.i402, align 8
  %add.ptr.i409 = getelementptr i8, ptr %308, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i409, i8 1) #9, !srcloc !149
  br label %while.body.i414

while.body.i414:                                  ; preds = %if.end.i419.while.body.i414_crit_edge, %sw.bb71
  %dec13.i411 = phi i32 [ 65535, %sw.bb71 ], [ %dec.i417, %if.end.i419.while.body.i414_crit_edge ]
  %309 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %reg.i402, align 8
  %add.ptr.i412 = getelementptr i8, ptr %310, i32 44
  %311 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i412) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %312 = and i8 %311, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool2.not.i413 = icmp eq i8 %312, 0
  br i1 %tobool2.not.i413, label %if.end.i419, label %do.body.i416

do.body.i416:                                     ; preds = %while.body.i414
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %313 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %reg.i402, align 8
  %add.ptr4.i415 = getelementptr i8, ptr %314, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i415, i8 0) #9, !srcloc !149
  br label %runtime_exit

if.end.i419:                                      ; preds = %while.body.i414
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %315 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %315(i32 noundef 214748) #9
  %dec.i417 = add nsw i32 %dec13.i411, -1
  %tobool.not.i418 = icmp eq i32 %dec13.i411, 0
  br i1 %tobool.not.i418, label %while.end.i423, label %if.end.i419.while.body.i414_crit_edge

if.end.i419.while.body.i414_crit_edge:            ; preds = %if.end.i419
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i414

while.end.i423:                                   ; preds = %if.end.i419
  call void @__sanitizer_cov_trace_pc() #11
  %316 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %pdev, align 8
  %dev.i.i421 = getelementptr inbounds %struct.platform_device, ptr %317, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i421, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %318 = ptrtoint ptr %reg.i402 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %reg.i402, align 8
  %add.ptr9.i422 = getelementptr i8, ptr %319, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i422, i8 0) #9, !srcloc !149
  br label %runtime_exit

sw.bb75:                                          ; preds = %if.then
  %page_size76 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %320 = ptrtoint ptr %page_size76 to i32
  call void @__asan_load1_noabort(i32 %320)
  %bf.load77 = load i8, ptr %page_size76, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load77)
  %tobool80.not = icmp sgt i8 %bf.load77, -1
  br i1 %tobool80.not, label %if.then81, label %sw.bb75.if.end94_crit_edge

sw.bb75.if.end94_crit_edge:                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then81:                                        ; preds = %sw.bb75
  %writesize82 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %321 = ptrtoint ptr %writesize82 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %writesize82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %322, i32 %column)
  %cmp83.not = icmp ugt i32 %322, %column
  br i1 %cmp83.not, label %if.else87, label %if.then84

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %sub86 = sub i32 %column, %322
  br label %if.end94

if.else87:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %column)
  %cmp88 = icmp slt i32 %column, 256
  %sub91 = add i32 %column, -256
  %not.cmp88 = xor i1 %cmp88, true
  %spec.select304 = zext i1 %not.cmp88 to i32
  %spec.select305 = select i1 %cmp88, i32 %column, i32 %sub91
  br label %if.end94

if.end94:                                         ; preds = %if.else87, %if.then84, %sw.bb75.if.end94_crit_edge
  %read_cmd.0 = phi i32 [ 0, %sw.bb75.if.end94_crit_edge ], [ 80, %if.then84 ], [ %spec.select304, %if.else87 ]
  %column.addr.2 = phi i32 [ %column, %sw.bb75.if.end94_crit_edge ], [ %sub86, %if.then84 ], [ %spec.select305, %if.else87 ]
  %seqin_column = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 8
  %323 = ptrtoint ptr %seqin_column to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %column.addr.2, ptr %seqin_column, align 8
  %seqin_page_addr = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 9
  %324 = ptrtoint ptr %seqin_page_addr to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %page_addr, ptr %seqin_page_addr, align 4
  %seqin_read_cmd = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 10
  %325 = ptrtoint ptr %seqin_read_cmd to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %read_cmd.0, ptr %seqin_read_cmd, align 8
  br label %runtime_exit

sw.bb95:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %flintdmacr_base.i425 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 15
  %326 = ptrtoint ptr %flintdmacr_base.i425 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %flintdmacr_base.i425, align 4
  %or1.i426 = or i32 %327, 786432
  %328 = tail call i32 @llvm.bswap.i32(i32 %or1.i426) #9
  %reg.i427 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %329 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i428 = getelementptr i8, ptr %330, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428, i32 %328) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %331 = ptrtoint ptr %flintdmacr_base.i425 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %flintdmacr_base.i425, align 4
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #9
  %334 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %reg.i427, align 8
  %add.ptr6.i429 = getelementptr i8, ptr %335, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i429, i32 %333) #9, !srcloc !134
  %page_size96 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %336 = ptrtoint ptr %page_size96 to i32
  call void @__asan_load1_noabort(i32 %336)
  %bf.load97 = load i8, ptr %page_size96, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load97)
  %tobool100.not = icmp sgt i8 %bf.load97, -1
  br i1 %tobool100.not, label %if.then101, label %sw.bb95.if.end108_crit_edge

sw.bb95.if.end108_crit_edge:                      ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then101:                                       ; preds = %sw.bb95
  %seqin_read_cmd102 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 10
  %337 = ptrtoint ptr %seqin_read_cmd102 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %seqin_read_cmd102, align 8
  %flcmncr_base.i430 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %339 = ptrtoint ptr %flcmncr_base.i430 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %flcmncr_base.i430, align 8
  %and.i433 = and i32 %340, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %341 = tail call i32 @llvm.bswap.i32(i32 %and.i433) #9
  %342 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %reg.i427, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %341) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %344 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %reg.i427, align 8
  %add.ptr33.i439 = getelementptr i8, ptr %345, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i439, i32 256) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %346 = tail call i32 @llvm.bswap.i32(i32 %338) #9
  %347 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %reg.i427, align 8
  %add.ptr38.i440 = getelementptr i8, ptr %348, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i440, i32 %346) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %349 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %reg.i427, align 8
  %add.ptr36.i443 = getelementptr i8, ptr %350, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i443, i32 -1) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %351 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %reg.i427, align 8
  %add.ptr107 = getelementptr i8, ptr %352, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 0) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %353 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i445 = getelementptr i8, ptr %354, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i445, i8 1) #9, !srcloc !149
  br label %while.body.i450

while.body.i450:                                  ; preds = %if.end.i455.while.body.i450_crit_edge, %if.then101
  %dec13.i447 = phi i32 [ 65535, %if.then101 ], [ %dec.i453, %if.end.i455.while.body.i450_crit_edge ]
  %355 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i448 = getelementptr i8, ptr %356, i32 44
  %357 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i448) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %358 = and i8 %357, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool2.not.i449 = icmp eq i8 %358, 0
  br i1 %tobool2.not.i449, label %if.end.i455, label %do.body.i452

do.body.i452:                                     ; preds = %while.body.i450
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %359 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %reg.i427, align 8
  %add.ptr4.i451 = getelementptr i8, ptr %360, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i451, i8 0) #9, !srcloc !149
  br label %if.end108

if.end.i455:                                      ; preds = %while.body.i450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %361 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %361(i32 noundef 214748) #9
  %dec.i453 = add nsw i32 %dec13.i447, -1
  %tobool.not.i454 = icmp eq i32 %dec13.i447, 0
  br i1 %tobool.not.i454, label %while.end.i459, label %if.end.i455.while.body.i450_crit_edge

if.end.i455.while.body.i450_crit_edge:            ; preds = %if.end.i455
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i450

while.end.i459:                                   ; preds = %if.end.i455
  call void @__sanitizer_cov_trace_pc() #11
  %362 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pdev, align 8
  %dev.i.i457 = getelementptr inbounds %struct.platform_device, ptr %363, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i457, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %364 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %reg.i427, align 8
  %add.ptr9.i458 = getelementptr i8, ptr %365, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i458, i8 0) #9, !srcloc !149
  br label %if.end108

if.end108:                                        ; preds = %while.end.i459, %do.body.i452, %sw.bb95.if.end108_crit_edge
  %366 = ptrtoint ptr %page_size96 to i32
  call void @__asan_load1_noabort(i32 %366)
  %bf.load110 = load i8, ptr %page_size96, align 8
  %367 = and i8 %bf.load110, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool114.not = icmp eq i8 %367, 0
  br i1 %tobool114.not, label %if.end131, label %if.then115

if.then115:                                       ; preds = %if.end108
  %seqin_column116 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 8
  %368 = ptrtoint ptr %seqin_column116 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %seqin_column116, align 8
  %writesize117 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %370 = ptrtoint ptr %writesize117 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %writesize117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %369, i32 %371)
  %cmp118 = icmp eq i32 %369, %371
  br i1 %cmp118, label %if.then119, label %if.else120

if.then119:                                       ; preds = %if.then115
  %seqin_page_addr.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 9
  %372 = ptrtoint ptr %seqin_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %seqin_page_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load110)
  %tobool.not.i463 = icmp sgt i8 %bf.load110, -1
  %cond.i464 = select i1 %tobool.not.i463, i32 1, i32 4
  %flcmncr_base.i.i465 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %374 = ptrtoint ptr %flcmncr_base.i.i465 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %flcmncr_base.i.i465, align 8
  %and.i.i466 = and i32 %375, -786433
  %or.i.i467 = or i32 %and.i.i466, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load110)
  %tobool.not62.i.i468 = icmp slt i8 %bf.load110, 0
  %flcmncr_val.0.i.i469 = select i1 %tobool.not62.i.i468, i32 %or.i.i467, i32 %and.i.i466
  %rw_ADRCNT13.i.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %376 = ptrtoint ptr %rw_ADRCNT13.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %rw_ADRCNT13.i.i, align 4
  %options16.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %378 = ptrtoint ptr %options16.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %options16.i.i, align 8
  %and17.i.i = shl i32 %379, 18
  %380 = and i32 %and17.i.i, 524288
  %381 = or i32 %380, %flcmncr_val.0.i.i469
  %or28.i.i470 = or i32 %377, 36896768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %382 = tail call i32 @llvm.bswap.i32(i32 %381) #9
  %383 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %reg.i427, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %382) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %385 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i470) #9
  %386 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %reg.i427, align 8
  %add.ptr33.i.i472 = getelementptr i8, ptr %387, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i472, i32 %385) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %388 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %reg.i427, align 8
  %add.ptr38.i.i473 = getelementptr i8, ptr %389, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i473, i32 -2146435072) #9, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %373)
  %cmp1.not.i.i475 = icmp eq i32 %373, -1
  %and7.i.i476 = shl i32 %373, 16
  %390 = shl i32 %373, 8
  %and15.i.i477 = and i32 %390, -16777216
  br label %for.body.i482

for.body.i482:                                    ; preds = %wait_completion.exit.i541.for.body.i482_crit_edge, %if.then119
  %sector.025.i = phi i32 [ 0, %if.then119 ], [ %inc.i539, %wait_completion.exit.i541.for.body.i482_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %391 = ptrtoint ptr %flintdmacr_base.i425 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %flintdmacr_base.i425, align 4
  %or1.i.i479 = or i32 %392, 786432
  %393 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i479) #9
  %394 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i480 = getelementptr i8, ptr %395, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i480, i32 %393) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %396 = ptrtoint ptr %flintdmacr_base.i425 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %flintdmacr_base.i425, align 4
  %398 = tail call i32 @llvm.bswap.i32(i32 %397) #9
  %399 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %reg.i427, align 8
  %add.ptr6.i.i481 = getelementptr i8, ptr %400, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i481, i32 %398) #9, !srcloc !134
  br i1 %cmp1.not.i.i475, label %for.body.i482.set_addr.exit.i502_crit_edge, label %if.then2.i.i490

for.body.i482.set_addr.exit.i502_crit_edge:       ; preds = %for.body.i482
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit.i502

if.then2.i.i490:                                  ; preds = %for.body.i482
  %mul.i483 = mul nuw nsw i32 %sector.025.i, 528
  %add.i484 = add nuw nsw i32 %mul.i483, 512
  %401 = ptrtoint ptr %options16.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %options16.i.i, align 8
  %and.i14.i485 = lshr i32 %402, 1
  %and.lobit.i.i486 = and i32 %and.i14.i485, 1
  %spec.select.i.i487 = lshr i32 %add.i484, %and.lobit.i.i486
  %403 = ptrtoint ptr %page_size96 to i32
  call void @__asan_load1_noabort(i32 %403)
  %bf.load.i16.i488 = load i8, ptr %page_size96, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i16.i488)
  %tobool4.not.i.i489 = icmp sgt i8 %bf.load.i16.i488, -1
  br i1 %tobool4.not.i.i489, label %if.else17.i.i496, label %if.then5.i.i494

if.then5.i.i494:                                  ; preds = %if.then2.i.i490
  %and6.i.i491 = and i32 %spec.select.i.i487, 4088
  %or11.i.i492 = or i32 %and6.i.i491, %and7.i.i476
  %404 = ptrtoint ptr %rw_ADRCNT13.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %rw_ADRCNT13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %405)
  %cmp12.i.i493 = icmp eq i32 %405, -2147483648
  br i1 %cmp12.i.i493, label %if.then13.i.i495, label %if.then5.i.i494.set_addr.exit.i502_crit_edge

if.then5.i.i494.set_addr.exit.i502_crit_edge:     ; preds = %if.then5.i.i494
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit.i502

if.then13.i.i495:                                 ; preds = %if.then5.i.i494
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %406 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %407, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %and15.i.i477) #9, !srcloc !134
  br label %set_addr.exit.i502

if.else17.i.i496:                                 ; preds = %if.then2.i.i490
  call void @__sanitizer_cov_trace_pc() #11
  %or28.i19.i = or i32 %spec.select.i.i487, %390
  br label %set_addr.exit.i502

set_addr.exit.i502:                               ; preds = %if.else17.i.i496, %if.then13.i.i495, %if.then5.i.i494.set_addr.exit.i502_crit_edge, %for.body.i482.set_addr.exit.i502_crit_edge
  %addr.0.i.i497 = phi i32 [ %or11.i.i492, %if.then13.i.i495 ], [ %or11.i.i492, %if.then5.i.i494.set_addr.exit.i502_crit_edge ], [ %or28.i19.i, %if.else17.i.i496 ], [ 0, %for.body.i482.set_addr.exit.i502_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %408 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i.i497) #9
  %409 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %reg.i427, align 8
  %add.ptr36.i.i498 = getelementptr i8, ptr %410, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i498, i32 %408) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %411 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i499 = getelementptr i8, ptr %412, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i499, i32 268435456) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %413 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %414, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21.i, i8 1) #9, !srcloc !149
  %mul1.i500 = shl i32 %sector.025.i, 4
  %arrayidx.i.i501 = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %mul1.i500
  br label %while.body.i.i.i503

while.body.i.i.i503:                              ; preds = %if.end.i.i.i506.while.body.i.i.i503_crit_edge, %set_addr.exit.i502
  %dec4.i.i.i = phi i32 [ 65535, %set_addr.exit.i502 ], [ %dec.i.i.i504, %if.end.i.i.i506.while.body.i.i.i503_crit_edge ]
  %415 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %416, i32 20
  %417 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %418 = and i32 %417, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %cmp.not.i.i.i = icmp eq i32 %418, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i506, label %while.body.i.i.i503.wait_wfifo_ready.exit.i.i_crit_edge

while.body.i.i.i503.wait_wfifo_ready.exit.i.i_crit_edge: ; preds = %while.body.i.i.i503
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wfifo_ready.exit.i.i

if.end.i.i.i506:                                  ; preds = %while.body.i.i.i503
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %419 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %419(i32 noundef 214748) #9
  %dec.i.i.i504 = add nsw i32 %dec4.i.i.i, -1
  %tobool.not.i.i.i505 = icmp eq i32 %dec4.i.i.i, 0
  br i1 %tobool.not.i.i.i505, label %while.end.i.i.i508, label %if.end.i.i.i506.while.body.i.i.i503_crit_edge

if.end.i.i.i506.while.body.i.i.i503_crit_edge:    ; preds = %if.end.i.i.i506
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i503

while.end.i.i.i508:                               ; preds = %if.end.i.i.i506
  call void @__sanitizer_cov_trace_pc() #11
  %420 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.i507 = getelementptr inbounds %struct.platform_device, ptr %421, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i507, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wfifo_ready) #12
  br label %wait_wfifo_ready.exit.i.i

wait_wfifo_ready.exit.i.i:                        ; preds = %while.end.i.i.i508, %while.body.i.i.i503.wait_wfifo_ready.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %422 = ptrtoint ptr %arrayidx.i.i501 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx.i.i501, align 4
  %424 = tail call i32 @llvm.bswap.i32(i32 %423) #9
  %425 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i22.i509 = getelementptr i8, ptr %426, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i509, i32 %424) #9, !srcloc !134
  br label %while.body.i.i.1.i510

while.body.i.i.1.i510:                            ; preds = %if.end.i.i.1.i513.while.body.i.i.1.i510_crit_edge, %wait_wfifo_ready.exit.i.i
  %dec4.i.i.1.i = phi i32 [ 65535, %wait_wfifo_ready.exit.i.i ], [ %dec.i.i.1.i511, %if.end.i.i.1.i513.while.body.i.i.1.i510_crit_edge ]
  %427 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i.1.i = getelementptr i8, ptr %428, i32 20
  %429 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %430 = and i32 %429, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %cmp.not.i.i.1.i = icmp eq i32 %430, 0
  br i1 %cmp.not.i.i.1.i, label %if.end.i.i.1.i513, label %while.body.i.i.1.i510.wait_wfifo_ready.exit.i.1.i_crit_edge

while.body.i.i.1.i510.wait_wfifo_ready.exit.i.1.i_crit_edge: ; preds = %while.body.i.i.1.i510
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wfifo_ready.exit.i.1.i

if.end.i.i.1.i513:                                ; preds = %while.body.i.i.1.i510
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %431 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %431(i32 noundef 214748) #9
  %dec.i.i.1.i511 = add nsw i32 %dec4.i.i.1.i, -1
  %tobool.not.i.i.1.i512 = icmp eq i32 %dec4.i.i.1.i, 0
  br i1 %tobool.not.i.i.1.i512, label %while.end.i.i.1.i515, label %if.end.i.i.1.i513.while.body.i.i.1.i510_crit_edge

if.end.i.i.1.i513.while.body.i.i.1.i510_crit_edge: ; preds = %if.end.i.i.1.i513
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.1.i510

while.end.i.i.1.i515:                             ; preds = %if.end.i.i.1.i513
  call void @__sanitizer_cov_trace_pc() #11
  %432 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.1.i514 = getelementptr inbounds %struct.platform_device, ptr %433, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.1.i514, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wfifo_ready) #12
  br label %wait_wfifo_ready.exit.i.1.i

wait_wfifo_ready.exit.i.1.i:                      ; preds = %while.end.i.i.1.i515, %while.body.i.i.1.i510.wait_wfifo_ready.exit.i.1.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %arrayidx1.i.1.i = getelementptr i32, ptr %arrayidx.i.i501, i32 1
  %434 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx1.i.1.i, align 4
  %436 = tail call i32 @llvm.bswap.i32(i32 %435) #9
  %437 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i22.1.i = getelementptr i8, ptr %438, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.1.i, i32 %436) #9, !srcloc !134
  br label %while.body.i.i.2.i516

while.body.i.i.2.i516:                            ; preds = %if.end.i.i.2.i519.while.body.i.i.2.i516_crit_edge, %wait_wfifo_ready.exit.i.1.i
  %dec4.i.i.2.i = phi i32 [ 65535, %wait_wfifo_ready.exit.i.1.i ], [ %dec.i.i.2.i517, %if.end.i.i.2.i519.while.body.i.i.2.i516_crit_edge ]
  %439 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i.2.i = getelementptr i8, ptr %440, i32 20
  %441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %442 = and i32 %441, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %cmp.not.i.i.2.i = icmp eq i32 %442, 0
  br i1 %cmp.not.i.i.2.i, label %if.end.i.i.2.i519, label %while.body.i.i.2.i516.wait_wfifo_ready.exit.i.2.i_crit_edge

while.body.i.i.2.i516.wait_wfifo_ready.exit.i.2.i_crit_edge: ; preds = %while.body.i.i.2.i516
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wfifo_ready.exit.i.2.i

if.end.i.i.2.i519:                                ; preds = %while.body.i.i.2.i516
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %443 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %443(i32 noundef 214748) #9
  %dec.i.i.2.i517 = add nsw i32 %dec4.i.i.2.i, -1
  %tobool.not.i.i.2.i518 = icmp eq i32 %dec4.i.i.2.i, 0
  br i1 %tobool.not.i.i.2.i518, label %while.end.i.i.2.i521, label %if.end.i.i.2.i519.while.body.i.i.2.i516_crit_edge

if.end.i.i.2.i519.while.body.i.i.2.i516_crit_edge: ; preds = %if.end.i.i.2.i519
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.2.i516

while.end.i.i.2.i521:                             ; preds = %if.end.i.i.2.i519
  call void @__sanitizer_cov_trace_pc() #11
  %444 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.2.i520 = getelementptr inbounds %struct.platform_device, ptr %445, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.2.i520, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wfifo_ready) #12
  br label %wait_wfifo_ready.exit.i.2.i

wait_wfifo_ready.exit.i.2.i:                      ; preds = %while.end.i.i.2.i521, %while.body.i.i.2.i516.wait_wfifo_ready.exit.i.2.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %arrayidx1.i.2.i = getelementptr i32, ptr %arrayidx.i.i501, i32 2
  %446 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx1.i.2.i, align 4
  %448 = tail call i32 @llvm.bswap.i32(i32 %447) #9
  %449 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i22.2.i = getelementptr i8, ptr %450, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.2.i, i32 %448) #9, !srcloc !134
  br label %while.body.i.i.3.i522

while.body.i.i.3.i522:                            ; preds = %if.end.i.i.3.i525.while.body.i.i.3.i522_crit_edge, %wait_wfifo_ready.exit.i.2.i
  %dec4.i.i.3.i = phi i32 [ 65535, %wait_wfifo_ready.exit.i.2.i ], [ %dec.i.i.3.i523, %if.end.i.i.3.i525.while.body.i.i.3.i522_crit_edge ]
  %451 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i.3.i = getelementptr i8, ptr %452, i32 20
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %454 = and i32 %453, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %cmp.not.i.i.3.i = icmp eq i32 %454, 0
  br i1 %cmp.not.i.i.3.i, label %if.end.i.i.3.i525, label %while.body.i.i.3.i522.wait_wfifo_ready.exit.i.3.i_crit_edge

while.body.i.i.3.i522.wait_wfifo_ready.exit.i.3.i_crit_edge: ; preds = %while.body.i.i.3.i522
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wfifo_ready.exit.i.3.i

if.end.i.i.3.i525:                                ; preds = %while.body.i.i.3.i522
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %455 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %455(i32 noundef 214748) #9
  %dec.i.i.3.i523 = add nsw i32 %dec4.i.i.3.i, -1
  %tobool.not.i.i.3.i524 = icmp eq i32 %dec4.i.i.3.i, 0
  br i1 %tobool.not.i.i.3.i524, label %while.end.i.i.3.i527, label %if.end.i.i.3.i525.while.body.i.i.3.i522_crit_edge

if.end.i.i.3.i525.while.body.i.i.3.i522_crit_edge: ; preds = %if.end.i.i.3.i525
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.3.i522

while.end.i.i.3.i527:                             ; preds = %if.end.i.i.3.i525
  call void @__sanitizer_cov_trace_pc() #11
  %456 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.3.i526 = getelementptr inbounds %struct.platform_device, ptr %457, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.3.i526, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wfifo_ready) #12
  br label %wait_wfifo_ready.exit.i.3.i

wait_wfifo_ready.exit.i.3.i:                      ; preds = %while.end.i.i.3.i527, %while.body.i.i.3.i522.wait_wfifo_ready.exit.i.3.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %arrayidx1.i.3.i = getelementptr i32, ptr %arrayidx.i.i501, i32 3
  %458 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %arrayidx1.i.3.i, align 4
  %460 = tail call i32 @llvm.bswap.i32(i32 %459) #9
  %461 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i22.3.i = getelementptr i8, ptr %462, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.3.i, i32 %460) #9, !srcloc !134
  br label %while.body.i.i530

while.body.i.i530:                                ; preds = %if.end.i.i535.while.body.i.i530_crit_edge, %wait_wfifo_ready.exit.i.3.i
  %dec13.i.i528 = phi i32 [ %dec.i.i533, %if.end.i.i535.while.body.i.i530_crit_edge ], [ 65535, %wait_wfifo_ready.exit.i.3.i ]
  %463 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %464, i32 44
  %465 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %466 = and i8 %465, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %466)
  %tobool2.not.i.i529 = icmp eq i8 %466, 0
  br i1 %tobool2.not.i.i529, label %if.end.i.i535, label %do.body.i.i532

do.body.i.i532:                                   ; preds = %while.body.i.i530
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %467 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %reg.i427, align 8
  %add.ptr4.i.i531 = getelementptr i8, ptr %468, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i531, i8 0) #9, !srcloc !149
  br label %wait_completion.exit.i541

if.end.i.i535:                                    ; preds = %while.body.i.i530
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %469 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %469(i32 noundef 214748) #9
  %dec.i.i533 = add nsw i32 %dec13.i.i528, -1
  %tobool.not.i.i534 = icmp eq i32 %dec13.i.i528, 0
  br i1 %tobool.not.i.i534, label %while.end.i.i538, label %if.end.i.i535.while.body.i.i530_crit_edge

if.end.i.i535.while.body.i.i530_crit_edge:        ; preds = %if.end.i.i535
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i530

while.end.i.i538:                                 ; preds = %if.end.i.i535
  call void @__sanitizer_cov_trace_pc() #11
  %470 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %pdev, align 8
  %dev.i.i.i536 = getelementptr inbounds %struct.platform_device, ptr %471, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i536, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %472 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %reg.i427, align 8
  %add.ptr9.i.i537 = getelementptr i8, ptr %473, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i537, i8 0) #9, !srcloc !149
  br label %wait_completion.exit.i541

wait_completion.exit.i541:                        ; preds = %while.end.i.i538, %do.body.i.i532
  %inc.i539 = add nuw nsw i32 %sector.025.i, 1
  %exitcond.not.i540 = icmp eq i32 %inc.i539, %cond.i464
  br i1 %exitcond.not.i540, label %wait_completion.exit.i541.runtime_exit_crit_edge, label %wait_completion.exit.i541.for.body.i482_crit_edge

wait_completion.exit.i541.for.body.i482_crit_edge: ; preds = %wait_completion.exit.i541
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i482

wait_completion.exit.i541.runtime_exit_crit_edge: ; preds = %wait_completion.exit.i541
  call void @__sanitizer_cov_trace_pc() #11
  br label %runtime_exit

if.else120:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool122.not = icmp eq i32 %369, 0
  br i1 %tobool122.not, label %if.then123, label %do.end127

if.then123:                                       ; preds = %if.else120
  %seqin_page_addr.i542 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 9
  %474 = ptrtoint ptr %seqin_page_addr.i542 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %seqin_page_addr.i542, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load110)
  %tobool.not.i545 = icmp sgt i8 %bf.load110, -1
  %cond.i546 = select i1 %tobool.not.i545, i32 1, i32 4
  %flcmncr_base.i.i547 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %476 = ptrtoint ptr %flcmncr_base.i.i547 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %flcmncr_base.i.i547, align 8
  %and.i.i548 = and i32 %477, -786433
  %or.i.i549 = or i32 %and.i.i548, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load110)
  %tobool.not62.i.i550 = icmp slt i8 %bf.load110, 0
  %flcmncr_val.0.i.i551 = select i1 %tobool.not62.i.i550, i32 %or.i.i549, i32 %and.i.i548
  %rw_ADRCNT13.i.i552 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %478 = ptrtoint ptr %rw_ADRCNT13.i.i552 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %rw_ADRCNT13.i.i552, align 4
  %options16.i.i553 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %480 = ptrtoint ptr %options16.i.i553 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %options16.i.i553, align 8
  %and17.i.i554 = shl i32 %481, 18
  %482 = and i32 %and17.i.i554, 524288
  %483 = or i32 %482, %flcmncr_val.0.i.i551
  %or28.i.i555 = or i32 %479, 36896768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %484 = tail call i32 @llvm.bswap.i32(i32 %483) #9
  %485 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %reg.i427, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %486, i32 %484) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %487 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i555) #9
  %488 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %reg.i427, align 8
  %add.ptr33.i.i557 = getelementptr i8, ptr %489, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i557, i32 %487) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %490 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %reg.i427, align 8
  %add.ptr38.i.i558 = getelementptr i8, ptr %491, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i558, i32 -2146435072) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %492 = ptrtoint ptr %flintdmacr_base.i425 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %flintdmacr_base.i425, align 4
  %or1.i.i560 = or i32 %493, 786432
  %494 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i560) #9
  %495 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i561 = getelementptr i8, ptr %496, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i561, i32 %494) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %497 = ptrtoint ptr %flintdmacr_base.i425 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %flintdmacr_base.i425, align 4
  %499 = tail call i32 @llvm.bswap.i32(i32 %498) #9
  %500 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %reg.i427, align 8
  %add.ptr6.i.i562 = getelementptr i8, ptr %501, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i562, i32 %499) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %502 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %reg.i427, align 8
  %504 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %503) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  %505 = or i32 %504, 262144
  %506 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %reg.i427, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %507, i32 %505) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %508 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %reg.i427, align 8
  %add.ptr11.i = getelementptr i8, ptr %509, i32 4
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !131
  %511 = tail call i32 @llvm.bswap.i32(i32 %510) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %or15.i = or i32 %511, %cond.i546
  %512 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %513 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %reg.i427, align 8
  %add.ptr17.i = getelementptr i8, ptr %514, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %512) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %shl.i563 = shl i32 %475, 2
  %515 = tail call i32 @llvm.bswap.i32(i32 %shl.i563) #9
  %516 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %reg.i427, align 8
  %add.ptr22.i = getelementptr i8, ptr %517, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %515) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %518 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %519, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i57.i, i8 1) #9, !srcloc !149
  br label %for.body.i568

for.body.i568:                                    ; preds = %write_ec_fiforeg.exit.i.for.body.i568_crit_edge, %if.then123
  %sector.074.i = phi i32 [ 0, %if.then123 ], [ %inc.i583, %write_ec_fiforeg.exit.i.for.body.i568_crit_edge ]
  %mul.i566 = shl i32 %sector.074.i, 9
  %arrayidx.i.i567 = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %mul.i566
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %wait_wfifo_ready.exit.i.i578.for.body.i.i_crit_edge, %for.body.i568
  %i.07.i.i = phi i32 [ 0, %for.body.i568 ], [ %inc.i.i, %wait_wfifo_ready.exit.i.i578.for.body.i.i_crit_edge ]
  br label %while.body.i.i.i572

while.body.i.i.i572:                              ; preds = %if.end.i.i.i575.while.body.i.i.i572_crit_edge, %for.body.i.i
  %dec4.i.i.i569 = phi i32 [ 65535, %for.body.i.i ], [ %dec.i.i.i573, %if.end.i.i.i575.while.body.i.i.i572_crit_edge ]
  %520 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i.i570 = getelementptr i8, ptr %521, i32 20
  %522 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i570) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %523 = and i32 %522, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %523)
  %cmp.not.i.i.i571 = icmp eq i32 %523, 0
  br i1 %cmp.not.i.i.i571, label %if.end.i.i.i575, label %while.body.i.i.i572.wait_wfifo_ready.exit.i.i578_crit_edge

while.body.i.i.i572.wait_wfifo_ready.exit.i.i578_crit_edge: ; preds = %while.body.i.i.i572
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wfifo_ready.exit.i.i578

if.end.i.i.i575:                                  ; preds = %while.body.i.i.i572
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %524 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %524(i32 noundef 214748) #9
  %dec.i.i.i573 = add nsw i32 %dec4.i.i.i569, -1
  %tobool.not.i.i.i574 = icmp eq i32 %dec4.i.i.i569, 0
  br i1 %tobool.not.i.i.i574, label %while.end.i.i.i577, label %if.end.i.i.i575.while.body.i.i.i572_crit_edge

if.end.i.i.i575.while.body.i.i.i572_crit_edge:    ; preds = %if.end.i.i.i575
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i572

while.end.i.i.i577:                               ; preds = %if.end.i.i.i575
  call void @__sanitizer_cov_trace_pc() #11
  %525 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %pdev, align 8
  %dev.i.i.i.i576 = getelementptr inbounds %struct.platform_device, ptr %526, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i576, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wfifo_ready) #12
  br label %wait_wfifo_ready.exit.i.i578

wait_wfifo_ready.exit.i.i578:                     ; preds = %while.end.i.i.i577, %while.body.i.i.i572.wait_wfifo_ready.exit.i.i578_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %arrayidx1.i.i = getelementptr i32, ptr %arrayidx.i.i567, i32 %i.07.i.i
  %527 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %arrayidx1.i.i, align 4
  %529 = tail call i32 @llvm.bswap.i32(i32 %528) #9
  %530 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %531, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %529) #9, !srcloc !134
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i.i, label %write_fiforeg.exit.i, label %wait_wfifo_ready.exit.i.i578.for.body.i.i_crit_edge

wait_wfifo_ready.exit.i.i578.for.body.i.i_crit_edge: ; preds = %wait_wfifo_ready.exit.i.i578
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

write_fiforeg.exit.i:                             ; preds = %wait_wfifo_ready.exit.i.i578
  %532 = ptrtoint ptr %writesize117 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %writesize117, align 4
  %mul23.i = shl i32 %sector.074.i, 4
  %add.i579 = add i32 %533, %mul23.i
  %arrayidx.i59.i = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 %add.i579
  br label %while.body.i.i65.i

while.body.i.i65.i:                               ; preds = %if.end.i.i68.i.while.body.i.i65.i_crit_edge, %write_fiforeg.exit.i
  %dec4.i.i62.i = phi i32 [ 65535, %write_fiforeg.exit.i ], [ %dec.i.i66.i, %if.end.i.i68.i.while.body.i.i65.i_crit_edge ]
  %534 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i63.i = getelementptr i8, ptr %535, i32 20
  %536 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63.i) #9, !srcloc !131
  %537 = and i32 %536, 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %537)
  %cmp.not.i.i64.i = icmp eq i32 %537, 0
  br i1 %cmp.not.i.i64.i, label %if.end.i.i68.i, label %while.body.i.i65.i.wait_wecfifo_ready.exit.i.i_crit_edge

while.body.i.i65.i.wait_wecfifo_ready.exit.i.i_crit_edge: ; preds = %while.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wecfifo_ready.exit.i.i

if.end.i.i68.i:                                   ; preds = %while.body.i.i65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %538 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %538(i32 noundef 214748) #9
  %dec.i.i66.i = add nsw i32 %dec4.i.i62.i, -1
  %tobool.not.i.i67.i = icmp eq i32 %dec4.i.i62.i, 0
  br i1 %tobool.not.i.i67.i, label %while.end.i.i70.i, label %if.end.i.i68.i.while.body.i.i65.i_crit_edge

if.end.i.i68.i.while.body.i.i65.i_crit_edge:      ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i65.i

while.end.i.i70.i:                                ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  %539 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %pdev, align 8
  %dev.i.i.i69.i = getelementptr inbounds %struct.platform_device, ptr %540, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i69.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wecfifo_ready) #12
  br label %wait_wecfifo_ready.exit.i.i

wait_wecfifo_ready.exit.i.i:                      ; preds = %while.end.i.i70.i, %while.body.i.i65.i.wait_wecfifo_ready.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %541 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %arrayidx.i59.i, align 4
  %543 = tail call i32 @llvm.bswap.i32(i32 %542) #9
  %544 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i71.i = getelementptr i8, ptr %545, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %543) #9, !srcloc !134
  br label %while.body.i.1.i.i

while.body.i.1.i.i:                               ; preds = %if.end.i.1.i.i.while.body.i.1.i.i_crit_edge, %wait_wecfifo_ready.exit.i.i
  %dec4.i.1.i.i = phi i32 [ 65535, %wait_wecfifo_ready.exit.i.i ], [ %dec.i.1.i.i, %if.end.i.1.i.i.while.body.i.1.i.i_crit_edge ]
  %546 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %547, i32 20
  %548 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #9, !srcloc !131
  %549 = and i32 %548, 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %549)
  %cmp.not.i.1.i.i = icmp eq i32 %549, 0
  br i1 %cmp.not.i.1.i.i, label %if.end.i.1.i.i, label %while.body.i.1.i.i.wait_wecfifo_ready.exit.1.i.i_crit_edge

while.body.i.1.i.i.wait_wecfifo_ready.exit.1.i.i_crit_edge: ; preds = %while.body.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wecfifo_ready.exit.1.i.i

if.end.i.1.i.i:                                   ; preds = %while.body.i.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %550 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %550(i32 noundef 214748) #9
  %dec.i.1.i.i = add nsw i32 %dec4.i.1.i.i, -1
  %tobool.not.i.1.i.i = icmp eq i32 %dec4.i.1.i.i, 0
  br i1 %tobool.not.i.1.i.i, label %while.end.i.1.i.i, label %if.end.i.1.i.i.while.body.i.1.i.i_crit_edge

if.end.i.1.i.i.while.body.i.1.i.i_crit_edge:      ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.1.i.i

while.end.i.1.i.i:                                ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %551 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %pdev, align 8
  %dev.i.i.1.i.i = getelementptr inbounds %struct.platform_device, ptr %552, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.1.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wecfifo_ready) #12
  br label %wait_wecfifo_ready.exit.1.i.i

wait_wecfifo_ready.exit.1.i.i:                    ; preds = %while.end.i.1.i.i, %while.body.i.1.i.i.wait_wecfifo_ready.exit.1.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %arrayidx9.1.i.i = getelementptr i32, ptr %arrayidx.i59.i, i32 1
  %553 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %arrayidx9.1.i.i, align 4
  %555 = tail call i32 @llvm.bswap.i32(i32 %554) #9
  %556 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %reg.i427, align 8
  %add.ptr.1.i.i580 = getelementptr i8, ptr %557, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i.i580, i32 %555) #9, !srcloc !134
  br label %while.body.i.2.i.i

while.body.i.2.i.i:                               ; preds = %if.end.i.2.i.i.while.body.i.2.i.i_crit_edge, %wait_wecfifo_ready.exit.1.i.i
  %dec4.i.2.i.i = phi i32 [ 65535, %wait_wecfifo_ready.exit.1.i.i ], [ %dec.i.2.i.i, %if.end.i.2.i.i.while.body.i.2.i.i_crit_edge ]
  %558 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %559, i32 20
  %560 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #9, !srcloc !131
  %561 = and i32 %560, 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %cmp.not.i.2.i.i = icmp eq i32 %561, 0
  br i1 %cmp.not.i.2.i.i, label %if.end.i.2.i.i, label %while.body.i.2.i.i.wait_wecfifo_ready.exit.2.i.i_crit_edge

while.body.i.2.i.i.wait_wecfifo_ready.exit.2.i.i_crit_edge: ; preds = %while.body.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wecfifo_ready.exit.2.i.i

if.end.i.2.i.i:                                   ; preds = %while.body.i.2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %562 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %562(i32 noundef 214748) #9
  %dec.i.2.i.i = add nsw i32 %dec4.i.2.i.i, -1
  %tobool.not.i.2.i.i = icmp eq i32 %dec4.i.2.i.i, 0
  br i1 %tobool.not.i.2.i.i, label %while.end.i.2.i.i, label %if.end.i.2.i.i.while.body.i.2.i.i_crit_edge

if.end.i.2.i.i.while.body.i.2.i.i_crit_edge:      ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.2.i.i

while.end.i.2.i.i:                                ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %563 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %pdev, align 8
  %dev.i.i.2.i.i = getelementptr inbounds %struct.platform_device, ptr %564, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.2.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wecfifo_ready) #12
  br label %wait_wecfifo_ready.exit.2.i.i

wait_wecfifo_ready.exit.2.i.i:                    ; preds = %while.end.i.2.i.i, %while.body.i.2.i.i.wait_wecfifo_ready.exit.2.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %arrayidx9.2.i.i = getelementptr i32, ptr %arrayidx.i59.i, i32 2
  %565 = ptrtoint ptr %arrayidx9.2.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %arrayidx9.2.i.i, align 4
  %567 = tail call i32 @llvm.bswap.i32(i32 %566) #9
  %568 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %reg.i427, align 8
  %add.ptr.2.i.i581 = getelementptr i8, ptr %569, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i.i581, i32 %567) #9, !srcloc !134
  br label %while.body.i.3.i.i

while.body.i.3.i.i:                               ; preds = %if.end.i.3.i.i.while.body.i.3.i.i_crit_edge, %wait_wecfifo_ready.exit.2.i.i
  %dec4.i.3.i.i = phi i32 [ 65535, %wait_wecfifo_ready.exit.2.i.i ], [ %dec.i.3.i.i, %if.end.i.3.i.i.while.body.i.3.i.i_crit_edge ]
  %570 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.3.i.i = getelementptr i8, ptr %571, i32 20
  %572 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #9, !srcloc !131
  %573 = and i32 %572, 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %573)
  %cmp.not.i.3.i.i = icmp eq i32 %573, 0
  br i1 %cmp.not.i.3.i.i, label %if.end.i.3.i.i, label %while.body.i.3.i.i.write_ec_fiforeg.exit.i_crit_edge

while.body.i.3.i.i.write_ec_fiforeg.exit.i_crit_edge: ; preds = %while.body.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_ec_fiforeg.exit.i

if.end.i.3.i.i:                                   ; preds = %while.body.i.3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %574 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %574(i32 noundef 214748) #9
  %dec.i.3.i.i = add nsw i32 %dec4.i.3.i.i, -1
  %tobool.not.i.3.i.i = icmp eq i32 %dec4.i.3.i.i, 0
  br i1 %tobool.not.i.3.i.i, label %while.end.i.3.i.i, label %if.end.i.3.i.i.while.body.i.3.i.i_crit_edge

if.end.i.3.i.i.while.body.i.3.i.i_crit_edge:      ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.3.i.i

while.end.i.3.i.i:                                ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %575 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %pdev, align 8
  %dev.i.i.3.i.i = getelementptr inbounds %struct.platform_device, ptr %576, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.3.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wecfifo_ready) #12
  br label %write_ec_fiforeg.exit.i

write_ec_fiforeg.exit.i:                          ; preds = %while.end.i.3.i.i, %while.body.i.3.i.i.write_ec_fiforeg.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %arrayidx9.3.i.i = getelementptr i32, ptr %arrayidx.i59.i, i32 3
  %577 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %arrayidx9.3.i.i, align 4
  %579 = tail call i32 @llvm.bswap.i32(i32 %578) #9
  %580 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %reg.i427, align 8
  %add.ptr.3.i.i582 = getelementptr i8, ptr %581, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i.i582, i32 %579) #9, !srcloc !134
  %inc.i583 = add nuw nsw i32 %sector.074.i, 1
  %exitcond.not.i584 = icmp eq i32 %inc.i583, %cond.i546
  br i1 %exitcond.not.i584, label %write_ec_fiforeg.exit.i.while.body.i.i587_crit_edge, label %write_ec_fiforeg.exit.i.for.body.i568_crit_edge

write_ec_fiforeg.exit.i.for.body.i568_crit_edge:  ; preds = %write_ec_fiforeg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i568

write_ec_fiforeg.exit.i.while.body.i.i587_crit_edge: ; preds = %write_ec_fiforeg.exit.i
  br label %while.body.i.i587

while.body.i.i587:                                ; preds = %if.end.i.i592.while.body.i.i587_crit_edge, %write_ec_fiforeg.exit.i.while.body.i.i587_crit_edge
  %dec13.i.i585 = phi i32 [ %dec.i.i590, %if.end.i.i592.while.body.i.i587_crit_edge ], [ 65535, %write_ec_fiforeg.exit.i.while.body.i.i587_crit_edge ]
  %582 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i73.i = getelementptr i8, ptr %583, i32 44
  %584 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73.i) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %585 = and i8 %584, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %tobool2.not.i.i586 = icmp eq i8 %585, 0
  br i1 %tobool2.not.i.i586, label %if.end.i.i592, label %do.body.i.i589

do.body.i.i589:                                   ; preds = %while.body.i.i587
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %586 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %reg.i427, align 8
  %add.ptr4.i.i588 = getelementptr i8, ptr %587, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i588, i8 0) #9, !srcloc !149
  br label %execmd_write_page_sector.exit

if.end.i.i592:                                    ; preds = %while.body.i.i587
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %588 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %588(i32 noundef 214748) #9
  %dec.i.i590 = add nsw i32 %dec13.i.i585, -1
  %tobool.not.i.i591 = icmp eq i32 %dec13.i.i585, 0
  br i1 %tobool.not.i.i591, label %while.end.i.i595, label %if.end.i.i592.while.body.i.i587_crit_edge

if.end.i.i592.while.body.i.i587_crit_edge:        ; preds = %if.end.i.i592
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i587

while.end.i.i595:                                 ; preds = %if.end.i.i592
  call void @__sanitizer_cov_trace_pc() #11
  %589 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %pdev, align 8
  %dev.i.i.i593 = getelementptr inbounds %struct.platform_device, ptr %590, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i593, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %591 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %reg.i427, align 8
  %add.ptr9.i.i594 = getelementptr i8, ptr %592, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i594, i8 0) #9, !srcloc !149
  br label %execmd_write_page_sector.exit

execmd_write_page_sector.exit:                    ; preds = %while.end.i.i595, %do.body.i.i589
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %593 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %reg.i427, align 8
  %595 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %594) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  %596 = and i32 %595, -262145
  %597 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %reg.i427, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %598, i32 %596) #9, !srcloc !134
  br label %runtime_exit

do.end127:                                        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #11
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %runtime_exit

if.end131:                                        ; preds = %if.end108
  %flcmncr_base.i597 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %599 = ptrtoint ptr %flcmncr_base.i597 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %flcmncr_base.i597, align 8
  %and.i600 = and i32 %600, -786433
  %or.i601 = or i32 %and.i600, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load110)
  %tobool.not62.i602 = icmp slt i8 %bf.load110, 0
  %flcmncr_val.0.i603 = select i1 %tobool.not62.i602, i32 %or.i601, i32 %and.i600
  %rw_ADRCNT13.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %601 = ptrtoint ptr %rw_ADRCNT13.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %rw_ADRCNT13.i, align 4
  %options16.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %603 = ptrtoint ptr %options16.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %options16.i, align 8
  %and17.i = shl i32 %604, 18
  %605 = and i32 %and17.i, 524288
  %606 = or i32 %605, %flcmncr_val.0.i603
  %or28.i604 = or i32 %602, 36896768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %607 = tail call i32 @llvm.bswap.i32(i32 %606) #9
  %608 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %reg.i427, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %609, i32 %607) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %610 = tail call i32 @llvm.bswap.i32(i32 %or28.i604) #9
  %611 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %reg.i427, align 8
  %add.ptr33.i606 = getelementptr i8, ptr %612, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i606, i32 %610) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %613 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %reg.i427, align 8
  %add.ptr38.i607 = getelementptr i8, ptr %614, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i607, i32 -2146435072) #9, !srcloc !134
  %seqin_column134 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 8
  %615 = ptrtoint ptr %seqin_column134 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %seqin_column134, align 8
  %seqin_page_addr135 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 9
  %617 = ptrtoint ptr %seqin_page_addr135 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %seqin_page_addr135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %616)
  %cmp.i608 = icmp eq i32 %616, -1
  br i1 %cmp.i608, label %if.end131.set_addr.exit634_crit_edge, label %if.else.i610

if.end131.set_addr.exit634_crit_edge:             ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit634

if.else.i610:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %618)
  %cmp1.not.i609 = icmp eq i32 %618, -1
  br i1 %cmp1.not.i609, label %if.else.i610.set_addr.exit634_crit_edge, label %if.then2.i618

if.else.i610.set_addr.exit634_crit_edge:          ; preds = %if.else.i610
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit634

if.then2.i618:                                    ; preds = %if.else.i610
  %619 = ptrtoint ptr %options16.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %options16.i, align 8
  %and.i612 = lshr i32 %620, 1
  %and.lobit.i613 = and i32 %and.i612, 1
  %spec.select.i614 = ashr i32 %616, %and.lobit.i613
  %621 = ptrtoint ptr %page_size96 to i32
  call void @__asan_load1_noabort(i32 %621)
  %bf.load.i616 = load i8, ptr %page_size96, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i616)
  %tobool4.not.i617 = icmp sgt i8 %bf.load.i616, -1
  br i1 %tobool4.not.i617, label %if.else17.i630, label %if.then5.i623

if.then5.i623:                                    ; preds = %if.then2.i618
  %and6.i619 = and i32 %spec.select.i614, 4095
  %and7.i620 = shl i32 %618, 16
  %or11.i = or i32 %and6.i619, %and7.i620
  %622 = ptrtoint ptr %rw_ADRCNT13.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %rw_ADRCNT13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %623)
  %cmp12.i622 = icmp eq i32 %623, -2147483648
  br i1 %cmp12.i622, label %if.then13.i627, label %if.then5.i623.set_addr.exit634_crit_edge

if.then5.i623.set_addr.exit634_crit_edge:         ; preds = %if.then5.i623
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit634

if.then13.i627:                                   ; preds = %if.then5.i623
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %624 = shl i32 %618, 8
  %and15.i624 = and i32 %624, -16777216
  %625 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i626 = getelementptr i8, ptr %626, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i626, i32 %and15.i624) #9, !srcloc !134
  br label %set_addr.exit634

if.else17.i630:                                   ; preds = %if.then2.i618
  call void @__sanitizer_cov_trace_pc() #11
  %and18.i628 = shl i32 %618, 8
  %or28.i629 = or i32 %spec.select.i614, %and18.i628
  br label %set_addr.exit634

set_addr.exit634:                                 ; preds = %if.else17.i630, %if.then13.i627, %if.then5.i623.set_addr.exit634_crit_edge, %if.else.i610.set_addr.exit634_crit_edge, %if.end131.set_addr.exit634_crit_edge
  %addr.0.i631 = phi i32 [ %or11.i, %if.then13.i627 ], [ %or11.i, %if.then5.i623.set_addr.exit634_crit_edge ], [ %or28.i629, %if.else17.i630 ], [ 0, %if.else.i610.set_addr.exit634_crit_edge ], [ %618, %if.end131.set_addr.exit634_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %627 = tail call i32 @llvm.bswap.i32(i32 %addr.0.i631) #9
  %628 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %reg.i427, align 8
  %add.ptr36.i633 = getelementptr i8, ptr %629, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i633, i32 %627) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %index139 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 7
  %630 = ptrtoint ptr %index139 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %index139, align 4
  %632 = tail call i32 @llvm.bswap.i32(i32 %631)
  %633 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %reg.i427, align 8
  %add.ptr141 = getelementptr i8, ptr %634, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %632) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %635 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i636 = getelementptr i8, ptr %636, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i636, i8 1) #9, !srcloc !149
  %637 = ptrtoint ptr %index139 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %index139, align 4
  %arrayidx.i637 = getelementptr %struct.sh_flctl, ptr %chip, i32 0, i32 5, i32 0
  %add.i638 = add i32 %638, 3
  %div.i = sdiv i32 %add.i638, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i638)
  %cmp6.i = icmp sgt i32 %add.i638, 3
  br i1 %cmp6.i, label %set_addr.exit634.for.body.i640_crit_edge, label %set_addr.exit634.while.body.i656.preheader_crit_edge

set_addr.exit634.while.body.i656.preheader_crit_edge: ; preds = %set_addr.exit634
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i656.preheader

set_addr.exit634.for.body.i640_crit_edge:         ; preds = %set_addr.exit634
  br label %for.body.i640

for.body.i640:                                    ; preds = %wait_wfifo_ready.exit.i.for.body.i640_crit_edge, %set_addr.exit634.for.body.i640_crit_edge
  %i.07.i = phi i32 [ %inc.i650, %wait_wfifo_ready.exit.i.for.body.i640_crit_edge ], [ 0, %set_addr.exit634.for.body.i640_crit_edge ]
  br label %while.body.i.i643

while.body.i.i643:                                ; preds = %if.end.i.i646.while.body.i.i643_crit_edge, %for.body.i640
  %dec4.i.i = phi i32 [ 65535, %for.body.i640 ], [ %dec.i.i644, %if.end.i.i646.while.body.i.i643_crit_edge ]
  %639 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i.i641 = getelementptr i8, ptr %640, i32 20
  %641 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i641) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %642 = and i32 %641, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %642)
  %cmp.not.i.i642 = icmp eq i32 %642, 0
  br i1 %cmp.not.i.i642, label %if.end.i.i646, label %while.body.i.i643.wait_wfifo_ready.exit.i_crit_edge

while.body.i.i643.wait_wfifo_ready.exit.i_crit_edge: ; preds = %while.body.i.i643
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_wfifo_ready.exit.i

if.end.i.i646:                                    ; preds = %while.body.i.i643
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %643 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %643(i32 noundef 214748) #9
  %dec.i.i644 = add nsw i32 %dec4.i.i, -1
  %tobool.not.i.i645 = icmp eq i32 %dec4.i.i, 0
  br i1 %tobool.not.i.i645, label %while.end.i.i648, label %if.end.i.i646.while.body.i.i643_crit_edge

if.end.i.i646.while.body.i.i643_crit_edge:        ; preds = %if.end.i.i646
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i643

while.end.i.i648:                                 ; preds = %if.end.i.i646
  call void @__sanitizer_cov_trace_pc() #11
  %644 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %pdev, align 8
  %dev.i.i.i647 = getelementptr inbounds %struct.platform_device, ptr %645, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i647, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_wfifo_ready) #12
  br label %wait_wfifo_ready.exit.i

wait_wfifo_ready.exit.i:                          ; preds = %while.end.i.i648, %while.body.i.i643.wait_wfifo_ready.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %arrayidx1.i = getelementptr i32, ptr %arrayidx.i637, i32 %i.07.i
  %646 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %arrayidx1.i, align 4
  %648 = tail call i32 @llvm.bswap.i32(i32 %647) #9
  %649 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i649 = getelementptr i8, ptr %650, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i649, i32 %648) #9, !srcloc !134
  %inc.i650 = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i651 = icmp eq i32 %inc.i650, %div.i
  br i1 %exitcond.not.i651, label %wait_wfifo_ready.exit.i.while.body.i656.preheader_crit_edge, label %wait_wfifo_ready.exit.i.for.body.i640_crit_edge

wait_wfifo_ready.exit.i.for.body.i640_crit_edge:  ; preds = %wait_wfifo_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i640

wait_wfifo_ready.exit.i.while.body.i656.preheader_crit_edge: ; preds = %wait_wfifo_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i656.preheader

while.body.i656.preheader:                        ; preds = %wait_wfifo_ready.exit.i.while.body.i656.preheader_crit_edge, %set_addr.exit634.while.body.i656.preheader_crit_edge
  br label %while.body.i656

while.body.i656:                                  ; preds = %if.end.i661.while.body.i656_crit_edge, %while.body.i656.preheader
  %dec13.i653 = phi i32 [ %dec.i659, %if.end.i661.while.body.i656_crit_edge ], [ 65535, %while.body.i656.preheader ]
  %651 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %reg.i427, align 8
  %add.ptr.i654 = getelementptr i8, ptr %652, i32 44
  %653 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i654) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %654 = and i8 %653, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %654)
  %tobool2.not.i655 = icmp eq i8 %654, 0
  br i1 %tobool2.not.i655, label %if.end.i661, label %do.body.i658

do.body.i658:                                     ; preds = %while.body.i656
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %655 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %reg.i427, align 8
  %add.ptr4.i657 = getelementptr i8, ptr %656, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i657, i8 0) #9, !srcloc !149
  br label %runtime_exit

if.end.i661:                                      ; preds = %while.body.i656
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %657 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %657(i32 noundef 214748) #9
  %dec.i659 = add nsw i32 %dec13.i653, -1
  %tobool.not.i660 = icmp eq i32 %dec13.i653, 0
  br i1 %tobool.not.i660, label %while.end.i665, label %if.end.i661.while.body.i656_crit_edge

if.end.i661.while.body.i656_crit_edge:            ; preds = %if.end.i661
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i656

while.end.i665:                                   ; preds = %if.end.i661
  call void @__sanitizer_cov_trace_pc() #11
  %658 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %pdev, align 8
  %dev.i.i663 = getelementptr inbounds %struct.platform_device, ptr %659, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i663, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %660 = ptrtoint ptr %reg.i427 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %reg.i427, align 8
  %add.ptr9.i664 = getelementptr i8, ptr %661, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i664, i8 0) #9, !srcloc !149
  br label %runtime_exit

sw.bb143:                                         ; preds = %if.then
  %flcmncr_base.i667 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %662 = ptrtoint ptr %flcmncr_base.i667 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %flcmncr_base.i667, align 8
  %and.i670 = and i32 %663, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %664 = tail call i32 @llvm.bswap.i32(i32 %and.i670) #9
  %reg.i675 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %665 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %reg.i675, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %666, i32 %664) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %667 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %reg.i675, align 8
  %add.ptr33.i676 = getelementptr i8, ptr %668, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i676, i32 256) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %669 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %reg.i675, align 8
  %add.ptr38.i677 = getelementptr i8, ptr %670, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i677, i32 1879048192) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %671 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %reg.i675, align 8
  %add.ptr36.i680 = getelementptr i8, ptr %672, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i680, i32 -1) #9, !srcloc !134
  %673 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 1, ptr %read_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  tail call void @arm_heavy_mb() #9
  %674 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %read_bytes, align 8
  %676 = tail call i32 @llvm.bswap.i32(i32 %675)
  %677 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %reg.i675, align 8
  %add.ptr150 = getelementptr i8, ptr %678, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %676) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %679 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %reg.i675, align 8
  %add.ptr.i682 = getelementptr i8, ptr %680, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i682, i8 1) #9, !srcloc !149
  br label %while.body.i.i687

while.body.i.i687:                                ; preds = %if.end.i.i692.while.body.i.i687_crit_edge, %sw.bb143
  %dec13.i.i684 = phi i32 [ 65535, %sw.bb143 ], [ %dec.i.i690, %if.end.i.i692.while.body.i.i687_crit_edge ]
  %681 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %reg.i675, align 8
  %add.ptr.i.i685 = getelementptr i8, ptr %682, i32 44
  %683 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i685) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %684 = and i8 %683, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %684)
  %tobool2.not.i.i686 = icmp eq i8 %684, 0
  br i1 %tobool2.not.i.i686, label %if.end.i.i692, label %do.body.i.i689

do.body.i.i689:                                   ; preds = %while.body.i.i687
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %685 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %reg.i675, align 8
  %add.ptr4.i.i688 = getelementptr i8, ptr %686, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i688, i8 0) #9, !srcloc !149
  br label %read_datareg.exit

if.end.i.i692:                                    ; preds = %while.body.i.i687
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %687 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %687(i32 noundef 214748) #9
  %dec.i.i690 = add nsw i32 %dec13.i.i684, -1
  %tobool.not.i.i691 = icmp eq i32 %dec13.i.i684, 0
  br i1 %tobool.not.i.i691, label %while.end.i.i696, label %if.end.i.i692.while.body.i.i687_crit_edge

if.end.i.i692.while.body.i.i687_crit_edge:        ; preds = %if.end.i.i692
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i687

while.end.i.i696:                                 ; preds = %if.end.i.i692
  call void @__sanitizer_cov_trace_pc() #11
  %688 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %pdev, align 8
  %dev.i.i.i694 = getelementptr inbounds %struct.platform_device, ptr %689, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i694, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %690 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %reg.i675, align 8
  %add.ptr9.i.i695 = getelementptr i8, ptr %691, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i695, i8 0) #9, !srcloc !149
  br label %read_datareg.exit

read_datareg.exit:                                ; preds = %while.end.i.i696, %do.body.i.i689
  %done_buff.i = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 5
  %692 = ptrtoint ptr %reg.i675 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %reg.i675, align 8
  %add.ptr.i697 = getelementptr i8, ptr %693, i32 16
  %694 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i697) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  %695 = ptrtoint ptr %done_buff.i to i32
  call void @__asan_store4_noabort(i32 %695)
  store i32 %694, ptr %done_buff.i, align 4
  br label %runtime_exit

sw.bb151:                                         ; preds = %if.then
  %flcmncr_base.i699 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %696 = ptrtoint ptr %flcmncr_base.i699 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %flcmncr_base.i699, align 8
  %and.i702 = and i32 %697, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %698 = tail call i32 @llvm.bswap.i32(i32 %and.i702) #9
  %reg.i707 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %699 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %reg.i707, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %700, i32 %698) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %701 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %reg.i707, align 8
  %add.ptr33.i708 = getelementptr i8, ptr %702, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i708, i32 256) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %703 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %reg.i707, align 8
  %add.ptr38.i709 = getelementptr i8, ptr %704, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i709, i32 -16777216) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %705 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %reg.i707, align 8
  %add.ptr36.i712 = getelementptr i8, ptr %706, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i712, i32 -1) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %707 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %reg.i707, align 8
  %add.ptr156 = getelementptr i8, ptr %708, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 0) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %709 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %reg.i707, align 8
  %add.ptr.i714 = getelementptr i8, ptr %710, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i714, i8 1) #9, !srcloc !149
  br label %while.body.i719

while.body.i719:                                  ; preds = %if.end.i724.while.body.i719_crit_edge, %sw.bb151
  %dec13.i716 = phi i32 [ 65535, %sw.bb151 ], [ %dec.i722, %if.end.i724.while.body.i719_crit_edge ]
  %711 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %reg.i707, align 8
  %add.ptr.i717 = getelementptr i8, ptr %712, i32 44
  %713 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i717) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %714 = and i8 %713, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %714)
  %tobool2.not.i718 = icmp eq i8 %714, 0
  br i1 %tobool2.not.i718, label %if.end.i724, label %do.body.i721

do.body.i721:                                     ; preds = %while.body.i719
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %715 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %reg.i707, align 8
  %add.ptr4.i720 = getelementptr i8, ptr %716, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i720, i8 0) #9, !srcloc !149
  br label %runtime_exit

if.end.i724:                                      ; preds = %while.body.i719
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %717 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %717(i32 noundef 214748) #9
  %dec.i722 = add nsw i32 %dec13.i716, -1
  %tobool.not.i723 = icmp eq i32 %dec13.i716, 0
  br i1 %tobool.not.i723, label %while.end.i728, label %if.end.i724.while.body.i719_crit_edge

if.end.i724.while.body.i719_crit_edge:            ; preds = %if.end.i724
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i719

while.end.i728:                                   ; preds = %if.end.i724
  call void @__sanitizer_cov_trace_pc() #11
  %718 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %pdev, align 8
  %dev.i.i726 = getelementptr inbounds %struct.platform_device, ptr %719, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i726, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %720 = ptrtoint ptr %reg.i707 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %reg.i707, align 8
  %add.ptr9.i727 = getelementptr i8, ptr %721, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i727, i8 0) #9, !srcloc !149
  br label %runtime_exit

do.body157:                                       ; preds = %set_addr.exit361, %if.end35, %set_addr.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %722 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %read_bytes, align 8
  %724 = tail call i32 @llvm.bswap.i32(i32 %723)
  %reg161 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 3
  %725 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %reg161, align 8
  %add.ptr162 = getelementptr i8, ptr %726, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %724) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %flintdmacr_base.i730 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 15
  %727 = ptrtoint ptr %flintdmacr_base.i730 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %flintdmacr_base.i730, align 4
  %or1.i731 = or i32 %728, 786432
  %729 = tail call i32 @llvm.bswap.i32(i32 %or1.i731) #9
  %730 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %reg161, align 8
  %add.ptr.i733 = getelementptr i8, ptr %731, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i733, i32 %729) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %732 = ptrtoint ptr %flintdmacr_base.i730 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %flintdmacr_base.i730, align 4
  %734 = tail call i32 @llvm.bswap.i32(i32 %733) #9
  %735 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %reg161, align 8
  %add.ptr6.i734 = getelementptr i8, ptr %736, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i734, i32 %734) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %737 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %reg161, align 8
  %add.ptr.i736 = getelementptr i8, ptr %738, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i736, i8 1) #9, !srcloc !149
  %739 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %read_bytes, align 8
  tail call fastcc void @read_fiforeg(ptr noundef %chip, i32 noundef %740, i32 noundef 0)
  br label %while.body.i741

while.body.i741:                                  ; preds = %if.end.i746.while.body.i741_crit_edge, %do.body157
  %dec13.i738 = phi i32 [ 65535, %do.body157 ], [ %dec.i744, %if.end.i746.while.body.i741_crit_edge ]
  %741 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %reg161, align 8
  %add.ptr.i739 = getelementptr i8, ptr %742, i32 44
  %743 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i739) #9, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %744 = and i8 %743, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %744)
  %tobool2.not.i740 = icmp eq i8 %744, 0
  br i1 %tobool2.not.i740, label %if.end.i746, label %do.body.i743

do.body.i743:                                     ; preds = %while.body.i741
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %745 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %reg161, align 8
  %add.ptr4.i742 = getelementptr i8, ptr %746, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i742, i8 0) #9, !srcloc !149
  br label %runtime_exit

if.end.i746:                                      ; preds = %while.body.i741
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %747 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %747(i32 noundef 214748) #9
  %dec.i744 = add nsw i32 %dec13.i738, -1
  %tobool.not.i745 = icmp eq i32 %dec13.i738, 0
  br i1 %tobool.not.i745, label %while.end.i750, label %if.end.i746.while.body.i741_crit_edge

if.end.i746.while.body.i741_crit_edge:            ; preds = %if.end.i746
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i741

while.end.i750:                                   ; preds = %if.end.i746
  call void @__sanitizer_cov_trace_pc() #11
  %748 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %pdev, align 8
  %dev.i.i748 = getelementptr inbounds %struct.platform_device, ptr %749, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i748, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %750 = ptrtoint ptr %reg161 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %reg161, align 8
  %add.ptr9.i749 = getelementptr i8, ptr %751, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i749, i8 0) #9, !srcloc !149
  br label %runtime_exit

runtime_exit:                                     ; preds = %while.end.i750, %do.body.i743, %while.end.i728, %do.body.i721, %read_datareg.exit, %while.end.i665, %do.body.i658, %do.end127, %execmd_write_page_sector.exit, %wait_completion.exit.i541.runtime_exit_crit_edge, %if.end94, %while.end.i423, %do.body.i416, %sw.bb70, %while.end.i, %do.body.i, %sw.bb38.runtime_exit_crit_edge, %wait_completion.exit.i.runtime_exit_crit_edge, %execmd_read_page_sector.exit, %if.then.runtime_exit_crit_edge
  %752 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %pdev, align 8
  %dev165 = getelementptr inbounds %struct.platform_device, ptr %753, i32 0, i32 3
  %call.i752 = tail call i32 @__pm_runtime_idle(ptr noundef %dev165, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_set_features_notsupp(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flctl_setup_dma(ptr noundef %flctl) unnamed_addr #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #9
  %pdev1 = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_id_fifo0_tx = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slave_id_fifo0_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave_id_fifo0_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %slave_id_fifo0_rx = getelementptr inbounds %struct.sh_flctl_platform_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %slave_id_fifo0_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slave_id_fifo0_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #9
  %9 = ptrtoint ptr %slave_id_fifo0_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_id_fifo0_tx, align 4
  %11 = inttoptr i32 %10 to ptr
  %call6 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @shdma_chan_filter, ptr noundef %11, ptr noundef null) #9
  %chan_fifo0_tx = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 18
  %12 = ptrtoint ptr %chan_fifo0_tx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %chan_fifo0_tx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flctl_setup_dma.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flctl_setup_dma, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !181

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %chan_fifo0_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan_fifo0_tx, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flctl_setup_dma.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, ptr noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end4
  %15 = ptrtoint ptr %chan_fifo0_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan_fifo0_tx, align 8
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %17 = getelementptr inbounds i8, ptr %cfg, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 36)
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %cfg, align 4
  %fifo = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 4
  %20 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %22 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dst_addr, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %src_addr, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %16, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end18.err_crit_edge, label %dmaengine_slave_config.exit

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

dmaengine_slave_config.exit:                      ; preds = %if.end18
  %call.i = call i32 %27(ptr noundef nonnull %16, ptr noundef nonnull %cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %dmaengine_slave_config.exit.err_crit_edge, label %if.end23

dmaengine_slave_config.exit.err_crit_edge:        ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end23:                                         ; preds = %dmaengine_slave_config.exit
  %28 = ptrtoint ptr %slave_id_fifo0_rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slave_id_fifo0_rx, align 4
  %30 = inttoptr i32 %29 to ptr
  %call25 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @shdma_chan_filter, ptr noundef %30, ptr noundef null) #9
  %chan_fifo0_rx = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 17
  %31 = ptrtoint ptr %chan_fifo0_rx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call25, ptr %chan_fifo0_rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flctl_setup_dma.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flctl_setup_dma, %if.then38)) #9
          to label %do.end43 [label %if.then38], !srcloc !181

if.then38:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %chan_fifo0_rx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan_fifo0_rx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flctl_setup_dma.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, ptr noundef %33) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %if.end23
  %34 = ptrtoint ptr %chan_fifo0_rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan_fifo0_rx, align 4
  %tobool45.not = icmp eq ptr %35, null
  br i1 %tobool45.not, label %do.end43.err_crit_edge, label %if.end47

do.end43.err_crit_edge:                           ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end47:                                         ; preds = %do.end43
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %cfg, align 4
  %37 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dst_addr, align 4
  %38 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fifo, align 4
  %40 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %src_addr, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %35, align 4
  %device_config.i84 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %device_config.i84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device_config.i84, align 4
  %tobool.not.i85 = icmp eq ptr %44, null
  br i1 %tobool.not.i85, label %if.end47.err_crit_edge, label %dmaengine_slave_config.exit89

if.end47.err_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

dmaengine_slave_config.exit89:                    ; preds = %if.end47
  %call.i86 = call i32 %44(ptr noundef nonnull %35, ptr noundef nonnull %cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp54 = icmp slt i32 %call.i86, 0
  br i1 %cmp54, label %dmaengine_slave_config.exit89.err_crit_edge, label %if.end56

dmaengine_slave_config.exit89.err_crit_edge:      ; preds = %dmaengine_slave_config.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end56:                                         ; preds = %dmaengine_slave_config.exit89
  call void @__sanitizer_cov_trace_pc() #11
  %dma_complete = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 19
  %45 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 19, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #9
  br label %cleanup

err:                                              ; preds = %dmaengine_slave_config.exit89.err_crit_edge, %if.end47.err_crit_edge, %do.end43.err_crit_edge, %dmaengine_slave_config.exit.err_crit_edge, %if.end18.err_crit_edge
  %chan_fifo0_rx.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 17
  %46 = ptrtoint ptr %chan_fifo0_rx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan_fifo0_rx.i, align 4
  %tobool.not.i90 = icmp eq ptr %47, null
  br i1 %tobool.not.i90, label %err.if.end.i_crit_edge, label %if.then.i91

err.if.end.i_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i91:                                      ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %47) #9
  %48 = ptrtoint ptr %chan_fifo0_rx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %chan_fifo0_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i91, %err.if.end.i_crit_edge
  %49 = ptrtoint ptr %chan_fifo0_tx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan_fifo0_tx, align 8
  %tobool3.not.i = icmp eq ptr %50, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %50) #9
  %51 = ptrtoint ptr %chan_fifo0_tx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %chan_fifo0_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i.cleanup_crit_edge, %if.end56, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cmd_regs(ptr nocapture noundef readonly %mtd, i32 noundef %cmd, i32 noundef %flcmcdr_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flcmncr_base = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 14
  %0 = ptrtoint ptr %flcmncr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flcmncr_base, align 8
  %page_size = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 16
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %page_size, align 8
  %and = and i32 %1, -786433
  %or = or i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not62 = icmp slt i8 %bf.load, 0
  %flcmncr_val.0 = select i1 %tobool.not62, i32 %or, i32 %and
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 96, label %sw.bb
    i32 0, label %entry.sw.bb3_crit_edge
    i32 80, label %entry.sw.bb3_crit_edge63
    i32 5, label %entry.sw.bb3_crit_edge64
    i32 128, label %sw.bb10
    i32 16, label %sw.bb12
    i32 144, label %sw.bb22
    i32 112, label %entry.sw.bb25_crit_edge
    i32 255, label %entry.sw.bb25_crit_edge65
  ]

entry.sw.bb25_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25

entry.sw.bb3_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %erase_ADRCNT = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 12
  %4 = ptrtoint ptr %erase_ADRCNT to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erase_ADRCNT, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge63, %entry.sw.bb3_crit_edge64
  %rw_ADRCNT = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 13
  %6 = ptrtoint ptr %rw_ADRCNT to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rw_ADRCNT, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options, align 8
  %and5 = shl i32 %9, 18
  %10 = and i32 %and5, 524288
  %11 = or i32 %10, %flcmncr_val.0
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rw_ADRCNT13 = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 13
  %12 = ptrtoint ptr %rw_ADRCNT13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rw_ADRCNT13, align 4
  %options16 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %14 = ptrtoint ptr %options16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options16, align 8
  %and17 = shl i32 %15, 18
  %16 = and i32 %and17, 524288
  %17 = or i32 %16, %flcmncr_val.0
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge65
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb22, %sw.bb12, %sw.bb10, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %flcmncr_val.1 = phi i32 [ %flcmncr_val.0, %entry.sw.epilog_crit_edge ], [ %and, %sw.bb25 ], [ %and, %sw.bb22 ], [ %flcmncr_val.0, %sw.bb10 ], [ %flcmncr_val.0, %sw.bb ], [ %11, %sw.bb3 ], [ %17, %sw.bb12 ]
  %flcmdcr_val.0 = phi i32 [ 1114112, %entry.sw.epilog_crit_edge ], [ 65536, %sw.bb25 ], [ 34668544, %sw.bb22 ], [ 65536, %sw.bb10 ], [ 1245184, %sw.bb ], [ 34668544, %sw.bb3 ], [ 36896768, %sw.bb12 ]
  %addr_len_bytes.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb25 ], [ 0, %sw.bb22 ], [ 0, %sw.bb10 ], [ %5, %sw.bb ], [ %7, %sw.bb3 ], [ %13, %sw.bb12 ]
  %or28 = or i32 %addr_len_bytes.0, %flcmdcr_val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %flcmncr_val.1)
  %reg = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 3
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 8
  %add.ptr33 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %21) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %flcmcdr_val)
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg, align 8
  %add.ptr38 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %24) #9, !srcloc !134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_addr(ptr nocapture noundef readonly %mtd, i32 noundef %column, i32 noundef %page_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp = icmp eq i32 %column, -1
  br i1 %cmp, label %entry.do.body32_crit_edge, label %if.else

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp1.not = icmp eq i32 %page_addr, -1
  br i1 %cmp1.not, label %if.else.do.body32_crit_edge, label %if.then2

if.else.do.body32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then2:                                         ; preds = %if.else
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %spec.select = ashr i32 %column, %and.lobit
  %page_size = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 16
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.else17, label %if.then5

if.then5:                                         ; preds = %if.then2
  %and6 = and i32 %spec.select, 4095
  %and7 = shl i32 %page_addr, 16
  %or11 = or i32 %and7, %and6
  %rw_ADRCNT = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 13
  %3 = ptrtoint ptr %rw_ADRCNT to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rw_ADRCNT, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %4)
  %cmp12 = icmp eq i32 %4, -2147483648
  br i1 %cmp12, label %if.then13, label %if.then5.do.body32_crit_edge

if.then5.do.body32_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then13:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  tail call void @arm_heavy_mb() #9
  %5 = shl i32 %page_addr, 8
  %and15 = and i32 %5, -16777216
  %reg = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and15) #9, !srcloc !134
  br label %do.body32

if.else17:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %and18 = shl i32 %page_addr, 8
  %or28 = or i32 %and18, %spec.select
  br label %do.body32

do.body32:                                        ; preds = %if.else17, %if.then13, %if.then5.do.body32_crit_edge, %if.else.do.body32_crit_edge, %entry.do.body32_crit_edge
  %addr.0 = phi i32 [ %or11, %if.then13 ], [ %or11, %if.then5.do.body32_crit_edge ], [ %or28, %if.else17 ], [ 0, %if.else.do.body32_crit_edge ], [ %page_addr, %entry.do.body32_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %addr.0)
  %reg35 = getelementptr inbounds %struct.sh_flctl, ptr %mtd, i32 0, i32 3
  %9 = ptrtoint ptr %reg35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg35, align 8
  %add.ptr36 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %8) #9, !srcloc !134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_fiforeg(ptr noundef %flctl, i32 noundef %rlen, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sh_flctl, ptr %flctl, i32 0, i32 5, i32 %offset
  %add = add i32 %rlen, 3
  %div = sdiv i32 %add, 4
  %chan_fifo0_rx = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 17
  %0 = ptrtoint ptr %chan_fifo0_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_fifo0_rx, align 4
  %tobool.not = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rlen)
  %cmp = icmp sgt i32 %rlen, 31
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true1
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !182

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %5) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %arrayidx, i32 noundef %rlen) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  %sub.i.i = add i32 %11, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  %and.i.i = and i32 %11, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %rlen, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev2.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %retval.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.else24.i_crit_edge, label %lor.lhs.false.i.i

dma_map_single_attrs.exit.i.if.else24.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else24.i

lor.lhs.false.i.i:                                ; preds = %dma_map_single_attrs.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %16 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %18 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #9
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i, ptr %16, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rlen, ptr %17, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tobool1.not.i.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end6.thread13.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.end6.thread13.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread13.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 39
  %23 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.if.end6.thread13.i_crit_edge, label %if.end6.i

lor.lhs.false2.i.i.if.end6.thread13.i_crit_edge:  ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread13.i

if.end6.thread13.i:                               ; preds = %lor.lhs.false2.i.i.if.end6.thread13.i_crit_edge, %lor.lhs.false.i.i.if.end6.thread13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  br label %if.else24.i

if.end6.i:                                        ; preds = %lor.lhs.false2.i.i
  %call.i1.i = call ptr %24(ptr noundef nonnull %1, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %tobool7.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool7.not.i, label %if.end6.i.if.else24.i_crit_edge, label %if.then8.i

if.end6.i.if.else24.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else24.i

if.then8.i:                                       ; preds = %if.end6.i
  %reg9.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 3
  %25 = ptrtoint ptr %reg9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg9.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 24
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %28 = or i32 %27, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %reg9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg9.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %30, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %28) #9, !srcloc !134
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1.i, i32 0, i32 6
  %31 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @flctl_dma_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1.i, i32 0, i32 8
  %32 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %flctl, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1.i, i32 0, i32 4
  %33 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i3.i = call i32 %34(ptr noundef nonnull %call.i1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i3.i)
  %tobool16.not.i = icmp sgt i32 %call.i3.i, -1
  br i1 %tobool16.not.i, label %if.end23.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 1
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 8
  %dev22.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22.i, ptr noundef nonnull @.str.30) #12
  br label %flctl_dma_fifo0_transfer.exit

if.end23.i:                                       ; preds = %if.then8.i
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 50
  %39 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %40(ptr noundef nonnull %1) #9
  %dma_complete.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 19
  %call32.i = call i32 @wait_for_completion_timeout(ptr noundef %dma_complete.i, i32 noundef 300) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 1
  br i1 %cmp33.i, label %if.then34.i, label %if.end23.i.flctl_dma_fifo0_transfer.exit_crit_edge

if.end23.i.flctl_dma_fifo0_transfer.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flctl_dma_fifo0_transfer.exit

if.else24.i:                                      ; preds = %if.end6.i.if.else24.i_crit_edge, %if.end6.thread13.i, %dma_map_single_attrs.exit.i.if.else24.i_crit_edge
  %41 = ptrtoint ptr %chan_fifo0_rx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan_fifo0_rx, align 4
  %tobool.not.i4.i = icmp eq ptr %42, null
  br i1 %tobool.not.i4.i, label %if.else24.i.if.end.i6.i_crit_edge, label %if.then.i5.i

if.else24.i.if.end.i6.i_crit_edge:                ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i6.i

if.then.i5.i:                                     ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %42) #9
  %43 = ptrtoint ptr %chan_fifo0_rx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %chan_fifo0_rx, align 4
  br label %if.end.i6.i

if.end.i6.i:                                      ; preds = %if.then.i5.i, %if.else24.i.if.end.i6.i_crit_edge
  %chan_fifo0_tx.i.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 18
  %44 = ptrtoint ptr %chan_fifo0_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan_fifo0_tx.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %45, null
  br i1 %tobool3.not.i.i, label %if.end.i6.i.flctl_release_dma.exit.i_crit_edge, label %if.then4.i.i

if.end.i6.i.flctl_release_dma.exit.i_crit_edge:   ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flctl_release_dma.exit.i

if.then4.i.i:                                     ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %45) #9
  %46 = ptrtoint ptr %chan_fifo0_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %chan_fifo0_tx.i.i, align 8
  br label %flctl_release_dma.exit.i

flctl_release_dma.exit.i:                         ; preds = %if.then4.i.i, %if.end.i6.i.flctl_release_dma.exit.i_crit_edge
  %pdev28.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 1
  %47 = ptrtoint ptr %pdev28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev28.i, align 8
  %dev29.i = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.33) #12
  br label %flctl_dma_fifo0_transfer.exit

if.then34.i:                                      ; preds = %if.end23.i
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 47
  %51 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i7.i = icmp eq ptr %52, null
  br i1 %tobool.not.i7.i, label %if.then34.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i9.i

if.then34.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit.i

if.then.i9.i:                                     ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8.i = call i32 %52(ptr noundef nonnull %1) #9
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i9.i, %if.then34.i.dmaengine_terminate_all.exit.i_crit_edge
  %pdev39.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 1
  %53 = ptrtoint ptr %pdev39.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev39.i, align 8
  %dev40.i = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40.i, ptr noundef nonnull @.str.36) #12
  br label %flctl_dma_fifo0_transfer.exit

flctl_dma_fifo0_transfer.exit:                    ; preds = %dmaengine_terminate_all.exit.i, %flctl_release_dma.exit.i, %if.end23.i.flctl_dma_fifo0_transfer.exit_crit_edge, %if.then17.i
  %ret.0.i = phi i32 [ %call.i3.i, %if.then17.i ], [ %call32.i, %dmaengine_terminate_all.exit.i ], [ %call32.i, %if.end23.i.flctl_dma_fifo0_transfer.exit_crit_edge ], [ -5, %flctl_release_dma.exit.i ]
  %reg44.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 3
  %55 = ptrtoint ptr %reg44.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg44.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %56, i32 24
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #9, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %58 = and i32 %57, -257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %reg44.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg44.i, align 8
  %add.ptr53.i = getelementptr i8, ptr %60, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %58) #9, !srcloc !134
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %dev55.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev55.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %64, i32 noundef %retval.0.i.i, i32 noundef %rlen, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp2 = icmp slt i32 %ret.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp332 = icmp sgt i32 %add, 3
  %or.cond34 = and i1 %cmp2, %cmp332
  br i1 %or.cond34, label %flctl_dma_fifo0_transfer.exit.for.body.lr.ph_crit_edge, label %flctl_dma_fifo0_transfer.exit.convert_crit_edge

flctl_dma_fifo0_transfer.exit.convert_crit_edge:  ; preds = %flctl_dma_fifo0_transfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert

flctl_dma_fifo0_transfer.exit.for.body.lr.ph_crit_edge: ; preds = %flctl_dma_fifo0_transfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp332.old = icmp sgt i32 %add, 3
  br i1 %cmp332.old, label %if.end.for.body.lr.ph_crit_edge, label %if.end.convert_crit_edge

if.end.convert_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %flctl_dma_fifo0_transfer.exit.for.body.lr.ph_crit_edge
  %reg.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 3
  %pdev.i.i = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %wait_rfifo_ready.exit.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %wait_rfifo_ready.exit.for.body_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.body
  %dec7.i = phi i32 [ 65535, %for.body ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %65 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %66, i32 20
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #9, !srcloc !131
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %68 = and i32 %67, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool2.not.i = icmp eq i32 %68, 0
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.wait_rfifo_ready.exit_crit_edge

while.body.i.wait_rfifo_ready.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_rfifo_ready.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748) #9
  %dec.i = add nsw i32 %dec7.i, -1
  %tobool.not.i = icmp eq i32 %dec7.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wait_rfifo_ready) #12
  br label %wait_rfifo_ready.exit

wait_rfifo_ready.exit:                            ; preds = %while.end.i, %while.body.i.wait_rfifo_ready.exit_crit_edge
  %72 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg.i, align 8
  %add.ptr = getelementptr i8, ptr %73, i32 36
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !131
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  %arrayidx6 = getelementptr i32, ptr %arrayidx, i32 %i.033
  %76 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %wait_rfifo_ready.exit.convert_crit_edge, label %wait_rfifo_ready.exit.for.body_crit_edge

wait_rfifo_ready.exit.for.body_crit_edge:         ; preds = %wait_rfifo_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

wait_rfifo_ready.exit.convert_crit_edge:          ; preds = %wait_rfifo_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %convert

convert:                                          ; preds = %wait_rfifo_ready.exit.convert_crit_edge, %if.end.convert_crit_edge, %flctl_dma_fifo0_transfer.exit.convert_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_recfifo_ready(ptr nocapture noundef %flctl, i32 noundef %sector_number) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 3
  %pdev = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 1
  %page_size = getelementptr inbounds %struct.sh_flctl, ptr %flctl, i32 0, i32 16
  %mul = shl i32 %sector_number, 9
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %entry
  %dec125131 = phi i32 [ 65535, %entry ], [ %dec125, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %state.0.ph130 = phi i32 [ 0, %entry ], [ %state.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then11.while.body_crit_edge, %while.body.lr.ph
  %dec127 = phi i32 [ %dec125131, %while.body.lr.ph ], [ %dec, %if.then11.while.body_crit_edge ]
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !131
  %3 = and i32 %2, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #9
  %dec = add i32 %dec127, -1
  %tobool.not = icmp eq i32 %dec127, 0
  br i1 %tobool.not, label %if.then11.while.end_crit_edge, label %if.then11.while.body_crit_edge

if.then11.while.body_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end12:                                         ; preds = %if.end
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 8
  %add.ptr16 = getelementptr i8, ptr %10, i32 144
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  %12 = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %if.end44, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0128 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sh_flctl, ptr %flctl, i32 0, i32 5, i32 %i.0128
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp24.not = icmp eq i8 %14, -1
  br i1 %cmp24.not, label %for.cond, label %for.body.do.body39_crit_edge

for.body.do.body39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.0.ph130)
  %cmp28 = icmp eq i32 %state.0.ph130, 0
  br i1 %cmp28, label %do.body, label %for.end.do.body39_crit_edge

for.end.do.body39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_recfifo_ready.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_recfifo_ready, %if.then36)) #9
          to label %do.body39 [label %if.then36], !srcloc !181

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_recfifo_ready.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %sector_number) #9
  br label %do.body39

do.body39:                                        ; preds = %if.then36, %do.body, %for.end.do.body39_crit_edge, %for.body.do.body39_crit_edge
  %state.1118 = phi i32 [ %state.0.ph130, %for.end.do.body39_crit_edge ], [ 0, %if.then36 ], [ 0, %do.body ], [ 2, %for.body.do.body39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 8
  %add.ptr43 = getelementptr i8, ptr %18, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #9, !srcloc !134
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end44, %do.body39
  %state.0.ph.be = phi i32 [ 1, %if.end44 ], [ %state.1118, %do.body39 ]
  %dec125 = add i32 %dec127, -1
  %tobool.not126 = icmp eq i32 %dec127, 0
  br i1 %tobool.not126, label %while.cond.outer.backedge.while.end_crit_edge, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end44:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 8
  %add.ptr46 = getelementptr i8, ptr %20, i32 128
  %add.ptr49 = getelementptr i8, ptr %20, i32 132
  %add.ptr52 = getelementptr i8, ptr %20, i32 136
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !131
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %23 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %page_size, align 8
  %shr69 = lshr i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool67.not120 = icmp slt i8 %bf.load, 0
  %add = select i1 %tobool67.not120, i32 %mul, i32 0
  %index.0 = add i32 %add, %shr69
  %arrayidx73 = getelementptr %struct.sh_flctl, ptr %flctl, i32 0, i32 5, i32 %index.0
  %24 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx73, align 1
  %26 = trunc i32 %22 to i8
  %conv76 = xor i8 %25, %26
  store i8 %conv76, ptr %arrayidx73, align 1
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #9, !srcloc !131
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %29 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.1 = load i8, ptr %page_size, align 8
  %shr69.1 = lshr i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.1)
  %tobool67.not120.1 = icmp slt i8 %bf.load.1, 0
  %add.1 = select i1 %tobool67.not120.1, i32 %mul, i32 0
  %index.0.1 = add i32 %add.1, %shr69.1
  %arrayidx73.1 = getelementptr %struct.sh_flctl, ptr %flctl, i32 0, i32 5, i32 %index.0.1
  %30 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx73.1, align 1
  %32 = trunc i32 %28 to i8
  %conv76.1 = xor i8 %31, %32
  store i8 %conv76.1, ptr %arrayidx73.1, align 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #9, !srcloc !131
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %35 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.2 = load i8, ptr %page_size, align 8
  %shr69.2 = lshr i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.2)
  %tobool67.not120.2 = icmp slt i8 %bf.load.2, 0
  %add.2 = select i1 %tobool67.not120.2, i32 %mul, i32 0
  %index.0.2 = add i32 %add.2, %shr69.2
  %arrayidx73.2 = getelementptr %struct.sh_flctl, ptr %flctl, i32 0, i32 5, i32 %index.0.2
  %36 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx73.2, align 1
  %38 = trunc i32 %34 to i8
  %conv76.2 = xor i8 %37, %38
  store i8 %conv76.2, ptr %arrayidx73.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 8
  %add.ptr86 = getelementptr i8, ptr %40, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 0) #9, !srcloc !134
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %while.cond.outer.backedge.while.end_crit_edge, %if.then11.while.end_crit_edge
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %while.end ], [ %state.0.ph130, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flctl_dma_complete(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_complete = getelementptr inbounds %struct.sh_flctl, ptr %param, i32 0, i32 19
  tail call void @complete(ptr noundef %dma_complete) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shdma_chan_filter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flctl_chip_attach_chip(ptr noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %1 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %5 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %7 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flcmncr_base = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %10 = ptrtoint ptr %flcmncr_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flcmncr_base, align 8
  %or = or i32 %11, 524288
  store i32 %or, ptr %flcmncr_base, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %13)
  %cmp = icmp eq i32 %13, 512
  %page_size = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %14 = ptrtoint ptr %page_size to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %page_size, align 8
  br i1 %cmp, label %if.then3, label %if.else15

if.then3:                                         ; preds = %if.end
  %bf.clear = and i8 %bf.load, 127
  %15 = ptrtoint ptr %page_size to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.clear, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %mul8.i)
  %cmp4 = icmp ugt i64 %mul8.i, 33554432
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %rw_ADRCNT = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %16 = ptrtoint ptr %rw_ADRCNT to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 786432, ptr %rw_ADRCNT, align 4
  br label %if.end34

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp8(i64 131072, i64 %mul8.i)
  %cmp6 = icmp ugt i64 %mul8.i, 131072
  %rw_ADRCNT8 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %rw_ADRCNT8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 524288, ptr %rw_ADRCNT8, align 4
  br label %if.end34

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %rw_ADRCNT8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262144, ptr %rw_ADRCNT8, align 4
  br label %if.end34

if.else15:                                        ; preds = %if.end
  %bf.set19 = or i8 %bf.load, -128
  %19 = ptrtoint ptr %page_size to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set19, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217728, i64 %mul8.i)
  %cmp20 = icmp ugt i64 %mul8.i, 134217728
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %rw_ADRCNT22 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  %20 = ptrtoint ptr %rw_ADRCNT22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2147483648, ptr %rw_ADRCNT22, align 4
  br label %if.end34

if.else24:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp8(i64 524288, i64 %mul8.i)
  %cmp25 = icmp ugt i64 %mul8.i, 524288
  %rw_ADRCNT27 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 13
  br i1 %cmp25, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %rw_ADRCNT27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 786432, ptr %rw_ADRCNT27, align 4
  br label %if.end34

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rw_ADRCNT27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 524288, ptr %rw_ADRCNT27, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else29, %if.then26, %if.then21, %if.else10, %if.then7, %if.then5
  %.sink = phi i32 [ 524288, %if.then21 ], [ 0, %if.else29 ], [ 262144, %if.then26 ], [ 524288, %if.then5 ], [ 0, %if.else10 ], [ 262144, %if.then7 ]
  %erase_ADRCNT23 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 12
  %23 = ptrtoint ptr %erase_ADRCNT23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %erase_ADRCNT23, align 8
  %hwecc = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 16
  %24 = ptrtoint ptr %hwecc to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load35 = load i8, ptr %hwecc, align 8
  %25 = and i8 %bf.load35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool37.not = icmp eq i8 %25, 0
  br i1 %tobool37.not, label %if.else52, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %cmp, ptr @flctl_4secc_oob_smallpage_ops, ptr @flctl_4secc_oob_largepage_ops
  %spec.select93 = select i1 %cmp, ptr @flctl_4secc_smallpage, ptr @flctl_4secc_largepage
  %26 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 15
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select93, ptr %28, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 512, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %31 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %32 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %strength, align 4
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %33 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @flctl_read_page_hwecc, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %34 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @flctl_write_page_hwecc, ptr %write_page, align 4
  %35 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %ecc, align 8
  %flcmncr_base50 = getelementptr inbounds %struct.sh_flctl, ptr %chip, i32 0, i32 14
  %36 = ptrtoint ptr %flcmncr_base50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flcmncr_base50, align 8
  %or51 = or i32 %37, 8388608
  store i32 %or51, ptr %flcmncr_base50, align 8
  br label %if.end56

if.else52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %ecc53 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %38 = ptrtoint ptr %ecc53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %ecc53, align 8
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %39 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %algo, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flctl_read_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %call1 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_buf, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  tail call void %3(ptr noundef %chip, ptr noundef %5, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flctl_write_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %call1 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %1) #9
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_buf, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  tail call void %3(ptr noundef %chip, ptr noundef %5, i32 noundef %7) #9
  %call2 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flctl_4secc_ooblayout_sp_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oobregion, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %1 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @flctl_4secc_ooblayout_sp_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flctl_4secc_ooblayout_lp_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 6
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %oobregion, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flctl_4secc_ooblayout_lp_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %section, 4
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = or i32 %mul, 2
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %oobregion, align 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flctl_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chan_fifo0_rx.i = getelementptr inbounds %struct.sh_flctl, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %chan_fifo0_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_fifo0_rx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %chan_fifo0_rx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %chan_fifo0_rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %chan_fifo0_tx.i = getelementptr inbounds %struct.sh_flctl, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %chan_fifo0_tx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_fifo0_tx.i, align 8
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %if.end.i.flctl_release_dma.exit_crit_edge, label %if.then4.i

if.end.i.flctl_release_dma.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flctl_release_dma.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %6) #9
  %7 = ptrtoint ptr %chan_fifo0_tx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %chan_fifo0_tx.i, align 8
  br label %flctl_release_dma.exit

flctl_release_dma.exit:                           ; preds = %if.then4.i, %if.end.i.flctl_release_dma.exit_crit_edge
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %flctl_release_dma.exit.if.end_crit_edge, label %do.end, !prof !182

flctl_release_dma.exit.if.end_crit_edge:          ; preds = %flctl_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %flctl_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1212, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %flctl_release_dma.exit.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_sh_flctl__253_1227_flctl_driver_init6, !1, !"__initcall__kmod_sh_flctl__253_1227_flctl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1227, i32 1}
!2 = !{ptr @__exitcall_flctl_driver_exit, !1, !"__exitcall_flctl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file254, !4, !"__UNIQUE_ID_file254", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1229, i32 1}
!5 = !{ptr @__UNIQUE_ID_license255, !4, !"__UNIQUE_ID_license255", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author256, !7, !"__UNIQUE_ID_author256", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1230, i32 1}
!8 = !{ptr @__UNIQUE_ID_description257, !9, !"__UNIQUE_ID_description257", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1231, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias258, !11, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1232, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1136, i32 11}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1138, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @flctl_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @flctl_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1148, i32 3}
!24 = !{ptr @flctl_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @flctl_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1062, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @flctl_handle_flste._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @flctl_handle_flste._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1094, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @flctl_parse_dt._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @flctl_parse_dt._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 943, i32 5}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @flctl_select_chip._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @flctl_select_chip._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 869, i32 5}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @flctl_cmdfunc._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @flctl_cmdfunc._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 648, i32 4}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @execmd_read_page_sector._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @execmd_read_page_sector._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 653, i32 4}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @execmd_read_page_sector._entry.21, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @execmd_read_page_sector._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 326, i32 5}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wait_recfifo_ready.__UNIQUE_ID_ddebug252, !60, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 128, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @timeout_error._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @timeout_error._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 413, i32 4}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @flctl_dma_fifo0_transfer._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @flctl_dma_fifo0_transfer._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 422, i32 3}
!76 = !{ptr @flctl_dma_fifo0_transfer._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @flctl_dma_fifo0_transfer._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 434, i32 3}
!80 = !{ptr @flctl_dma_fifo0_transfer._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @flctl_dma_fifo0_transfer._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__func__.wait_rfifo_ready, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 266, i32 23}
!88 = !{ptr @__func__.wait_completion, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 143, i32 23}
!90 = !{ptr @__func__.wait_wecfifo_ready, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 375, i32 23}
!92 = !{ptr @__func__.wait_wfifo_ready, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 280, i32 23}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 186, i32 2}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @flctl_setup_dma.__UNIQUE_ID_ddebug250, !95, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 202, i32 2}
!100 = !{ptr @flctl_setup_dma.__UNIQUE_ID_ddebug251, !99, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!101 = !{ptr @init_completion.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../include/linux/completion.h", i32 87, i32 2}
!103 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @flctl_nand_controller_ops, !105, !"flctl_nand_controller_ops", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1054, i32 41}
!106 = !{ptr @flctl_4secc_oob_smallpage_ops, !107, !"flctl_4secc_oob_smallpage_ops", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 58, i32 39}
!108 = !{ptr @flctl_4secc_smallpage, !109, !"flctl_4secc_smallpage", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 103, i32 30}
!110 = !{ptr @scan_ff_pattern, !111, !"scan_ff_pattern", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 101, i32 16}
!112 = !{ptr @flctl_4secc_oob_largepage_ops, !113, !"flctl_4secc_oob_largepage_ops", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 96, i32 39}
!114 = !{ptr @flctl_4secc_largepage, !115, !"flctl_4secc_largepage", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 109, i32 30}
!116 = !{ptr @flctl_driver, !117, !"flctl_driver", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1219, i32 31}
!118 = !{ptr @of_flctl_match, !119, !"of_flctl_match", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1080, i32 34}
!120 = !{ptr @flctl_sh7372_config, !121, !"flctl_sh7372_config", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/sh_flctl.c", i32 1074, i32 32}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 6303175}
!132 = !{i64 2154755113}
!133 = !{i64 2154755372}
!134 = !{i64 6302757}
!135 = !{i64 2154748888}
!136 = !{i64 2154751031}
!137 = !{i64 2154751489, i64 2154751985, i64 2154751526, i64 2154751582, i64 2154751616, i64 2154751640, i64 2154751681, i64 2154751702, i64 2154751730, i64 2154751764}
!138 = !{i64 2154725790}
!139 = !{i64 2154726238}
!140 = !{i64 2154726686}
!141 = !{i64 2154727955}
!142 = !{i64 2154728920}
!143 = !{i64 2154729980}
!144 = !{i64 2154730917}
!145 = !{i64 2154731193}
!146 = !{i64 2154695556}
!147 = !{i64 2154696135}
!148 = !{i64 2154696629}
!149 = !{i64 6302560}
!150 = !{i64 2154723980}
!151 = !{i64 6302955}
!152 = !{i64 2154698587}
!153 = !{i64 2154698838}
!154 = !{i64 2154699671}
!155 = !{i64 2154735841}
!156 = !{i64 2154736816}
!157 = !{i64 2154705195}
!158 = !{i64 2154705619}
!159 = !{i64 2154737110}
!160 = !{i64 2154706335}
!161 = !{i64 2154723406}
!162 = !{i64 2154744630}
!163 = !{i64 2154745133}
!164 = !{i64 2154743998}
!165 = !{i64 2154707406}
!166 = !{i64 2154724356}
!167 = !{i64 2154738333}
!168 = !{i64 2154739270}
!169 = !{i64 2154740316}
!170 = !{i64 2154741253}
!171 = !{i64 2154741529}
!172 = !{i64 2154714513}
!173 = !{i64 2154724924}
!174 = !{i64 2154742774}
!175 = !{i64 2154743715}
!176 = !{i64 2154747046}
!177 = !{i64 2154747511}
!178 = !{i64 2154722757}
!179 = !{i64 2154747975}
!180 = !{i64 2154748402}
!181 = !{i64 2148981308, i64 2148981313, i64 2148981326, i64 2148981370, i64 2148981404, i64 2148981425}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2154715651}
!184 = !{i64 2154715903}
!185 = !{i64 2154721729}
!186 = !{i64 2154721981}
!187 = !{i64 2154708477}
!188 = !{i64 2154709001}
!189 = !{i64 2154710072}
!190 = !{i64 2154712848}
!191 = !{i64 2154713567}
!192 = !{i64 2154713805}
