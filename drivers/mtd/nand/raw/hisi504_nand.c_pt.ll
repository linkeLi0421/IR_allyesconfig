; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/hisi504_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/hisi504_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
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
%struct.hinfc_host = type { %struct.nand_chip, ptr, ptr, ptr, %struct.completion, i32, i32, i32, i32, [2 x i32], [2 x i32], ptr, i32, i32, i32, i32 }
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
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_hisi504_nand__253_866_hisi_nfc_driver_init6 = internal global ptr @hisi_nfc_driver_init, section ".initcall6.init", align 4
@hisi_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_nfc_probe, ptr @hisi_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nfc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_nfc_driver_exit = internal global ptr @hisi_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file254 = internal constant [52 x i8] c"hisi504_nand.file=drivers/mtd/nand/raw/hisi504_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [25 x i8] c"hisi504_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [30 x i8] c"hisi504_nand.author=Zhou Wang\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [32 x i8] c"hisi504_nand.author=Zhiyong Cai\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [64 x i8] c"hisi504_nand.description=Hisilicon Nand Flash Controller Driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hisi_nand\00", [22 x i8] zeroinitializer }, align 32
@nfc_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,504-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hisi_nfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hisi_nfc_suspend, ptr @hisi_nfc_resume, ptr @hisi_nfc_suspend, ptr @hisi_nfc_resume, ptr @hisi_nfc_suspend, ptr @hisi_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nandc\00", [26 x i8] zeroinitializer }, align 32
@hisi_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_nfc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/hisi504_nand.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_nfc_probe._entry_ptr = internal global ptr @hisi_nfc_probe._entry, section ".printk_index", align 4
@hisi_nfc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @hisi_nfc_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@hisi_nfc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 793, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Err MTD partition=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@hisi_nfc_probe._entry_ptr.9 = internal global ptr @hisi_nfc_probe._entry.7, section ".printk_index", align 4
@hisi_nfc_cmdfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error: unsupported cmd(cmd=%x, col=%x, page=%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hisi_nfc_cmdfunc\00", [47 x i8] zeroinitializer }, align 32
@hisi_nfc_cmdfunc._entry_ptr = internal global ptr @hisi_nfc_cmdfunc._entry, section ".printk_index", align 4
@hisi_nfc_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA operation(irq) timeout!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hisi_nfc_dma_transfer\00", [42 x i8] zeroinitializer }, align 32
@hisi_nfc_dma_transfer._entry_ptr = internal global ptr @hisi_nfc_dma_transfer._entry, section ".printk_index", align 4
@hisi_nfc_dma_transfer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA is already done but without irq ACK!\0A\00", [54 x i8] zeroinitializer }, align 32
@hisi_nfc_dma_transfer._entry_ptr.17 = internal global ptr @hisi_nfc_dma_transfer._entry.15, section ".printk_index", align 4
@hisi_nfc_dma_transfer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA is really timeout!\0A\00", [40 x i8] zeroinitializer }, align 32
@hisi_nfc_dma_transfer._entry_ptr.20 = internal global ptr @hisi_nfc_dma_transfer._entry.18, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_controller_finished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Wait NAND controller exec cmd timeout.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wait_controller_finished\00", [39 x i8] zeroinitializer }, align 32
@wait_controller_finished._entry_ptr = internal global ptr @wait_controller_finished._entry, section ".printk_index", align 4
@hisi_nfc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NON-2KB page size nand flash\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_nfc_attach_chip\00", [43 x i8] zeroinitializer }, align 32
@hisi_nfc_attach_chip._entry_ptr = internal global ptr @hisi_nfc_attach_chip._entry, section ".printk_index", align 4
@hisi_nfc_ecc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error ecc size: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hisi_nfc_ecc_probe\00", [45 x i8] zeroinitializer }, align 32
@hisi_nfc_ecc_probe._entry_ptr = internal global ptr @hisi_nfc_ecc_probe._entry, section ".printk_index", align 4
@hisi_nfc_ecc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 653, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ecc size and strength do not match\0A\00", [60 x i8] zeroinitializer }, align 32
@hisi_nfc_ecc_probe._entry_ptr.30 = internal global ptr @hisi_nfc_ecc_probe._entry.28, section ".printk_index", align 4
@hisi_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @hisi_ooblayout_ecc, ptr @hisi_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@hisi_nfc_ecc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.4, i32 675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not support strength: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hisi_nfc_ecc_probe._entry_ptr.33 = internal global ptr @hisi_nfc_ecc_probe._entry.31, section ".printk_index", align 4
@hisi_nfc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nand controller suspend timeout.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hisi_nfc_suspend\00", [47 x i8] zeroinitializer }, align 32
@hisi_nfc_suspend._entry_ptr = internal global ptr @hisi_nfc_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 16, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 255]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 144, i64 236, i64 238, i64 239]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 144, i64 236, i64 238, i64 239]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 144, i64 236, i64 238, i64 239]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"hisi_nfc_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 856, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 858, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"nfc_id_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 850, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"hisi_nfc_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 848, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 780, i32 58 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 782, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"hisi_nfc_controller_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 730, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 793, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 487, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 228, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 232, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 234, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 87, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 176, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 719, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 647, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 653, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"hisi_ooblayout_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 631, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 675, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [39 x i8] c"../drivers/mtd/nand/raw/hisi504_nand.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 829, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_hisi_nfc_driver_exit, ptr @__initcall__kmod_hisi504_nand__253_866_hisi_nfc_driver_init6, ptr @hisi_nfc_attach_chip._entry, ptr @hisi_nfc_attach_chip._entry_ptr, ptr @hisi_nfc_cmdfunc._entry, ptr @hisi_nfc_cmdfunc._entry_ptr, ptr @hisi_nfc_dma_transfer._entry, ptr @hisi_nfc_dma_transfer._entry.15, ptr @hisi_nfc_dma_transfer._entry.18, ptr @hisi_nfc_dma_transfer._entry_ptr, ptr @hisi_nfc_dma_transfer._entry_ptr.17, ptr @hisi_nfc_dma_transfer._entry_ptr.20, ptr @hisi_nfc_driver_exit, ptr @hisi_nfc_ecc_probe._entry, ptr @hisi_nfc_ecc_probe._entry.28, ptr @hisi_nfc_ecc_probe._entry.31, ptr @hisi_nfc_ecc_probe._entry_ptr, ptr @hisi_nfc_ecc_probe._entry_ptr.30, ptr @hisi_nfc_ecc_probe._entry_ptr.33, ptr @hisi_nfc_probe._entry, ptr @hisi_nfc_probe._entry.7, ptr @hisi_nfc_probe._entry_ptr, ptr @hisi_nfc_probe._entry_ptr.9, ptr @hisi_nfc_suspend._entry, ptr @hisi_nfc_suspend._entry_ptr, ptr @wait_controller_finished._entry, ptr @wait_controller_finished._entry_ptr, ptr @hisi_nfc_driver, ptr @.str, ptr @nfc_id_table, ptr @hisi_nfc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hisi_nfc_controller_ops, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @hisi_ooblayout_ops, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_cmdfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_dma_transfer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_dma_transfer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_controller_finished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_ecc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_ecc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_ecc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_nfc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_nfc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_nfc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2288, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %iobase = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %iobase, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %mmio = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %mmio, align 8
  %cmp.i98 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then18, label %nand_set_flash_node.exit

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

nand_set_flash_node.exit:                         ; preds = %if.end14
  %name = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %name, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent, align 8
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 34
  %10 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %priv1.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %of_node.i.i, align 8
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hisi_nfc_cmdfunc, ptr %cmdfunc, align 8
  %select_chip = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %select_chip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hisi_nfc_select_chip, ptr %select_chip, align 8
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hisi_nfc_read_byte, ptr %read_byte, align 4
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 5
  %15 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hisi_nfc_write_buf, ptr %write_buf, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hisi_nfc_read_buf, ptr %read_buf, align 8
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 15
  %17 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 25, ptr %chip_delay, align 4
  %set_features = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 13
  %18 = ptrtoint ptr %set_features to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nand_get_set_features_notsupp, ptr %set_features, align 4
  %get_features = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 14
  %19 = ptrtoint ptr %get_features to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nand_get_set_features_notsupp, ptr %get_features, align 8
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 116
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !98
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %version.i = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %version.i, align 8
  %addr_cycle.i = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %addr_cycle.i, align 8
  %addr_value.i = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %addr_value.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %addr_value.i, align 4
  %arrayidx3.i = getelementptr %struct.hinfc_host, ptr %call.i, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx3.i, align 4
  %cache_addr_value.i = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %cache_addr_value.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %cache_addr_value.i, align 4
  %arrayidx6.i = getelementptr %struct.hinfc_host, ptr %call.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %arrayidx6.i, align 4
  %chipselect.i = getelementptr inbounds %struct.hinfc_host, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %chipselect.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %chipselect.i, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %options.i, align 8
  %and.i = shl i32 %32, 3
  %33 = and i32 %and.i, 16
  %or.i = or i32 %33, 259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !101
  %37 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio, align 8
  %39 = call ptr @memset(ptr %38, i32 255, i32 2176)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 1963130880) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 131072) #9, !srcloc !101
  %call.i99 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call5, ptr noundef nonnull @hinfc_irq_handle, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool32.not = icmp eq i32 %call.i99, 0
  br i1 %tobool32.not, label %if.end34, label %do.end

do.end:                                           ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end34:                                         ; preds = %nand_set_flash_node.exit
  %ops = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 16, i32 1
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @hisi_nfc_controller_ops, ptr %ops, align 4
  %call.i100 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef 4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool37.not = icmp eq i32 %call.i100, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call40 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %do.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call40) #12
  tail call void @nand_cleanup(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end, %if.then18, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then11 ], [ %7, %if.then18 ], [ %call.i99, %do.end ], [ %call40, %do.end45 ], [ -12, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %call.i100, %if.end34.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 808, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_nfc_cmdfunc(ptr nocapture noundef readonly %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %command2 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %command2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %command, ptr %command2, align 8
  %3 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.end [
    i32 255, label %sw.bb23
    i32 112, label %sw.bb15
    i32 128, label %sw.bb5
    i32 96, label %sw.bb7
    i32 16, label %sw.bb8
    i32 208, label %sw.bb10
    i32 144, label %sw.bb12
    i32 0, label %entry.if.end_crit_edge
    i32 80, label %if.else
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %add = add i32 %5, %column
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %add.sink = phi i32 [ %add, %if.else ], [ %column, %entry.if.end_crit_edge ]
  %offset3 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %offset3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.sink, ptr %offset3, align 4
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %command2.i = getelementptr inbounds %struct.hinfc_host, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %command2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %command2.i, align 8
  %addr_cycle.i = getelementptr inbounds %struct.hinfc_host, ptr %8, i32 0, i32 8
  %11 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %addr_cycle.i, align 8
  %addr_value.i = getelementptr inbounds %struct.hinfc_host, ptr %8, i32 0, i32 9
  %12 = ptrtoint ptr %addr_value.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %addr_value.i, align 4
  %arrayidx4.i = getelementptr %struct.hinfc_host, ptr %8, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.not.i = icmp eq i32 %column, -1
  br i1 %cmp.not.i, label %if.end.if.end12.i_crit_edge, label %if.then.i

if.end.if.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options.i, align 8
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %16 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %10, label %17 [
    i32 144, label %land.lhs.true.i.if.end.i_crit_edge
    i32 236, label %land.lhs.true.i.if.end.i_crit_edge270
    i32 238, label %land.lhs.true.i.if.end.i_crit_edge271
    i32 239, label %land.lhs.true.i.if.end.i_crit_edge272
  ]

land.lhs.true.i.if.end.i_crit_edge272:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge271:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge270:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

17:                                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr64.i = ashr i32 %column, 1
  br label %if.end.i

if.end.i:                                         ; preds = %17, %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge270, %land.lhs.true.i.if.end.i_crit_edge271, %land.lhs.true.i.if.end.i_crit_edge272, %if.then.i.if.end.i_crit_edge
  %column.addr.0.i = phi i32 [ %column, %if.then.i.if.end.i_crit_edge ], [ %shr64.i, %17 ], [ %column, %land.lhs.true.i.if.end.i_crit_edge ], [ %column, %land.lhs.true.i.if.end.i_crit_edge270 ], [ %column, %land.lhs.true.i.if.end.i_crit_edge271 ], [ %column, %land.lhs.true.i.if.end.i_crit_edge272 ]
  %and8.i = and i32 %column.addr.0.i, 65535
  %18 = ptrtoint ptr %addr_value.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and8.i, ptr %addr_value.i, align 4
  %19 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %addr_cycle.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i, %if.end.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp13.not.i = icmp eq i32 %page_addr, -1
  br i1 %cmp13.not.i, label %if.end12.i.set_addr.exit_crit_edge, label %if.then14.i

if.end12.i.set_addr.exit_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit

if.then14.i:                                      ; preds = %if.end12.i
  %and15.i = and i32 %page_addr, 65535
  %20 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_cycle.i, align 8
  %mul.i = shl i32 %21, 3
  %shl.i = shl i32 %and15.i, %mul.i
  %22 = ptrtoint ptr %addr_value.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr_value.i, align 4
  %or.i = or i32 %shl.i, %23
  store i32 %or.i, ptr %addr_value.i, align 4
  %add.i = add i32 %21, 2
  store i32 %add.i, ptr %addr_cycle.i, align 8
  %options20.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %24 = ptrtoint ptr %options20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %options20.i, align 8
  %and21.i = and i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then14.i.set_addr.exit_crit_edge, label %if.then23.i

if.then14.i.set_addr.exit_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_addr.exit

if.then23.i:                                      ; preds = %if.then14.i
  %add25.i = add i32 %21, 3
  %26 = ptrtoint ptr %addr_cycle.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add25.i, ptr %addr_cycle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %10)
  %cmp27.i = icmp eq i32 %10, 96
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %and30.i = and i32 %page_addr, 16711680
  %or34.i = or i32 %or.i, %and30.i
  %27 = ptrtoint ptr %addr_value.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or34.i, ptr %addr_value.i, align 4
  br label %set_addr.exit

if.else.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = lshr i32 %page_addr, 16
  %and36.i = and i32 %28, 255
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and36.i, ptr %arrayidx4.i, align 4
  br label %set_addr.exit

set_addr.exit:                                    ; preds = %if.else.i, %if.then28.i, %if.then14.i.set_addr.exit_crit_edge, %if.end12.i.set_addr.exit_crit_edge
  %addr_value.i75 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %addr_value.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr_value.i75, align 4
  %cache_addr_value.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %cache_addr_value.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cache_addr_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i = icmp eq i32 %31, %33
  br i1 %cmp.i, label %land.lhs.true.i76, label %set_addr.exit.if.end.i79_crit_edge

set_addr.exit.if.end.i79_crit_edge:               ; preds = %set_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

land.lhs.true.i76:                                ; preds = %set_addr.exit
  %arrayidx3.i = getelementptr %struct.hinfc_host, ptr %1, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr %struct.hinfc_host, ptr %1, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp6.i = icmp eq i32 %35, %37
  br i1 %cmp6.i, label %land.lhs.true.i76.if.end28_crit_edge, label %land.lhs.true.i76.if.end.i79_crit_edge

land.lhs.true.i76.if.end.i79_crit_edge:           ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

land.lhs.true.i76.if.end28_crit_edge:             ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end.i79:                                       ; preds = %land.lhs.true.i76.if.end.i79_crit_edge, %set_addr.exit.if.end.i79_crit_edge
  %and.i77 = and i32 %31, -65536
  %38 = ptrtoint ptr %addr_value.i75 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i77, ptr %addr_value.i75, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i77) #9
  %iobase.i.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %39) #9, !srcloc !101
  %arrayidx12.i = getelementptr %struct.hinfc_host, ptr %1, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx12.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %44) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 3145728) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %50, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #9, !srcloc !101
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %writesize.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %oobsize.i, align 4
  %add.i78 = add i32 %54, %52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %add.i78) #9
  %56 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %57, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %55) #9, !srcloc !101
  tail call fastcc void @hisi_nfc_dma_transfer(ptr noundef %1, i32 noundef 0) #9
  %58 = ptrtoint ptr %addr_value.i75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr_value.i75, align 4
  %60 = ptrtoint ptr %cache_addr_value.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %cache_addr_value.i, align 4
  %61 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx12.i, align 4
  br label %if.end28.sink.split

sw.bb5:                                           ; preds = %entry
  %offset6 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %offset6 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %column, ptr %offset6, align 4
  %64 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i, align 8
  %command2.i81 = getelementptr inbounds %struct.hinfc_host, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %command2.i81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %command2.i81, align 8
  %addr_cycle.i82 = getelementptr inbounds %struct.hinfc_host, ptr %65, i32 0, i32 8
  %68 = ptrtoint ptr %addr_cycle.i82 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %addr_cycle.i82, align 8
  %addr_value.i83 = getelementptr inbounds %struct.hinfc_host, ptr %65, i32 0, i32 9
  %69 = ptrtoint ptr %addr_value.i83 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %addr_value.i83, align 4
  %arrayidx4.i84 = getelementptr %struct.hinfc_host, ptr %65, i32 0, i32 9, i32 1
  %70 = ptrtoint ptr %arrayidx4.i84 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx4.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.not.i85 = icmp eq i32 %column, -1
  br i1 %cmp.not.i85, label %sw.bb5.if.end12.i96_crit_edge, label %if.then.i89

sw.bb5.if.end12.i96_crit_edge:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i96

if.then.i89:                                      ; preds = %sw.bb5
  %options.i86 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %71 = ptrtoint ptr %options.i86 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %options.i86, align 8
  %and.i87 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %if.then.i89.if.end.i94_crit_edge, label %land.lhs.true.i90

if.then.i89.if.end.i94_crit_edge:                 ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

land.lhs.true.i90:                                ; preds = %if.then.i89
  %73 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %67, label %74 [
    i32 144, label %land.lhs.true.i90.if.end.i94_crit_edge
    i32 236, label %land.lhs.true.i90.if.end.i94_crit_edge273
    i32 238, label %land.lhs.true.i90.if.end.i94_crit_edge274
    i32 239, label %land.lhs.true.i90.if.end.i94_crit_edge275
  ]

land.lhs.true.i90.if.end.i94_crit_edge275:        ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

land.lhs.true.i90.if.end.i94_crit_edge274:        ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

land.lhs.true.i90.if.end.i94_crit_edge273:        ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

land.lhs.true.i90.if.end.i94_crit_edge:           ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i94

74:                                               ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #11
  %shr64.i91 = ashr i32 %column, 1
  br label %if.end.i94

if.end.i94:                                       ; preds = %74, %land.lhs.true.i90.if.end.i94_crit_edge, %land.lhs.true.i90.if.end.i94_crit_edge273, %land.lhs.true.i90.if.end.i94_crit_edge274, %land.lhs.true.i90.if.end.i94_crit_edge275, %if.then.i89.if.end.i94_crit_edge
  %column.addr.0.i92 = phi i32 [ %column, %if.then.i89.if.end.i94_crit_edge ], [ %shr64.i91, %74 ], [ %column, %land.lhs.true.i90.if.end.i94_crit_edge ], [ %column, %land.lhs.true.i90.if.end.i94_crit_edge273 ], [ %column, %land.lhs.true.i90.if.end.i94_crit_edge274 ], [ %column, %land.lhs.true.i90.if.end.i94_crit_edge275 ]
  %and8.i93 = and i32 %column.addr.0.i92, 65535
  %75 = ptrtoint ptr %addr_value.i83 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and8.i93, ptr %addr_value.i83, align 4
  %76 = ptrtoint ptr %addr_cycle.i82 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %addr_cycle.i82, align 8
  br label %if.end12.i96

if.end12.i96:                                     ; preds = %if.end.i94, %sw.bb5.if.end12.i96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp13.not.i95 = icmp eq i32 %page_addr, -1
  br i1 %cmp13.not.i95, label %if.end12.i96.if.then25_crit_edge, label %if.then14.i105

if.end12.i96.if.then25_crit_edge:                 ; preds = %if.end12.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then14.i105:                                   ; preds = %if.end12.i96
  %and15.i97 = and i32 %page_addr, 65535
  %77 = ptrtoint ptr %addr_cycle.i82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr_cycle.i82, align 8
  %mul.i98 = shl i32 %78, 3
  %shl.i99 = shl i32 %and15.i97, %mul.i98
  %79 = ptrtoint ptr %addr_value.i83 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr_value.i83, align 4
  %or.i100 = or i32 %shl.i99, %80
  store i32 %or.i100, ptr %addr_value.i83, align 4
  %add.i101 = add i32 %78, 2
  store i32 %add.i101, ptr %addr_cycle.i82, align 8
  %options20.i102 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %81 = ptrtoint ptr %options20.i102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %options20.i102, align 8
  %and21.i103 = and i32 %82, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i103)
  %tobool22.not.i104 = icmp eq i32 %and21.i103, 0
  br i1 %tobool22.not.i104, label %if.then14.i105.if.then25_crit_edge, label %if.then23.i108

if.then14.i105.if.then25_crit_edge:               ; preds = %if.then14.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then23.i108:                                   ; preds = %if.then14.i105
  %add25.i106 = add i32 %78, 3
  %83 = ptrtoint ptr %addr_cycle.i82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add25.i106, ptr %addr_cycle.i82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %67)
  %cmp27.i107 = icmp eq i32 %67, 96
  br i1 %cmp27.i107, label %if.then28.i111, label %if.else.i113

if.then28.i111:                                   ; preds = %if.then23.i108
  call void @__sanitizer_cov_trace_pc() #11
  %and30.i109 = and i32 %page_addr, 16711680
  %or34.i110 = or i32 %or.i100, %and30.i109
  %84 = ptrtoint ptr %addr_value.i83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or34.i110, ptr %addr_value.i83, align 4
  br label %if.then25

if.else.i113:                                     ; preds = %if.then23.i108
  call void @__sanitizer_cov_trace_pc() #11
  %85 = lshr i32 %page_addr, 16
  %and36.i112 = and i32 %85, 255
  %86 = ptrtoint ptr %arrayidx4.i84 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and36.i112, ptr %arrayidx4.i84, align 4
  br label %if.then25

sw.bb7:                                           ; preds = %entry
  %87 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv.i, align 8
  %command2.i116 = getelementptr inbounds %struct.hinfc_host, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %command2.i116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %command2.i116, align 8
  %addr_cycle.i117 = getelementptr inbounds %struct.hinfc_host, ptr %88, i32 0, i32 8
  %91 = ptrtoint ptr %addr_cycle.i117 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %addr_cycle.i117, align 8
  %addr_value.i118 = getelementptr inbounds %struct.hinfc_host, ptr %88, i32 0, i32 9
  %92 = ptrtoint ptr %addr_value.i118 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %addr_value.i118, align 4
  %arrayidx4.i119 = getelementptr %struct.hinfc_host, ptr %88, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %arrayidx4.i119 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %arrayidx4.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.not.i120 = icmp eq i32 %column, -1
  br i1 %cmp.not.i120, label %sw.bb7.if.end12.i131_crit_edge, label %if.then.i124

sw.bb7.if.end12.i131_crit_edge:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i131

if.then.i124:                                     ; preds = %sw.bb7
  %options.i121 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %94 = ptrtoint ptr %options.i121 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %options.i121, align 8
  %and.i122 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %if.then.i124.if.end.i129_crit_edge, label %land.lhs.true.i125

if.then.i124.if.end.i129_crit_edge:               ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i129

land.lhs.true.i125:                               ; preds = %if.then.i124
  %96 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %90, label %97 [
    i32 144, label %land.lhs.true.i125.if.end.i129_crit_edge
    i32 236, label %land.lhs.true.i125.if.end.i129_crit_edge276
    i32 238, label %land.lhs.true.i125.if.end.i129_crit_edge277
    i32 239, label %land.lhs.true.i125.if.end.i129_crit_edge278
  ]

land.lhs.true.i125.if.end.i129_crit_edge278:      ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i129

land.lhs.true.i125.if.end.i129_crit_edge277:      ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i129

land.lhs.true.i125.if.end.i129_crit_edge276:      ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i129

land.lhs.true.i125.if.end.i129_crit_edge:         ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i129

97:                                               ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  %shr64.i126 = ashr i32 %column, 1
  br label %if.end.i129

if.end.i129:                                      ; preds = %97, %land.lhs.true.i125.if.end.i129_crit_edge, %land.lhs.true.i125.if.end.i129_crit_edge276, %land.lhs.true.i125.if.end.i129_crit_edge277, %land.lhs.true.i125.if.end.i129_crit_edge278, %if.then.i124.if.end.i129_crit_edge
  %column.addr.0.i127 = phi i32 [ %column, %if.then.i124.if.end.i129_crit_edge ], [ %shr64.i126, %97 ], [ %column, %land.lhs.true.i125.if.end.i129_crit_edge ], [ %column, %land.lhs.true.i125.if.end.i129_crit_edge276 ], [ %column, %land.lhs.true.i125.if.end.i129_crit_edge277 ], [ %column, %land.lhs.true.i125.if.end.i129_crit_edge278 ]
  %and8.i128 = and i32 %column.addr.0.i127, 65535
  %98 = ptrtoint ptr %addr_value.i118 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and8.i128, ptr %addr_value.i118, align 4
  %99 = ptrtoint ptr %addr_cycle.i117 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %addr_cycle.i117, align 8
  br label %if.end12.i131

if.end12.i131:                                    ; preds = %if.end.i129, %sw.bb7.if.end12.i131_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp13.not.i130 = icmp eq i32 %page_addr, -1
  br i1 %cmp13.not.i130, label %if.end12.i131.if.then25_crit_edge, label %if.then14.i140

if.end12.i131.if.then25_crit_edge:                ; preds = %if.end12.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then14.i140:                                   ; preds = %if.end12.i131
  %and15.i132 = and i32 %page_addr, 65535
  %100 = ptrtoint ptr %addr_cycle.i117 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %addr_cycle.i117, align 8
  %mul.i133 = shl i32 %101, 3
  %shl.i134 = shl i32 %and15.i132, %mul.i133
  %102 = ptrtoint ptr %addr_value.i118 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr_value.i118, align 4
  %or.i135 = or i32 %shl.i134, %103
  store i32 %or.i135, ptr %addr_value.i118, align 4
  %add.i136 = add i32 %101, 2
  store i32 %add.i136, ptr %addr_cycle.i117, align 8
  %options20.i137 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %104 = ptrtoint ptr %options20.i137 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %options20.i137, align 8
  %and21.i138 = and i32 %105, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i138)
  %tobool22.not.i139 = icmp eq i32 %and21.i138, 0
  br i1 %tobool22.not.i139, label %if.then14.i140.if.then25_crit_edge, label %if.then23.i143

if.then14.i140.if.then25_crit_edge:               ; preds = %if.then14.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then23.i143:                                   ; preds = %if.then14.i140
  %add25.i141 = add i32 %101, 3
  %106 = ptrtoint ptr %addr_cycle.i117 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add25.i141, ptr %addr_cycle.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %90)
  %cmp27.i142 = icmp eq i32 %90, 96
  br i1 %cmp27.i142, label %if.then28.i146, label %if.else.i148

if.then28.i146:                                   ; preds = %if.then23.i143
  call void @__sanitizer_cov_trace_pc() #11
  %and30.i144 = and i32 %page_addr, 16711680
  %or34.i145 = or i32 %or.i135, %and30.i144
  %107 = ptrtoint ptr %addr_value.i118 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or34.i145, ptr %addr_value.i118, align 4
  br label %if.then25

if.else.i148:                                     ; preds = %if.then23.i143
  call void @__sanitizer_cov_trace_pc() #11
  %108 = lshr i32 %page_addr, 16
  %and36.i147 = and i32 %108, 255
  %109 = ptrtoint ptr %arrayidx4.i119 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and36.i147, ptr %arrayidx4.i119, align 4
  br label %if.then25

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr_value.i150 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 9
  %110 = ptrtoint ptr %addr_value.i150 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr_value.i150, align 4
  %and.i151 = and i32 %111, -65536
  store i32 %and.i151, ptr %addr_value.i150, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %112 = tail call i32 @llvm.bswap.i32(i32 %and.i151) #9
  %iobase.i.i152 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %iobase.i.i152 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %iobase.i.i152, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %114, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i153, i32 %112) #9, !srcloc !101
  %arrayidx4.i154 = getelementptr %struct.hinfc_host, ptr %1, i32 0, i32 9, i32 1
  %115 = ptrtoint ptr %arrayidx4.i154 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx4.i154, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #9
  %118 = ptrtoint ptr %iobase.i.i152 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iobase.i.i152, align 4
  %add.ptr.i2.i155 = getelementptr i8, ptr %119, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i155, i32 %117) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %120 = ptrtoint ptr %iobase.i.i152 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iobase.i.i152, align 4
  %add.ptr.i4.i156 = getelementptr i8, ptr %121, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i156, i32 -2146435072) #9, !srcloc !101
  tail call fastcc void @hisi_nfc_dma_transfer(ptr noundef %1, i32 noundef 1) #9
  br label %if.then25

sw.bb10:                                          ; preds = %entry
  %addr_value.i157 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 9
  %122 = ptrtoint ptr %addr_value.i157 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %addr_value.i157, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #9
  %iobase.i.i158 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %125 = ptrtoint ptr %iobase.i.i158 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iobase.i.i158, align 4
  %add.ptr.i.i159 = getelementptr i8, ptr %126, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159, i32 %124) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %127 = ptrtoint ptr %iobase.i.i158 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %iobase.i.i158, align 4
  %add.ptr.i2.i160 = getelementptr i8, ptr %128, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i160, i32 1624244224) #9, !srcloc !101
  %chipselect.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 7
  %129 = ptrtoint ptr %chipselect.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %chipselect.i, align 4
  %and.i161 = shl i32 %130, 7
  %shl.i162 = and i32 %and.i161, 384
  %addr_cycle.i163 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 8
  %131 = ptrtoint ptr %addr_cycle.i163 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %addr_cycle.i163, align 8
  %and1.i = shl i32 %132, 9
  %shl2.i = and i32 %and1.i, 3584
  %or.i164 = or i32 %shl.i162, %shl2.i
  %or3.i = or i32 %or.i164, 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %133 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  %134 = ptrtoint ptr %iobase.i.i158 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %iobase.i.i158, align 4
  %add.ptr.i4.i165 = getelementptr i8, ptr %135, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i165, i32 %133) #9, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -200, %136
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %sw.bb10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %do.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %138 = ptrtoint ptr %iobase.i.i158 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %iobase.i.i158, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %139, i32 32
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %141 = ptrtoint ptr %command2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %command2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %142)
  %cmp1.i.i = icmp eq i32 %142, 208
  %143 = and i32 %140, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not21.i.i = icmp eq i32 %143, 0
  br i1 %cmp1.i.i, label %while.cond2.preheader.i.i, label %if.end.i.i

while.cond2.preheader.i.i:                        ; preds = %while.body.i.i
  br i1 %tobool.not21.i.i, label %while.cond2.preheader.i.i.while.body3.i.i_crit_edge, label %while.cond2.preheader.i.i.if.then25_crit_edge

while.cond2.preheader.i.i.if.then25_crit_edge:    ; preds = %while.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

while.cond2.preheader.i.i.while.body3.i.i_crit_edge: ; preds = %while.cond2.preheader.i.i
  br label %while.body3.i.i

while.body3.i.i:                                  ; preds = %while.body3.i.i.while.body3.i.i_crit_edge, %while.cond2.preheader.i.i.while.body3.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %144 = ptrtoint ptr %iobase.i.i158 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %iobase.i.i158, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %145, i32 32
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %147 = and i32 %146, 16777216
  %tobool.not.i.i = icmp eq i32 %147, 0
  br i1 %tobool.not.i.i, label %while.body3.i.i.while.body3.i.i_crit_edge, label %while.body3.i.i.if.then25_crit_edge

while.body3.i.i.if.then25_crit_edge:              ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

while.body3.i.i.while.body3.i.i_crit_edge:        ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body3.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  br i1 %tobool.not21.i.i, label %if.end.i.i.while.cond.i.i_crit_edge, label %if.end.i.i.if.then25_crit_edge

if.end.i.i.if.then25_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

do.end.i.i:                                       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 1
  %148 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.22) #12
  br label %if.then25

sw.bb12:                                          ; preds = %entry
  %offset13 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %150 = ptrtoint ptr %offset13 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %column, ptr %offset13, align 4
  %mmio = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 3
  %151 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mmio, align 8
  %153 = call ptr @memset(ptr %152, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %iobase.i.i166 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %154 = ptrtoint ptr %iobase.i.i166 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iobase.i.i166, align 4
  %add.ptr.i.i167 = getelementptr i8, ptr %155, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i167, i32 268435456) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %156 = ptrtoint ptr %iobase.i.i166 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iobase.i.i166, align 4
  %add.ptr.i2.i168 = getelementptr i8, ptr %157, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i168, i32 -1879048192) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %158 = ptrtoint ptr %iobase.i.i166 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %iobase.i.i166, align 4
  %add.ptr.i4.i169 = getelementptr i8, ptr %159, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i169, i32 0) #9, !srcloc !101
  %chipselect.i170 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 7
  %160 = ptrtoint ptr %chipselect.i170 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %chipselect.i170, align 4
  %and.i171 = shl i32 %161, 7
  %shl.i172 = and i32 %and.i171, 384
  %or1.i = or i32 %shl.i172, 610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %162 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #9
  %163 = ptrtoint ptr %iobase.i.i166 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %iobase.i.i166, align 4
  %add.ptr.i6.i173 = getelementptr i8, ptr %164, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i173, i32 %162) #9, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %165 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i174 = sub i32 -200, %165
  br label %while.cond.i.i178

while.cond.i.i178:                                ; preds = %if.end.i.i190.while.cond.i.i178_crit_edge, %sw.bb12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %166 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i176 = add i32 %add.neg.i.i174, %166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i176)
  %cmp.i.i177 = icmp slt i32 %sub.i.i176, 0
  br i1 %cmp.i.i177, label %while.body.i.i181, label %do.end.i.i192

while.body.i.i181:                                ; preds = %while.cond.i.i178
  %167 = ptrtoint ptr %iobase.i.i166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %iobase.i.i166, align 4
  %add.ptr.i.i.i179 = getelementptr i8, ptr %168, i32 32
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i179) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %170 = ptrtoint ptr %command2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %command2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %171)
  %cmp1.i.i180 = icmp eq i32 %171, 208
  %172 = and i32 %169, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not21.i.i183 = icmp eq i32 %172, 0
  br i1 %cmp1.i.i180, label %while.cond2.preheader.i.i184, label %if.end.i.i190

while.cond2.preheader.i.i184:                     ; preds = %while.body.i.i181
  br i1 %tobool.not21.i.i183, label %while.cond2.preheader.i.i184.while.body3.i.i187_crit_edge, label %while.cond2.preheader.i.i184.if.then25_crit_edge

while.cond2.preheader.i.i184.if.then25_crit_edge: ; preds = %while.cond2.preheader.i.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

while.cond2.preheader.i.i184.while.body3.i.i187_crit_edge: ; preds = %while.cond2.preheader.i.i184
  br label %while.body3.i.i187

while.body3.i.i187:                               ; preds = %while.body3.i.i187.while.body3.i.i187_crit_edge, %while.cond2.preheader.i.i184.while.body3.i.i187_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %173 = ptrtoint ptr %iobase.i.i166 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %iobase.i.i166, align 4
  %add.ptr.i16.i.i185 = getelementptr i8, ptr %174, i32 32
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i185) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %176 = and i32 %175, 16777216
  %tobool.not.i.i186 = icmp eq i32 %176, 0
  br i1 %tobool.not.i.i186, label %while.body3.i.i187.while.body3.i.i187_crit_edge, label %while.body3.i.i187.if.then25_crit_edge

while.body3.i.i187.if.then25_crit_edge:           ; preds = %while.body3.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

while.body3.i.i187.while.body3.i.i187_crit_edge:  ; preds = %while.body3.i.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body3.i.i187

if.end.i.i190:                                    ; preds = %while.body.i.i181
  br i1 %tobool.not21.i.i183, label %if.end.i.i190.while.cond.i.i178_crit_edge, label %if.end.i.i190.if.then25_crit_edge

if.end.i.i190.if.then25_crit_edge:                ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.end.i.i190.while.cond.i.i178_crit_edge:        ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i178

do.end.i.i192:                                    ; preds = %while.cond.i.i178
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i191 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 1
  %177 = ptrtoint ptr %dev.i.i191 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i.i191, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.22) #12
  br label %if.then25

sw.bb15:                                          ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %179 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %iobase.i, align 4
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %182 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %183)
  %cmp17 = icmp eq i32 %183, 3
  br i1 %cmp17, label %if.then18, label %sw.bb15.if.end19_crit_edge

sw.bb15.if.end19_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %184 = and i32 %181, -917505
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %185 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #9, !srcloc !101
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %sw.bb15.if.end19_crit_edge
  %offset20 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %187 = ptrtoint ptr %offset20 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %offset20, align 4
  %mmio21 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 3
  %188 = ptrtoint ptr %mmio21 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mmio21, align 8
  %190 = call ptr @memset(ptr %189, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %191 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i195 = getelementptr i8, ptr %192, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i195, i32 268435456) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %193 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i2.i196 = getelementptr i8, ptr %194, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i196, i32 1879048192) #9, !srcloc !101
  %chipselect.i197 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 7
  %195 = ptrtoint ptr %chipselect.i197 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %chipselect.i197, align 4
  %and.i198 = shl i32 %196, 7
  %shl.i199 = and i32 %and.i198, 384
  %or.i200 = or i32 %shl.i199, 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %197 = tail call i32 @llvm.bswap.i32(i32 %or.i200) #9
  %198 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i201 = getelementptr i8, ptr %199, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i201, i32 %197) #9, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %200 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i202 = sub i32 -200, %200
  br label %while.cond.i.i206

while.cond.i.i206:                                ; preds = %if.end.i.i218.while.cond.i.i206_crit_edge, %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %201 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i204 = add i32 %add.neg.i.i202, %201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i204)
  %cmp.i.i205 = icmp slt i32 %sub.i.i204, 0
  br i1 %cmp.i.i205, label %while.body.i.i209, label %do.end.i.i220

while.body.i.i209:                                ; preds = %while.cond.i.i206
  %202 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i207 = getelementptr i8, ptr %203, i32 32
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i207) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %205 = ptrtoint ptr %command2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %command2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %206)
  %cmp1.i.i208 = icmp eq i32 %206, 208
  %207 = and i32 %204, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not21.i.i211 = icmp eq i32 %207, 0
  br i1 %cmp1.i.i208, label %while.cond2.preheader.i.i212, label %if.end.i.i218

while.cond2.preheader.i.i212:                     ; preds = %while.body.i.i209
  br i1 %tobool.not21.i.i211, label %while.cond2.preheader.i.i212.while.body3.i.i215_crit_edge, label %while.cond2.preheader.i.i212.hisi_nfc_send_cmd_status.exit_crit_edge

while.cond2.preheader.i.i212.hisi_nfc_send_cmd_status.exit_crit_edge: ; preds = %while.cond2.preheader.i.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %hisi_nfc_send_cmd_status.exit

while.cond2.preheader.i.i212.while.body3.i.i215_crit_edge: ; preds = %while.cond2.preheader.i.i212
  br label %while.body3.i.i215

while.body3.i.i215:                               ; preds = %while.body3.i.i215.while.body3.i.i215_crit_edge, %while.cond2.preheader.i.i212.while.body3.i.i215_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %208 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i16.i.i213 = getelementptr i8, ptr %209, i32 32
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i213) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %211 = and i32 %210, 16777216
  %tobool.not.i.i214 = icmp eq i32 %211, 0
  br i1 %tobool.not.i.i214, label %while.body3.i.i215.while.body3.i.i215_crit_edge, label %while.body3.i.i215.hisi_nfc_send_cmd_status.exit_crit_edge

while.body3.i.i215.hisi_nfc_send_cmd_status.exit_crit_edge: ; preds = %while.body3.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %hisi_nfc_send_cmd_status.exit

while.body3.i.i215.while.body3.i.i215_crit_edge:  ; preds = %while.body3.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body3.i.i215

if.end.i.i218:                                    ; preds = %while.body.i.i209
  br i1 %tobool.not21.i.i211, label %if.end.i.i218.while.cond.i.i206_crit_edge, label %if.end.i.i218.hisi_nfc_send_cmd_status.exit_crit_edge

if.end.i.i218.hisi_nfc_send_cmd_status.exit_crit_edge: ; preds = %if.end.i.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %hisi_nfc_send_cmd_status.exit

if.end.i.i218.while.cond.i.i206_crit_edge:        ; preds = %if.end.i.i218
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i206

do.end.i.i220:                                    ; preds = %while.cond.i.i206
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i219 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 1
  %212 = ptrtoint ptr %dev.i.i219 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i.i219, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.22) #12
  br label %hisi_nfc_send_cmd_status.exit

hisi_nfc_send_cmd_status.exit:                    ; preds = %do.end.i.i220, %if.end.i.i218.hisi_nfc_send_cmd_status.exit_crit_edge, %while.body3.i.i215.hisi_nfc_send_cmd_status.exit_crit_edge, %while.cond2.preheader.i.i212.hisi_nfc_send_cmd_status.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %214 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %181) #9, !srcloc !101
  br label %if.then25

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chipselect = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 7
  %216 = ptrtoint ptr %chipselect to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %chipselect, align 4
  tail call fastcc void @hisi_nfc_send_cmd_reset(ptr noundef %1, i32 noundef %217)
  br label %if.then25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 1
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.11, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #12
  br label %if.then25

if.then25:                                        ; preds = %do.end, %sw.bb23, %hisi_nfc_send_cmd_status.exit, %do.end.i.i192, %if.end.i.i190.if.then25_crit_edge, %while.body3.i.i187.if.then25_crit_edge, %while.cond2.preheader.i.i184.if.then25_crit_edge, %do.end.i.i, %if.end.i.i.if.then25_crit_edge, %while.body3.i.i.if.then25_crit_edge, %while.cond2.preheader.i.i.if.then25_crit_edge, %sw.bb8, %if.else.i148, %if.then28.i146, %if.then14.i140.if.then25_crit_edge, %if.end12.i131.if.then25_crit_edge, %if.else.i113, %if.then28.i111, %if.then14.i105.if.then25_crit_edge, %if.end12.i96.if.then25_crit_edge
  %cache_addr_value = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 10
  %220 = ptrtoint ptr %cache_addr_value to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %cache_addr_value, align 4
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then25, %if.end.i79
  %.sink = phi i32 [ %62, %if.end.i79 ], [ -1, %if.then25 ]
  %arrayidx20.i = getelementptr %struct.hinfc_host, ptr %1, i32 0, i32 10, i32 1
  %221 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %.sink, ptr %arrayidx20.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %land.lhs.true.i76.if.end28_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hisi_nfc_select_chip(ptr nocapture noundef readonly %chip, i32 noundef %chipselect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chipselect)
  %cmp = icmp slt i32 %chipselect, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chipselect1 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chipselect1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %chipselect, ptr %chipselect1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hisi_nfc_read_byte(ptr nocapture noundef readonly %chip) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %command = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %3)
  %cmp = icmp eq i32 %3, 112
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %3)
  %cmp2 = icmp eq i32 %3, 144
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mmio4 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio4, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 %inc
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 -1
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %buffer = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 %inc
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3, %if.then
  %retval.0.in = phi ptr [ %5, %if.then ], [ %add.ptr6, %if.then3 ], [ %add.ptr10, %if.end7 ]
  %12 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %retval.0 = load i8, ptr %retval.0.in, align 1
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hisi_nfc_write_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buffer = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %offset = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, %len
  store i32 %add, ptr %offset, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hisi_nfc_read_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buffer = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %offset = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, %len
  store i32 %add, ptr %offset, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_set_features_notsupp(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hinfc_irq_handle(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %devid, i32 0, i32 2
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !98
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %irq_status = getelementptr inbounds %struct.hinfc_host, ptr %devid, i32 0, i32 15
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_status, align 4
  %or = or i32 %5, %3
  store i32 %or, ptr %irq_status, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 131072) #9, !srcloc !101
  %cmd_complete = getelementptr inbounds %struct.hinfc_host, ptr %devid, i32 0, i32 4
  tail call void @complete(ptr noundef %cmd_complete) #9
  br label %if.end9

if.else:                                          ; preds = %entry
  %and1 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 536870912) #9, !srcloc !101
  br label %if.end9

if.else4:                                         ; preds = %if.else
  %and5 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else4.if.end9_crit_edge, label %if.then7

if.else4.if.end9_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 1073741824) #9, !srcloc !101
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else4.if.end9_crit_edge, %if.then3, %if.then
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_nfc_send_cmd_reset(ptr nocapture noundef readonly %host, i32 noundef %chipselect) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #9, !srcloc !101
  %and = shl i32 %chipselect, 7
  %shl = and i32 %and, 384
  %or1 = or i32 %shl, 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or1) #9
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %2) #9, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -200, %5
  %command.i = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 6
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i, label %do.end.i

while.body.i:                                     ; preds = %while.cond.i
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %10 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %command.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %11)
  %cmp1.i = icmp eq i32 %11, 208
  %12 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not21.i = icmp eq i32 %12, 0
  br i1 %cmp1.i, label %while.cond2.preheader.i, label %if.end.i

while.cond2.preheader.i:                          ; preds = %while.body.i
  br i1 %tobool.not21.i, label %while.cond2.preheader.i.while.body3.i_crit_edge, label %while.cond2.preheader.i.wait_controller_finished.exit_crit_edge

while.cond2.preheader.i.wait_controller_finished.exit_crit_edge: ; preds = %while.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_controller_finished.exit

while.cond2.preheader.i.while.body3.i_crit_edge:  ; preds = %while.cond2.preheader.i
  br label %while.body3.i

while.body3.i:                                    ; preds = %while.body3.i.while.body3.i_crit_edge, %while.cond2.preheader.i.while.body3.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %16 = and i32 %15, 16777216
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %while.body3.i.while.body3.i_crit_edge, label %while.body3.i.wait_controller_finished.exit_crit_edge

while.body3.i.wait_controller_finished.exit_crit_edge: ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_controller_finished.exit

while.body3.i.while.body3.i_crit_edge:            ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body3.i

if.end.i:                                         ; preds = %while.body.i
  br i1 %tobool.not21.i, label %if.end.i.while.cond.i_crit_edge, label %if.end.i.wait_controller_finished.exit_crit_edge

if.end.i.wait_controller_finished.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_controller_finished.exit

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22) #12
  br label %wait_controller_finished.exit

wait_controller_finished.exit:                    ; preds = %do.end.i, %if.end.i.wait_controller_finished.exit_crit_edge, %while.body3.i.wait_controller_finished.exit_crit_edge, %while.cond2.preheader.i.wait_controller_finished.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_nfc_dma_transfer(ptr noundef %host, i32 noundef %todev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_buffer = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_buffer, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #9
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 2
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !101
  %dma_oob = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 13
  %5 = ptrtoint ptr %dma_oob to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_oob, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %9, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %7) #9, !srcloc !101
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33
  %10 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %host, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %and = shl i32 %13, 16
  %shl = and i32 %and, 268369920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %16, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %14) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %18, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 50331648) #9, !srcloc !101
  br label %if.end5

if.else:                                          ; preds = %entry
  %command = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 6
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %command, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %20)
  %cmp2 = icmp eq i32 %20, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %22, i32 112
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 704643072) #9, !srcloc !101
  br label %if.end5

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 1056964608) #9, !srcloc !101
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3, %if.then
  %addr_cycle = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 8
  %23 = ptrtoint ptr %addr_cycle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr_cycle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp6 = icmp eq i32 %24, 4
  %or = select i1 %cmp6, i32 253, i32 125
  %chipselect = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 7
  %25 = ptrtoint ptr %chipselect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chipselect, align 4
  %and8 = shl i32 %26, 8
  %shl9 = and i32 %and8, 768
  %or10 = or i32 %shl9, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %todev)
  %tobool.not = icmp eq i32 %todev, 0
  %or12 = or i32 %or10, 2
  %spec.select = select i1 %tobool.not, i32 %or10, i32 %or12
  %cmd_complete = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %29 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %30, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %28) #9, !srcloc !101
  %call15 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end, label %if.end5.if.end32_crit_edge

if.end5.if.end32_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hinfc_host, ptr %host, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.13) #12
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %34, i32 96
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool20.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %.str.16..str.19 = select i1 %tobool20.not, ptr @.str.16, ptr @.str.19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull %.str.16..str.19) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end5.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nfc_attach_chip(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  %add = add i32 %7, %5
  %dma_buffer = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 12
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef %add, ptr noundef %dma_buffer, i32 noundef 3264, i32 noundef 0) #9
  %buffer = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_buffer, align 8
  %11 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize, align 4
  %add6 = add i32 %12, %10
  %dma_oob = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %dma_oob to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add6, ptr %dma_oob, align 4
  %14 = load i32, ptr %writesize, align 4
  %15 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oobsize, align 4
  %add10 = add i32 %16, %14
  %17 = call ptr @memset(ptr %call.i, i32 255, i32 %add10)
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cond = icmp eq i32 %22, 2048
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  %23 = and i32 %20, -234881025
  %24 = or i32 %23, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !101
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %27 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp = icmp eq i32 %28, 3
  br i1 %cmp, label %if.then14, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.then14:                                        ; preds = %sw.bb
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %size3.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 4
  %33 = ptrtoint ptr %size3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size3.i, align 8
  %strength5.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 7
  %35 = ptrtoint ptr %strength5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %strength5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 1024
  br i1 %cmp.not.i, label %land.lhs.true.i, label %do.end.i

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.26, i32 noundef %34) #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then14
  %37 = add i32 %36, -8
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 29) #9
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %38, label %do.end17.i [
    i32 0, label %land.lhs.true.i.if.end18.i_crit_edge
    i32 1, label %land.lhs.true.i.if.end18.i_crit_edge39
    i32 2, label %land.lhs.true.i.if.end18.i_crit_edge40
    i32 4, label %land.lhs.true.i.if.end18.i_crit_edge41
  ]

land.lhs.true.i.if.end18.i_crit_edge41:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i.if.end18.i_crit_edge40:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i.if.end18.i_crit_edge39:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge39, %land.lhs.true.i.if.end18.i_crit_edge40, %land.lhs.true.i.if.end18.i_crit_edge41
  %40 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1024, ptr %size3.i, align 8
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 18
  %41 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @hisi_nand_read_page_hwecc, ptr %read_page.i, align 8
  %read_oob.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 24
  %42 = ptrtoint ptr %read_oob.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hisi_nand_read_oob, ptr %read_oob.i, align 8
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 21
  %43 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hisi_nand_write_page_hwecc, ptr %write_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cond.i = icmp eq i32 %36, 16
  br i1 %cond.i, label %sw.bb.i, label %do.end33.i

sw.bb.i:                                          ; preds = %if.end18.i
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %45)
  %cmp28.i = icmp eq i32 %45, 2048
  br i1 %cmp28.i, label %if.then29.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then29.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %ooblayout1.i.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @hisi_ooblayout_ops, ptr %ooblayout1.i.i, align 8
  br label %sw.epilog.i

do.end33.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.32, i32 noundef %36) #12
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then29.i, %sw.bb.i.sw.epilog.i_crit_edge
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %50 = or i32 %49, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !101
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %56 = and i32 %55, -1626406912
  %57 = or i32 %56, 1610612736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %59, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %57) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %do.end33.i, %do.end17.i, %do.end.i, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %do.end17.i ], [ 0, %do.end33.i ], [ 0, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nand_read_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %3) #9
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
  %irq_status = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %if.end20.sink.split

if.else:                                          ; preds = %entry
  %and4 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end20_crit_edge, label %if.then6

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then6:                                         ; preds = %if.else
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %12 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cond22 = icmp eq i32 %13, 16
  br i1 %cond22, label %sw.bb, label %if.then6.sw.epilog_crit_edge

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 92
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !98
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %shr = lshr i32 %17, 12
  %and9 = and i32 %shr, 63
  %and8 = lshr i32 %17, 18
  %18 = and i32 %and8, 63
  %add = add nuw nsw i32 %18, %and9
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %and9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then6.sw.epilog_crit_edge
  %stat.0 = phi i32 [ %add, %sw.bb ], [ 0, %if.then6.sw.epilog_crit_edge ]
  %stat_max.0 = phi i32 [ %19, %sw.bb ], [ 0, %if.then6.sw.epilog_crit_edge ]
  %ecc_stats12 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %sw.epilog, %if.then
  %ecc_stats12.sink43 = phi ptr [ %ecc_stats12, %sw.epilog ], [ %failed, %if.then ]
  %stat.0.sink = phi i32 [ %stat.0, %sw.epilog ], [ 1, %if.then ]
  %max_bitflips.0.ph = phi i32 [ %stat_max.0, %sw.epilog ], [ 0, %if.then ]
  %20 = ptrtoint ptr %ecc_stats12.sink43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ecc_stats12.sink43, align 4
  %add13 = add i32 %21, %stat.0.sink
  store i32 %add13, ptr %ecc_stats12.sink43, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge
  %max_bitflips.0 = phi i32 [ 0, %if.else.if.end20_crit_edge ], [ %max_bitflips.0.ph, %if.end20.sink.split ]
  %22 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %irq_status, align 4
  ret i32 %max_bitflips.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nand_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %call2 = tail call i32 @nand_read_oob_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %3, i32 noundef %5) #9
  %irq_status = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_status, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -74
  %8 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_status, align 4
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nand_write_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %call1 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hisi_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef readnone %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hisi_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  store i32 2, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nfc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %2
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub12 = add i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp13 = icmp slt i32 %sub12, 0
  br i1 %cmp13, label %while.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.body.lr.ph:                                 ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 824, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %12
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %dev6 = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.34) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -11, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_nfc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cs.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @hisi_nfc_send_cmd_reset(ptr noundef %1, i32 noundef %cs.09)
  %inc = add nuw i32 %cs.09, 1
  %4 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ntargets.i, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %iobase.i = getelementptr inbounds %struct.hinfc_host, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1963130880) #9, !srcloc !101
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_hisi504_nand__253_866_hisi_nfc_driver_init6, !1, !"__initcall__kmod_hisi504_nand__253_866_hisi_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 866, i32 1}
!2 = !{ptr @__exitcall_hisi_nfc_driver_exit, !1, !"__exitcall_hisi_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file254, !4, !"__UNIQUE_ID_file254", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 868, i32 1}
!5 = !{ptr @__UNIQUE_ID_license255, !4, !"__UNIQUE_ID_license255", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author256, !7, !"__UNIQUE_ID_author256", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 869, i32 1}
!8 = !{ptr @__UNIQUE_ID_author257, !9, !"__UNIQUE_ID_author257", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 870, i32 1}
!10 = !{ptr @__UNIQUE_ID_description258, !11, !"__UNIQUE_ID_description258", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 871, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 858, i32 12}
!14 = !{ptr @hisi_nfc_driver, !15, !"hisi_nfc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 856, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 780, i32 58}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 782, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hisi_nfc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @hisi_nfc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 793, i32 3}
!28 = !{ptr @hisi_nfc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hisi_nfc_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 487, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hisi_nfc_cmdfunc._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hisi_nfc_cmdfunc._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 228, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hisi_nfc_dma_transfer._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hisi_nfc_dma_transfer._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 232, i32 4}
!44 = !{ptr @hisi_nfc_dma_transfer._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hisi_nfc_dma_transfer._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 234, i32 4}
!48 = !{ptr @hisi_nfc_dma_transfer._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hisi_nfc_dma_transfer._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 176, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @wait_controller_finished._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @wait_controller_finished._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @hisi_nfc_controller_ops, !59, !"hisi_nfc_controller_ops", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 730, i32 41}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 719, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hisi_nfc_attach_chip._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hisi_nfc_attach_chip._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 647, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hisi_nfc_ecc_probe._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @hisi_nfc_ecc_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 653, i32 3}
!72 = !{ptr @hisi_nfc_ecc_probe._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hisi_nfc_ecc_probe._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 675, i32 3}
!76 = !{ptr @hisi_nfc_ecc_probe._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hisi_nfc_ecc_probe._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @hisi_ooblayout_ops, !79, !"hisi_ooblayout_ops", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 631, i32 39}
!80 = !{ptr @nfc_id_table, !81, !"nfc_id_table", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 850, i32 34}
!82 = !{ptr @hisi_nfc_pm_ops, !83, !"hisi_nfc_pm_ops", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 848, i32 8}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/hisi504_nand.c", i32 829, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hisi_nfc_suspend._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @hisi_nfc_suspend._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 5532563}
!99 = !{i64 2154546689}
!100 = !{i64 2154547075}
!101 = !{i64 5532145}
!102 = !{!"branch_weights", i32 2000, i32 1}
