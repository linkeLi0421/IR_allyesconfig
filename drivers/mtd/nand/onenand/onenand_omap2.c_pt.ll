; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/onenand/onenand_omap2.c_pt.bc'
source_filename = "../drivers/mtd/nand/onenand/onenand_omap2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.gpmc_onenand_info = type { i8, i8, i32 }
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
%struct.omap2_onenand = type { ptr, i32, i32, ptr, %struct.mtd_info, %struct.onenand_chip, %struct.completion, %struct.completion, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.onenand_chip = type { ptr, i32, [2 x i32], [2 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.onenand_bufferram], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.onenand_bufferram = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_onenand_omap2__236_612_omap2_onenand_driver_init6 = internal global ptr @omap2_onenand_driver_init, section ".initcall6.init", align 4
@omap2_onenand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap2_onenand_probe, ptr @omap2_onenand_remove, ptr @omap2_onenand_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap2_onenand_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap2_onenand_driver_exit = internal global ptr @omap2_onenand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias237 = internal constant [43 x i8] c"onenand_omap2.alias=platform:omap2-onenand\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [58 x i8] c"onenand_omap2.file=drivers/mtd/nand/onenand/onenand_omap2\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"onenand_omap2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [63 x i8] c"onenand_omap2.author=Jarkko Lavinen <jarkko.lavinen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [72 x i8] c"onenand_omap2.description=Glue layer for OneNAND flash on OMAP2 / OMAP3\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap2-onenand\00", [18 x i8] zeroinitializer }, align 32
@omap2_onenand_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-onenand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error getting memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap2_onenand_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/mtd/nand/onenand/onenand_omap2.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry_ptr = internal global ptr @omap2_onenand_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg not found in DT\0A\00", [43 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry_ptr.9 = internal global ptr @omap2_onenand_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error getting gpio\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onenand\00", [24 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 527, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"initializing on CS%d (0x%08lx), va %p, %s mode\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry_ptr.16 = internal global ptr @omap2_onenand_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"optimized timings for %d MHz\0A\00", [34 x i8] zeroinitializer }, align 32
@omap2_onenand_probe._entry_ptr.21 = internal global ptr @omap2_onenand_probe._entry.19, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"controller error\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio error\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@omap2_onenand_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013onenand_wait: ECC error = 0x%04x, addr1 %#x, addr8 %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap2_onenand_wait\00", [45 x i8] zeroinitializer }, align 32
@omap2_onenand_wait._entry_ptr = internal global ptr @omap2_onenand_wait._entry, section ".printk_index", align 4
@omap2_onenand_wait._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015onenand_wait: correctable ECC error = 0x%04x, addr1 %#x, addr8 %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@omap2_onenand_wait._entry_ptr.30 = internal global ptr @omap2_onenand_wait._entry.28, section ".printk_index", align 4
@omap2_onenand_wait._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013onenand_wait: Device is write protected!!!\0A\00", [50 x i8] zeroinitializer }, align 32
@omap2_onenand_wait._entry_ptr.33 = internal global ptr @omap2_onenand_wait._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected controller status\00", [35 x i8] zeroinitializer }, align 32
@wait_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013onenand_wait: %s! state %d ctrl 0x%04x intr 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wait_err\00", [23 x i8] zeroinitializer }, align 32
@wait_err._entry_ptr = internal global ptr @wait_err._entry, section ".printk_index", align 4
@wait_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014onenand_wait: %s! state %d ctrl 0x%04x intr 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wait_warn\00", [22 x i8] zeroinitializer }, align 32
@wait_warn._entry_ptr = internal global ptr @wait_warn._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@omap2_onenand_read_bufferram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't DMA map a %d byte buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap2_onenand_read_bufferram\00", [35 x i8] zeroinitializer }, align 32
@omap2_onenand_read_bufferram._entry_ptr = internal global ptr @omap2_onenand_read_bufferram._entry, section ".printk_index", align 4
@omap2_onenand_read_bufferram._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timeout waiting for DMA\0A\00", [39 x i8] zeroinitializer }, align 32
@omap2_onenand_read_bufferram._entry_ptr.43 = internal global ptr @omap2_onenand_read_bufferram._entry.41, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@omap2_onenand_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare DMA memcpy\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap2_onenand_dma_transfer\00", [37 x i8] zeroinitializer }, align 32
@omap2_onenand_dma_transfer._entry_ptr = internal global ptr @omap2_onenand_dma_transfer._entry, section ".printk_index", align 4
@omap2_onenand_dma_transfer._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to do DMA tx_submit\0A\00", [36 x i8] zeroinitializer }, align 32
@omap2_onenand_dma_transfer._entry_ptr.50 = internal global ptr @omap2_onenand_dma_transfer._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@omap2_onenand_write_bufferram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.52, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap2_onenand_write_bufferram\00", [34 x i8] zeroinitializer }, align 32
@omap2_onenand_write_bufferram._entry_ptr = internal global ptr @omap2_onenand_write_bufferram._entry, section ".printk_index", align 4
@omap2_onenand_write_bufferram._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.52, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@omap2_onenand_write_bufferram._entry_ptr.54 = internal global ptr @omap2_onenand_write_bufferram._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 23, i64 25, i64 26]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 65568]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 65568]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"omap2_onenand_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 602, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 607, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"omap2_onenand_id_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 596, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 472, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 476, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 478, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 495, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 498, i32 52 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 504, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 525, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 564, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 176, i32 13 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 201, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 221, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 275, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 281, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 295, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 305, i32 13 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 131, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 138, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 392, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 401, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 326, i32 6 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 334, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 345, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1169, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 432, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private constant [44 x i8] c"../drivers/mtd/nand/onenand/onenand_omap2.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 441, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 464, i32 31 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_omap2_onenand_driver_exit, ptr @__initcall__kmod_onenand_omap2__236_612_omap2_onenand_driver_init6, ptr @omap2_onenand_dma_transfer._entry, ptr @omap2_onenand_dma_transfer._entry.48, ptr @omap2_onenand_dma_transfer._entry_ptr, ptr @omap2_onenand_dma_transfer._entry_ptr.50, ptr @omap2_onenand_driver_exit, ptr @omap2_onenand_probe._entry, ptr @omap2_onenand_probe._entry.13, ptr @omap2_onenand_probe._entry.19, ptr @omap2_onenand_probe._entry.7, ptr @omap2_onenand_probe._entry_ptr, ptr @omap2_onenand_probe._entry_ptr.16, ptr @omap2_onenand_probe._entry_ptr.21, ptr @omap2_onenand_probe._entry_ptr.9, ptr @omap2_onenand_read_bufferram._entry, ptr @omap2_onenand_read_bufferram._entry.41, ptr @omap2_onenand_read_bufferram._entry_ptr, ptr @omap2_onenand_read_bufferram._entry_ptr.43, ptr @omap2_onenand_wait._entry, ptr @omap2_onenand_wait._entry.28, ptr @omap2_onenand_wait._entry.31, ptr @omap2_onenand_wait._entry_ptr, ptr @omap2_onenand_wait._entry_ptr.30, ptr @omap2_onenand_wait._entry_ptr.33, ptr @omap2_onenand_write_bufferram._entry, ptr @omap2_onenand_write_bufferram._entry.53, ptr @omap2_onenand_write_bufferram._entry_ptr, ptr @omap2_onenand_write_bufferram._entry_ptr.54, ptr @wait_err._entry, ptr @wait_err._entry_ptr, ptr @wait_warn._entry, ptr @wait_warn._entry_ptr, ptr @omap2_onenand_driver, ptr @.str, ptr @omap2_onenand_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.55], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_wait._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_wait._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_read_bufferram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_read_bufferram._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_dma_transfer._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_write_bufferram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_onenand_write_bufferram._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap2_onenand_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap2_onenand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap2_onenand_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  %info = alloca %struct.gpmc_onenand_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #8
  %1 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %info, align 8, !annotation !125
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1880, i32 noundef 3520) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %irq_done = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq_done, align 4
  %wait.i = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #8
  %dma_done = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dma_done, align 4
  %wait.i181 = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i181, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %gpmc_cs = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %gpmc_cs, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %phys_base = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phys_base, align 8
  %call13 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call) #8
  %onenand = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %onenand to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %onenand, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call22 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %int_gpiod = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %int_gpiod to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %int_gpiod, align 4
  %cmp.i182 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call22 to i32
  %call28 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %15, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %tobool31.not = icmp eq ptr %call22, null
  br i1 %tobool31.not, label %if.end29.if.end40_crit_edge, label %if.then32

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then32:                                        ; preds = %if.end29
  %call34 = call i32 @gpiod_to_irq(ptr noundef nonnull %call22) #8
  %call.i183 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call34, ptr noundef nonnull @omap2_onenand_interrupt, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool36.not = icmp eq i32 %call.i183, 0
  br i1 %tobool36.not, label %if.end38, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %wait = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 5, i32 18
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @omap2_onenand_wait, ptr %wait, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.end29.if.end40_crit_edge
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask) #8
  %call41 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %dma_chan = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call41, ptr %dma_chan, align 8
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.end40.if.end47_crit_edge, label %if.then44

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %read_bufferram = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 5, i32 21
  %19 = ptrtoint ptr %read_bufferram to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @omap2_onenand_read_bufferram, ptr %read_bufferram, align 8
  %write_bufferram = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 5, i32 22
  %20 = ptrtoint ptr %write_bufferram to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @omap2_onenand_write_bufferram, ptr %write_bufferram, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %call.i, align 8
  %mtd = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 4
  %priv = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 4, i32 54
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %onenand, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 4, i32 56, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %parent, align 8
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %of_node.i = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 4, i32 56, i32 27
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %of_node.i, align 8
  %name.i = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 4, i32 13
  %27 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end47.mtd_set_of_node.exit_crit_edge

if.end47.mtd_set_of_node.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtd_set_of_node.exit

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call.i184 = call i32 @of_property_read_string(ptr noundef %25, ptr noundef nonnull @.str.55, ptr noundef %name.i) #8
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i, %if.end47.mtd_set_of_node.exit_crit_edge
  %29 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gpmc_cs, align 4
  %31 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_base, align 8
  %33 = ptrtoint ptr %onenand to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %onenand, align 8
  %35 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_chan, align 8
  %tobool62.not = icmp eq ptr %36, null
  %cond = select i1 %tobool62.not, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %30, i32 noundef %32, ptr noundef %34, ptr noundef nonnull %cond) #11
  %call64 = call i32 @onenand_scan(ptr noundef %mtd, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %mtd_set_of_node.exit.err_release_dma_crit_edge, label %if.end66

mtd_set_of_node.exit.err_release_dma_crit_edge:   ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_dma

if.end66:                                         ; preds = %mtd_set_of_node.exit
  %version_id = getelementptr inbounds %struct.omap2_onenand, ptr %call.i, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %version_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version_id, align 8
  %39 = lshr i32 %38, 4
  %and.i = and i32 %39, 15
  %40 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end66.if.end94_crit_edge [
    i32 0, label %if.end66.sw.default_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb72
    i32 3, label %if.end66.sw.epilog_crit_edge
    i32 4, label %if.then70.thread191
  ]

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end66.sw.default_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

if.end66.if.end94_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

sw.bb1.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

if.then70.thread191:                              ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb1.i, %if.end66.sw.default_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 54, %sw.bb1.i ], [ 40, %if.end66.sw.default_crit_edge ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb72, %if.then70.thread191, %if.end66.sw.epilog_crit_edge
  %retval.0.i.ph189 = phi i32 [ %retval.0.i.ph.ph, %sw.default ], [ 66, %sw.bb72 ], [ 104, %if.then70.thread191 ], [ 83, %if.end66.sw.epilog_crit_edge ]
  %latency.0 = phi i32 [ 3, %sw.default ], [ 5, %sw.bb72 ], [ 7, %if.then70.thread191 ], [ 6, %if.end66.sw.epilog_crit_edge ]
  %41 = ptrtoint ptr %gpmc_cs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gpmc_cs, align 4
  %call75 = call i32 @gpmc_omap_onenand_set_timings(ptr noundef %dev1, i32 noundef %42, i32 noundef %retval.0.i.ph189, i32 noundef %latency.0, ptr noundef nonnull %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %sw.epilog.err_release_onenand_crit_edge

sw.epilog.err_release_onenand_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_onenand

if.end78:                                         ; preds = %sw.epilog
  %43 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %info, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool79 = icmp ne i8 %44, 0
  %sync_write = getelementptr inbounds %struct.gpmc_onenand_info, ptr %info, i32 0, i32 1
  %45 = ptrtoint ptr %sync_write to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sync_write, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool80 = icmp ne i8 %46, 0
  %burst_len = getelementptr inbounds %struct.gpmc_onenand_info, ptr %info, i32 0, i32 2
  %47 = ptrtoint ptr %burst_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %burst_len, align 4
  %call81 = call fastcc i32 @omap2_onenand_set_cfg(ptr noundef nonnull %call.i, i1 noundef zeroext %tobool79, i1 noundef zeroext %tobool80, i32 noundef %latency.0, i32 noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end78.err_release_onenand_crit_edge

if.end78.err_release_onenand_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_onenand

if.end84:                                         ; preds = %if.end78
  %49 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %info, align 8, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool86.not = icmp eq i8 %50, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.end84.do.end92_crit_edge

if.end84.do.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

lor.lhs.false:                                    ; preds = %if.end84
  %51 = ptrtoint ptr %sync_write to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sync_write, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool88.not = icmp eq i8 %52, 0
  br i1 %tobool88.not, label %lor.lhs.false.if.end94_crit_edge, label %lor.lhs.false.do.end92_crit_edge

lor.lhs.false.do.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

do.end92:                                         ; preds = %lor.lhs.false.do.end92_crit_edge, %if.end84.do.end92_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i.ph189) #11
  br label %if.end94

if.end94:                                         ; preds = %do.end92, %lor.lhs.false.if.end94_crit_edge, %if.end66.if.end94_crit_edge
  %call96 = call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end94.err_release_onenand_crit_edge

if.end94.err_release_onenand_crit_edge:           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_onenand

if.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_release_onenand:                              ; preds = %if.end94.err_release_onenand_crit_edge, %if.end78.err_release_onenand_crit_edge, %sw.epilog.err_release_onenand_crit_edge
  %r.0 = phi i32 [ %call75, %sw.epilog.err_release_onenand_crit_edge ], [ %call81, %if.end78.err_release_onenand_crit_edge ], [ %call96, %if.end94.err_release_onenand_crit_edge ]
  call void @onenand_release(ptr noundef %mtd) #8
  br label %err_release_dma

err_release_dma:                                  ; preds = %err_release_onenand, %mtd_set_of_node.exit.err_release_dma_crit_edge
  %r.1 = phi i32 [ %call64, %mtd_set_of_node.exit.err_release_dma_crit_edge ], [ %r.0, %err_release_onenand ]
  %54 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_chan, align 8
  %tobool102.not = icmp eq ptr %55, null
  br i1 %tobool102.not, label %err_release_dma.cleanup_crit_edge, label %if.then103

err_release_dma.cleanup_crit_edge:                ; preds = %err_release_dma
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then103:                                       ; preds = %err_release_dma
  call void @__sanitizer_cov_trace_pc() #10
  call void @dma_release_channel(ptr noundef nonnull %55) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %err_release_dma.cleanup_crit_edge, %if.end99, %if.then32.cleanup_crit_edge, %if.then25, %if.then17, %if.end8.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end7 ], [ %13, %if.then17 ], [ %call28, %if.then25 ], [ 0, %if.end99 ], [ -22, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ %call.i183, %if.then32.cleanup_crit_edge ], [ %r.1, %if.then103 ], [ %r.1, %err_release_dma.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mtd = getelementptr inbounds %struct.omap2_onenand, ptr %1, i32 0, i32 4
  tail call void @onenand_release(ptr noundef %mtd) #8
  %dma_chan = getelementptr inbounds %struct.omap2_onenand, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %onenand.i = getelementptr inbounds %struct.omap2_onenand, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %onenand.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %onenand.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 5120)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap2_onenand_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %onenand = getelementptr inbounds %struct.omap2_onenand, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %onenand to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %onenand, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 5120)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_done = getelementptr inbounds %struct.omap2_onenand, ptr %dev_id, i32 0, i32 6
  tail call void @complete(ptr noundef %irq_done) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_wait(ptr noundef %mtd, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %state, label %entry.if.end21_crit_edge [
    i32 23, label %entry.sw.epilog_crit_edge
    i32 25, label %sw.bb4
    i32 26, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %entry.sw.epilog_crit_edge
  %i.0 = phi i32 [ 100, %sw.bb6 ], [ 20, %sw.bb4 ], [ 20, %entry.sw.epilog_crit_edge ]
  %intr_flags.0 = phi i32 [ 32768, %sw.bb6 ], [ 32800, %sw.bb4 ], [ 32784, %entry.sw.epilog_crit_edge ]
  %onenand.i = getelementptr i8, ptr %mtd, i32 1408
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.epilog
  %dec335 = phi i32 [ %i.0, %sw.epilog ], [ %dec, %while.body.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #8
  %4 = ptrtoint ptr %onenand.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %onenand.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 124034
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !127
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp ne i32 %and, 0
  %dec = add nsw i32 %dec335, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  %8 = ptrtoint ptr %onenand.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %onenand.i, align 8
  %add.ptr.i280 = getelementptr i8, ptr %9, i32 124032
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i280) #8, !srcloc !127
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv10 = zext i16 %11 to i32
  %and11 = and i32 %conv10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.23, i32 noundef %state, i32 noundef %conv10, i32 noundef %conv) #11
  br label %cleanup185

cleanup:                                          ; preds = %while.end
  %and15 = and i32 %intr_flags.0, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and15, i32 %intr_flags.0)
  %cmp16.not = icmp eq i32 %and15, %intr_flags.0
  br i1 %cmp16.not, label %cleanup.cleanup185_crit_edge, label %cleanup.if.end21_crit_edge

cleanup.if.end21_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

cleanup.cleanup185_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.end21:                                         ; preds = %cleanup.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %state)
  %cmp22.not = icmp eq i32 %state, 21
  %onenand.i300 = getelementptr i8, ptr %mtd, i32 1408
  %12 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i301 = getelementptr i8, ptr %13, i32 123970
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i301) #8
  br i1 %cmp22.not, label %if.else80, label %if.then24

if.then24:                                        ; preds = %if.end21
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %16 = and i16 %15, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool28.not = icmp eq i16 %16, 0
  br i1 %tobool28.not, label %if.then29, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i16 %15, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %17 = tail call i16 @llvm.bswap.i16(i16 %or30) #8
  %18 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i284 = getelementptr i8, ptr %19, i32 123970
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i284, i16 %17) #8, !srcloc !130
  %20 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i286 = getelementptr i8, ptr %21, i32 123970
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i286) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.then24.if.end34_crit_edge
  %irq_done = getelementptr i8, ptr %mtd, i32 1744
  %23 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %irq_done, align 4
  %int_gpiod = getelementptr i8, ptr %mtd, i32 -4
  %24 = ptrtoint ptr %int_gpiod to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %int_gpiod, align 4
  %call35 = tail call i32 @gpiod_get_value(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i288 = getelementptr i8, ptr %27, i32 124032
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i288) #8, !srcloc !127
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv40 = zext i16 %29 to i32
  %30 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i290 = getelementptr i8, ptr %31, i32 124034
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i290) #8, !srcloc !127
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv42 = zext i16 %33 to i32
  %call.i291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, i32 noundef %state, i32 noundef %conv40, i32 noundef %conv42) #11
  br label %cleanup185

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp43 = icmp eq i32 %call35, 0
  br i1 %cmp43, label %retry.preheader, label %if.else.if.end115_crit_edge

if.else.if.end115_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

retry.preheader:                                  ; preds = %if.else
  %ongoing = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 42
  %call48 = tail call i32 @wait_for_completion_io_timeout(ptr noundef %irq_done, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %retry.preheader.if.end115_crit_edge

retry.preheader.if.end115_crit_edge:              ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then50:                                        ; preds = %retry.preheader
  %34 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i293 = getelementptr i8, ptr %35, i32 124032
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i293) #8, !srcloc !127
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv52 = zext i16 %37 to i32
  %and53 = and i32 %conv52, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then50.if.end63_crit_edge, label %land.lhs.true

if.then50.if.end63_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true:                                    ; preds = %if.then50
  %38 = ptrtoint ptr %ongoing to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ongoing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56:                                        ; preds = %land.lhs.true
  %call48.1 = tail call i32 @wait_for_completion_io_timeout(ptr noundef %irq_done, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1)
  %tobool49.not.1 = icmp eq i32 %call48.1, 0
  br i1 %tobool49.not.1, label %if.then50.1, label %if.then56.if.end115_crit_edge

if.then56.if.end115_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then50.1:                                      ; preds = %if.then56
  %40 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i293.1 = getelementptr i8, ptr %41, i32 124032
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i293.1) #8, !srcloc !127
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv52.1 = zext i16 %43 to i32
  %and53.1 = and i32 %conv52.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.1)
  %tobool54.not.1 = icmp eq i32 %and53.1, 0
  br i1 %tobool54.not.1, label %if.then50.1.if.end63_crit_edge, label %land.lhs.true.1

if.then50.1.if.end63_crit_edge:                   ; preds = %if.then50.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true.1:                                  ; preds = %if.then50.1
  %44 = ptrtoint ptr %ongoing to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ongoing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool55.not.1 = icmp eq i32 %45, 0
  br i1 %tobool55.not.1, label %if.then56.1, label %land.lhs.true.1.if.end63_crit_edge

land.lhs.true.1.if.end63_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56.1:                                      ; preds = %land.lhs.true.1
  %call48.2 = tail call i32 @wait_for_completion_io_timeout(ptr noundef %irq_done, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.2)
  %tobool49.not.2 = icmp eq i32 %call48.2, 0
  br i1 %tobool49.not.2, label %if.then50.2, label %if.then56.1.if.end115_crit_edge

if.then56.1.if.end115_crit_edge:                  ; preds = %if.then56.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then50.2:                                      ; preds = %if.then56.1
  %46 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i293.2 = getelementptr i8, ptr %47, i32 124032
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i293.2) #8, !srcloc !127
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv52.2 = zext i16 %49 to i32
  %and53.2 = and i32 %conv52.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.2)
  %tobool54.not.2 = icmp eq i32 %and53.2, 0
  br i1 %tobool54.not.2, label %if.then50.2.if.end63_crit_edge, label %land.lhs.true.2

if.then50.2.if.end63_crit_edge:                   ; preds = %if.then50.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true.2:                                  ; preds = %if.then50.2
  %50 = ptrtoint ptr %ongoing to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ongoing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool55.not.2 = icmp eq i32 %51, 0
  br i1 %tobool55.not.2, label %if.then56.2, label %land.lhs.true.2.if.end63_crit_edge

land.lhs.true.2.if.end63_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i295 = getelementptr i8, ptr %53, i32 124034
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i295) #8, !srcloc !127
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv62 = zext i16 %55 to i32
  %call.i296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.25, i32 noundef %state, i32 noundef %conv52.2, i32 noundef %conv62) #11
  br label %cleanup185

if.end63:                                         ; preds = %land.lhs.true.2.if.end63_crit_edge, %if.then50.2.if.end63_crit_edge, %land.lhs.true.1.if.end63_crit_edge, %if.then50.1.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.then50.if.end63_crit_edge
  %conv52.lcssa = phi i32 [ %conv52, %land.lhs.true.if.end63_crit_edge ], [ %conv52, %if.then50.if.end63_crit_edge ], [ %conv52.1, %if.then50.1.if.end63_crit_edge ], [ %conv52.1, %land.lhs.true.1.if.end63_crit_edge ], [ %conv52.2, %if.then50.2.if.end63_crit_edge ], [ %conv52.2, %land.lhs.true.2.if.end63_crit_edge ]
  %56 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i298 = getelementptr i8, ptr %57, i32 124034
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i298) #8, !srcloc !127
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv65 = zext i16 %59 to i32
  %and66 = and i32 %conv65, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %if.then69, label %if.end63.if.end115_crit_edge

if.end63.if.end115_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %call.i299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.25, i32 noundef %state, i32 noundef %conv52.lcssa, i32 noundef %conv65) #11
  br label %if.end115

if.else80:                                        ; preds = %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %60 = and i16 %14, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %onenand.i300, align 8
  %add.ptr.i303 = getelementptr i8, ptr %62, i32 123970
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i303, i16 %60) #8, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeout.0.ph.in = load volatile i32, ptr @jiffies, align 128
  %timeout.0.ph = add i32 %timeout.0.ph.in, 2
  br label %while.cond88

while.cond88:                                     ; preds = %if.then92.while.cond88_crit_edge, %if.else80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %63, %timeout.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp90 = icmp slt i32 %sub, 0
  %64 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %onenand.i300, align 8
  br i1 %cmp90, label %if.then92, label %if.else99

if.then92:                                        ; preds = %while.cond88
  %add.ptr.i305 = getelementptr i8, ptr %65, i32 124034
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i305) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %.mask330 = and i16 %66, 128
  %tobool96.not = icmp eq i16 %.mask330, 0
  br i1 %tobool96.not, label %if.then92.while.cond88_crit_edge, label %if.then92.if.end115_crit_edge

if.then92.if.end115_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then92.while.cond88_crit_edge:                 ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond88

if.else99:                                        ; preds = %while.cond88
  %add.ptr.i307 = getelementptr i8, ptr %65, i32 124032
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i307) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %.mask = and i16 %67, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool103.not = icmp eq i16 %.mask, 0
  br i1 %tobool103.not, label %if.else99.if.end115_crit_edge, label %if.then104

if.else99.if.end115_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then104:                                       ; preds = %if.else99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeout.0.ph.in.1 = load volatile i32, ptr @jiffies, align 128
  %timeout.0.ph.1 = add i32 %timeout.0.ph.in.1, 2
  br label %while.cond88.1

while.cond88.1:                                   ; preds = %if.then92.1.while.cond88.1_crit_edge, %if.then104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub.1 = sub i32 %68, %timeout.0.ph.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp90.1 = icmp slt i32 %sub.1, 0
  %69 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %onenand.i300, align 8
  br i1 %cmp90.1, label %if.then92.1, label %if.else99.1

if.else99.1:                                      ; preds = %while.cond88.1
  %add.ptr.i307.1 = getelementptr i8, ptr %70, i32 124032
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i307.1) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %.mask.1 = and i16 %71, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.1)
  %tobool103.not.1 = icmp eq i16 %.mask.1, 0
  br i1 %tobool103.not.1, label %if.else99.1.if.end115_crit_edge, label %if.then104.1

if.else99.1.if.end115_crit_edge:                  ; preds = %if.else99.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then104.1:                                     ; preds = %if.else99.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeout.0.ph.in.2 = load volatile i32, ptr @jiffies, align 128
  %timeout.0.ph.2 = add i32 %timeout.0.ph.in.2, 2
  br label %while.cond88.2

if.then92.1:                                      ; preds = %while.cond88.1
  %add.ptr.i305.1 = getelementptr i8, ptr %70, i32 124034
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i305.1) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %.mask330.1 = and i16 %72, 128
  %tobool96.not.1 = icmp eq i16 %.mask330.1, 0
  br i1 %tobool96.not.1, label %if.then92.1.while.cond88.1_crit_edge, label %if.then92.1.if.end115_crit_edge

if.then92.1.if.end115_crit_edge:                  ; preds = %if.then92.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then92.1.while.cond88.1_crit_edge:             ; preds = %if.then92.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond88.1

while.cond88.2:                                   ; preds = %if.then92.2.while.cond88.2_crit_edge, %if.then104.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %sub.2 = sub i32 %73, %timeout.0.ph.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp90.2 = icmp slt i32 %sub.2, 0
  %74 = ptrtoint ptr %onenand.i300 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %onenand.i300, align 8
  br i1 %cmp90.2, label %if.then92.2, label %if.else99.2

if.else99.2:                                      ; preds = %while.cond88.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i307.2 = getelementptr i8, ptr %75, i32 124032
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i307.2) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  br label %if.end115

if.then92.2:                                      ; preds = %while.cond88.2
  %add.ptr.i305.2 = getelementptr i8, ptr %75, i32 124034
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i305.2) #8, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %.mask330.2 = and i16 %77, 128
  %tobool96.not.2 = icmp eq i16 %.mask330.2, 0
  br i1 %tobool96.not.2, label %if.then92.2.while.cond88.2_crit_edge, label %if.then92.2.if.end115_crit_edge

if.then92.2.if.end115_crit_edge:                  ; preds = %if.then92.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then92.2.while.cond88.2_crit_edge:             ; preds = %if.then92.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond88.2

if.end115:                                        ; preds = %if.then92.2.if.end115_crit_edge, %if.else99.2, %if.then92.1.if.end115_crit_edge, %if.else99.1.if.end115_crit_edge, %if.else99.if.end115_crit_edge, %if.then92.if.end115_crit_edge, %if.then69, %if.end63.if.end115_crit_edge, %if.then56.1.if.end115_crit_edge, %if.then56.if.end115_crit_edge, %retry.preheader.if.end115_crit_edge, %if.else.if.end115_crit_edge
  %onenand.i308 = getelementptr i8, ptr %mtd, i32 1408
  %78 = ptrtoint ptr %onenand.i308 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %onenand.i308, align 8
  %add.ptr.i309 = getelementptr i8, ptr %79, i32 124034
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i309) #8, !srcloc !127
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv117 = zext i16 %81 to i32
  %82 = ptrtoint ptr %onenand.i308 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %onenand.i308, align 8
  %add.ptr.i311 = getelementptr i8, ptr %83, i32 124032
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i311) #8, !srcloc !127
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv119 = zext i16 %85 to i32
  %and120 = and i32 %conv117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else157, label %if.then122

if.then122:                                       ; preds = %if.end115
  %86 = ptrtoint ptr %onenand.i308 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %onenand.i308, align 8
  %add.ptr.i313 = getelementptr i8, ptr %87, i32 130560
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i313) #8, !srcloc !127
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv124 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool125.not = icmp eq i16 %88, 0
  br i1 %tobool125.not, label %if.then122.if.end162_crit_edge, label %if.then126

if.then122.if.end162_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then126:                                       ; preds = %if.then122
  %90 = ptrtoint ptr %onenand.i308 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %onenand.i308, align 8
  %add.ptr.i315 = getelementptr i8, ptr %91, i32 123392
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i315) #8, !srcloc !127
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv128 = zext i16 %93 to i32
  %94 = ptrtoint ptr %onenand.i308 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %onenand.i308, align 8
  %add.ptr.i317 = getelementptr i8, ptr %95, i32 123406
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i317) #8, !srcloc !127
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv130 = zext i16 %97 to i32
  %and131 = and i32 %conv124, 43690
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.else136, label %cleanup154

if.else136:                                       ; preds = %if.then126
  %and137 = and i32 %conv124, 21845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.else136.if.end162_crit_edge, label %do.end142

if.else136.if.end162_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

do.end142:                                        ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv124, i32 noundef %conv128, i32 noundef %conv130) #11
  %ecc_stats145 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %98 = ptrtoint ptr %ecc_stats145 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ecc_stats145, align 4
  %inc146 = add i32 %99, 1
  store i32 %inc146, ptr %ecc_stats145, align 4
  br label %if.end162

cleanup154:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv124, i32 noundef %conv128, i32 noundef %conv130) #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %100 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %failed, align 4
  %inc = add i32 %101, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup185

if.else157:                                       ; preds = %if.end115
  br i1 %cmp22.not, label %if.then160, label %if.else157.if.end162_crit_edge

if.else157.if.end162_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then160:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  %call.i318 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.25, i32 noundef 21, i32 noundef %conv119, i32 noundef %conv117) #11
  br label %cleanup185

if.end162:                                        ; preds = %if.else157.if.end162_crit_edge, %do.end142, %if.else136.if.end162_crit_edge, %if.then122.if.end162_crit_edge
  %and163 = and i32 %conv119, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end175, label %if.then165

if.then165:                                       ; preds = %if.end162
  %call.i319 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.23, i32 noundef %state, i32 noundef %conv119, i32 noundef %conv117) #11
  %and166 = and i32 %conv119, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.then165.cleanup185_crit_edge, label %do.end171

if.then165.cleanup185_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

do.end171:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %cleanup185

if.end175:                                        ; preds = %if.end162
  %ongoing176 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 42
  %102 = ptrtoint ptr %ongoing176 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ongoing176, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool177.not = icmp eq i32 %103, 0
  %spec.select = select i1 %tobool177.not, i32 65183, i32 32415
  %and181 = and i32 %spec.select, %conv119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end175.cleanup185_crit_edge, label %if.then183

if.end175.cleanup185_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

if.then183:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %call.i320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, i32 noundef %state, i32 noundef %conv119, i32 noundef %conv117) #11
  br label %cleanup185

cleanup185:                                       ; preds = %if.then183, %if.end175.cleanup185_crit_edge, %do.end171, %if.then165.cleanup185_crit_edge, %if.then160, %cleanup154, %if.then56.2, %if.then38, %cleanup.cleanup185_crit_edge, %cleanup.thread
  %retval.9 = phi i32 [ -74, %cleanup154 ], [ -5, %if.then160 ], [ 0, %cleanup.cleanup185_crit_edge ], [ -5, %do.end171 ], [ -5, %if.then165.cleanup185_crit_edge ], [ 0, %if.then183 ], [ 0, %if.end175.cleanup185_crit_edge ], [ -5, %cleanup.thread ], [ -5, %if.then56.2 ], [ %call35, %if.then38 ]
  ret i32 %retval.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_read_bufferram(ptr noundef %mtd, i32 noundef %area, ptr noundef %buffer, i32 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -16
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.omap2_onenand_bufferram_offset.exit_crit_edge, label %if.then.i

entry.omap2_onenand_bufferram_offset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap2_onenand_bufferram_offset.exit

if.then.i:                                        ; preds = %entry
  %6 = zext i32 %area to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %area, label %if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge [
    i32 1024, label %if.then1.i
    i32 65568, label %if.then3.i
  ]

if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap2_onenand_bufferram_offset.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  br label %omap2_onenand_bufferram_offset.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize.i, align 4
  br label %omap2_onenand_bufferram_offset.exit

omap2_onenand_bufferram_offset.exit:              ; preds = %if.then3.i, %if.then1.i, %if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge, %entry.omap2_onenand_bufferram_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then1.i ], [ %10, %if.then3.i ], [ 0, %if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge ], [ 0, %entry.omap2_onenand_bufferram_offset.exit_crit_edge ]
  %add = add i32 %offset, %area
  %add2 = add i32 %add, %retval.0.i
  %11 = ptrtoint ptr %buffer to i32
  %cmp = icmp ugt ptr %buffer, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %omap2_onenand_bufferram_offset.exit.out_copy_crit_edge

omap2_onenand_bufferram_offset.exit.out_copy_crit_edge: ; preds = %omap2_onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

land.lhs.true:                                    ; preds = %omap2_onenand_bufferram_offset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %12 = load ptr, ptr @high_memory, align 4
  %cmp3 = icmp ugt ptr %12, %buffer
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.out_copy_crit_edge

land.lhs.true.out_copy_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add5 = add i32 %13, %shr
  %call6 = tail call i32 @pfn_valid(i32 noundef %add5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp ne i32 %call6, 0
  %and = and i32 %add2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool7.not, i1 false
  %and9 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond79 = and i1 %tobool10.not, %or.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %count)
  %cmp12 = icmp ugt i32 %count, 383
  %14 = and i1 %cmp12, %or.cond79
  br i1 %14, label %lor.lhs.false13, label %land.lhs.true4.out_copy_crit_edge

land.lhs.true4.out_copy_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

lor.lhs.false13:                                  ; preds = %land.lhs.true4
  %oops_panic_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 50
  %15 = ptrtoint ptr %oops_panic_write to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %oops_panic_write, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.end, label %lor.lhs.false13.out_copy_crit_edge

lor.lhs.false13.out_copy_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

if.end:                                           ; preds = %lor.lhs.false13
  %and15 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end22_crit_edge, label %if.then17

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub18 = and i32 %count, -4
  %add.ptr19 = getelementptr i8, ptr %buffer, i32 %sub18
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr20 = getelementptr i8, ptr %18, i32 %add2
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 %sub18
  %19 = call ptr @memcpy(ptr %add.ptr19, ptr %add.ptr21, i32 %and15)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end.if.end22_crit_edge
  %count.addr.0 = phi i32 [ %sub18, %if.then17 ], [ %count, %if.end.if.end22_crit_edge ]
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %buffer) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end22
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i81, !prof !131

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i81:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #8
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i81.dev_name.exit.i_crit_edge

if.then.i81.dev_name.exit.i_crit_edge:            ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i81.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i81.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #8
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end22
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef nonnull %buffer, i32 noundef %count.addr.0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %count.addr.0, i32 noundef 2, i32 noundef 0) #8
  %phys_base = getelementptr i8, ptr %mtd, i32 -8
  %25 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_base, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end28

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %count.addr.0) #11
  br label %out_copy

if.end28:                                         ; preds = %dma_map_single_attrs.exit
  %add24 = add i32 %26, %add2
  %call29 = tail call fastcc i32 @omap2_onenand_dma_transfer(ptr noundef %add.ptr, i32 noundef %add24, i32 noundef %call41.i, i32 noundef %count.addr.0)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %call41.i, i32 noundef %count.addr.0, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %do.end35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #11
  br label %out_copy

out_copy:                                         ; preds = %do.end35, %do.end, %lor.lhs.false13.out_copy_crit_edge, %land.lhs.true4.out_copy_crit_edge, %land.lhs.true.out_copy_crit_edge, %omap2_onenand_bufferram_offset.exit.out_copy_crit_edge
  %count.addr.1 = phi i32 [ %count, %lor.lhs.false13.out_copy_crit_edge ], [ %count.addr.0, %do.end ], [ %count.addr.0, %do.end35 ], [ %count, %land.lhs.true4.out_copy_crit_edge ], [ %count, %land.lhs.true.out_copy_crit_edge ], [ %count, %omap2_onenand_bufferram_offset.exit.out_copy_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %add.ptr37 = getelementptr i8, ptr %28, i32 %add2
  %29 = call ptr @memcpy(ptr %buffer, ptr %add.ptr37, i32 %count.addr.1)
  br label %cleanup

cleanup:                                          ; preds = %out_copy, %if.end28.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_onenand_write_bufferram(ptr noundef %mtd, i32 noundef %area, ptr noundef %buffer, i32 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -16
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.omap2_onenand_bufferram_offset.exit_crit_edge, label %if.then.i

entry.omap2_onenand_bufferram_offset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap2_onenand_bufferram_offset.exit

if.then.i:                                        ; preds = %entry
  %6 = zext i32 %area to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %area, label %if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge [
    i32 1024, label %if.then1.i
    i32 65568, label %if.then3.i
  ]

if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap2_onenand_bufferram_offset.exit

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  br label %omap2_onenand_bufferram_offset.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize.i, align 4
  br label %omap2_onenand_bufferram_offset.exit

omap2_onenand_bufferram_offset.exit:              ; preds = %if.then3.i, %if.then1.i, %if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge, %entry.omap2_onenand_bufferram_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then1.i ], [ %10, %if.then3.i ], [ 0, %if.then.i.omap2_onenand_bufferram_offset.exit_crit_edge ], [ 0, %entry.omap2_onenand_bufferram_offset.exit_crit_edge ]
  %add = add i32 %offset, %area
  %add2 = add i32 %add, %retval.0.i
  %11 = ptrtoint ptr %buffer to i32
  %cmp = icmp ugt ptr %buffer, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %omap2_onenand_bufferram_offset.exit.out_copy_crit_edge

omap2_onenand_bufferram_offset.exit.out_copy_crit_edge: ; preds = %omap2_onenand_bufferram_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

land.lhs.true:                                    ; preds = %omap2_onenand_bufferram_offset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %12 = load ptr, ptr @high_memory, align 4
  %cmp3 = icmp ugt ptr %12, %buffer
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.out_copy_crit_edge

land.lhs.true.out_copy_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add5 = add i32 %13, %shr
  %call6 = tail call i32 @pfn_valid(i32 noundef %add5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp ne i32 %call6, 0
  %and = and i32 %add2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool7.not, i1 false
  %and9 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond60 = and i1 %tobool10.not, %or.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %count)
  %cmp12 = icmp ugt i32 %count, 383
  %14 = and i1 %cmp12, %or.cond60
  br i1 %14, label %lor.lhs.false13, label %land.lhs.true4.out_copy_crit_edge

land.lhs.true4.out_copy_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

lor.lhs.false13:                                  ; preds = %land.lhs.true4
  %oops_panic_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 50
  %15 = ptrtoint ptr %oops_panic_write to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %oops_panic_write, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.end, label %lor.lhs.false13.out_copy_crit_edge

lor.lhs.false13.out_copy_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_copy

if.end:                                           ; preds = %lor.lhs.false13
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %buffer) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i62, !prof !131

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i62:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #8
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i62.dev_name.exit.i_crit_edge

if.then.i62.dev_name.exit.i_crit_edge:            ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i62.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i62.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #8
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef nonnull %buffer, i32 noundef %count) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %21, i32 %shr
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %count, i32 noundef 1, i32 noundef 0) #8
  %phys_base = getelementptr i8, ptr %mtd, i32 -8
  %22 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys_base, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end20

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %count) #11
  br label %out_copy

if.end20:                                         ; preds = %dma_map_single_attrs.exit
  %add16 = add i32 %23, %add2
  %call21 = tail call fastcc i32 @omap2_onenand_dma_transfer(ptr noundef %add.ptr, i32 noundef %call41.i, i32 noundef %add16, i32 noundef %count)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %call41.i, i32 noundef %count, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %do.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #11
  br label %out_copy

out_copy:                                         ; preds = %do.end27, %do.end, %lor.lhs.false13.out_copy_crit_edge, %land.lhs.true4.out_copy_crit_edge, %land.lhs.true.out_copy_crit_edge, %omap2_onenand_bufferram_offset.exit.out_copy_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr28 = getelementptr i8, ptr %25, i32 %add2
  %26 = call ptr @memcpy(ptr %add.ptr28, ptr %buffer, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %out_copy, %if.end20.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onenand_scan(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpmc_omap_onenand_set_timings(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap2_onenand_set_cfg(ptr nocapture noundef readonly %c, i1 noundef zeroext %sr, i1 noundef zeroext %sw, i32 noundef %latency, i32 noundef %burst_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %latency.tr = trunc i32 %latency to i16
  %0 = shl i16 %latency.tr, 12
  %conv2 = or i16 %0, 192
  %1 = tail call i32 @llvm.fshl.i32(i32 %burst_len, i32 %burst_len, i32 30)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb10
    i32 8, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = or i16 %0, 704
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = or i16 %0, 1216
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i16 %0, 1728
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = or i16 %0, 2240
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  %reg.0 = phi i16 [ %6, %sw.bb14 ], [ %5, %sw.bb10 ], [ %4, %sw.bb6 ], [ %3, %sw.bb ], [ %conv2, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %latency)
  %cmp = icmp sgt i32 %latency, 5
  %7 = or i16 %reg.0, 4
  %spec.select = select i1 %cmp, i16 %7, i16 %reg.0
  %8 = or i16 %spec.select, -32768
  %reg.3 = select i1 %sr, i16 %8, i16 %spec.select
  %9 = or i16 %reg.3, 2
  %reg.4 = select i1 %sw, i16 %9, i16 %reg.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %reg.4) #8
  %onenand.i = getelementptr inbounds %struct.omap2_onenand, ptr %c, i32 0, i32 5
  %11 = ptrtoint ptr %onenand.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %onenand.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 123970
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #8, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @onenand_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_io_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap2_onenand_dma_transfer(ptr noundef %c, i32 noundef %src, i32 noundef %dst, i32 noundef %count) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %dma_chan = getelementptr inbounds %struct.omap2_onenand, ptr %c, i32 0, i32 8
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, i32 noundef %dst, i32 noundef %src, i32 noundef %count, i32 noundef 3) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_dma_memcpy.exit.do.end_crit_edge, label %if.end

dmaengine_prep_dma_memcpy.exit.do.end_crit_edge:  ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_dma_memcpy.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_dma_memcpy.exit
  %dma_done = getelementptr inbounds %struct.omap2_onenand, ptr %c, i32 0, i32 7
  %8 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dma_done, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @omap2_onenand_dma_complete_func, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dma_done, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_submit, align 4
  %call2 = tail call i32 %12(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %tobool4.not = icmp sgt i32 %call2, -1
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %c, align 8
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %15 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_chan, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 50
  %19 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %20(ptr noundef %16) #8
  %call15 = tail call i32 @wait_for_completion_io_timeout(ptr noundef %dma_done, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  %21 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_chan, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.then17.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then17
  %call.i.i = tail call i32 %26(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i33 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i33, label %if.end.i34, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i34:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 1169) #8
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 48
  %29 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %30, null
  br i1 %tobool.not.i1.i, label %if.end.i34.cleanup_crit_edge, label %if.then.i2.i

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %30(ptr noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2.i, %if.end.i34.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -5, %do.end8 ], [ -5, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ -110, %if.then17.cleanup_crit_edge ], [ -110, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ -110, %if.end.i34.cleanup_crit_edge ], [ -110, %if.then.i2.i ]
  ret i32 %retval.0
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_onenand_dma_complete_func(ptr noundef %completion) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %completion) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_onenand_omap2__236_612_omap2_onenand_driver_init6, !1, !"__initcall__kmod_onenand_omap2__236_612_omap2_onenand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 612, i32 1}
!2 = !{ptr @__exitcall_omap2_onenand_driver_exit, !1, !"__exitcall_omap2_onenand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias237, !4, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 614, i32 1}
!5 = !{ptr @__UNIQUE_ID_file238, !6, !"__UNIQUE_ID_file238", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 615, i32 1}
!7 = !{ptr @__UNIQUE_ID_license239, !6, !"__UNIQUE_ID_license239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author240, !9, !"__UNIQUE_ID_author240", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 616, i32 1}
!10 = !{ptr @__UNIQUE_ID_description241, !11, !"__UNIQUE_ID_description241", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 617, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 607, i32 11}
!14 = !{ptr @omap2_onenand_driver, !15, !"omap2_onenand_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 602, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 472, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap2_onenand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap2_onenand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 476, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 478, i32 3}
!28 = !{ptr @omap2_onenand_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @omap2_onenand_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 495, i32 46}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 498, i32 52}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 504, i32 31}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 525, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omap2_onenand_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap2_onenand_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 564, i32 4}
!45 = !{ptr @omap2_onenand_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @omap2_onenand_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 176, i32 13}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 201, i32 13}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 221, i32 15}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 275, i32 5}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @omap2_onenand_wait._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @omap2_onenand_wait._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 281, i32 5}
!63 = !{ptr @omap2_onenand_wait._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap2_onenand_wait._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 295, i32 4}
!67 = !{ptr @omap2_onenand_wait._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @omap2_onenand_wait._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 305, i32 13}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 131, i32 2}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wait_err._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @wait_err._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 138, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @wait_warn._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @wait_warn._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 392, i32 3}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @omap2_onenand_read_bufferram._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @omap2_onenand_read_bufferram._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 401, i32 2}
!88 = !{ptr @omap2_onenand_read_bufferram._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @omap2_onenand_read_bufferram._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 334, i32 3}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @omap2_onenand_dma_transfer._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @omap2_onenand_dma_transfer._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 345, i32 3}
!101 = !{ptr @omap2_onenand_dma_transfer._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @omap2_onenand_dma_transfer._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 432, i32 3}
!107 = !{ptr @omap2_onenand_write_bufferram._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @omap2_onenand_write_bufferram._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @omap2_onenand_write_bufferram._entry.53, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 441, i32 2}
!111 = !{ptr @omap2_onenand_write_bufferram._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!114 = !{ptr @omap2_onenand_id_table, !115, !"omap2_onenand_id_table", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/onenand/onenand_omap2.c", i32 596, i32 34}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i8 0, i8 2}
!127 = !{i64 5187207}
!128 = !{i64 2154473924}
!129 = !{i64 2154474313}
!130 = !{i64 5187007}
!131 = !{!"branch_weights", i32 2000, i32 1}
