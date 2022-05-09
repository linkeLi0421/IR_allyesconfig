; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/onenand/onenand_samsung.c_pt.bc'
source_filename = "../drivers/mtd/nand/onenand/onenand_samsung.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.s3c_onenand = type { ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion }
%struct.onenand_platform_data = type { ptr, ptr, ptr, i32 }
%struct.onenand_chip = type { ptr, i32, [2 x i32], [2 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.onenand_bufferram], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.onenand_bufferram = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@__initcall__kmod_onenand_samsung__236_1002_s3c_onenand_driver_init6 = internal global ptr @s3c_onenand_driver_init, section ".initcall6.init", align 4
@s3c_onenand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c_onenand_probe, ptr @s3c_onenand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_pm_ops, ptr null, ptr null }, ptr @s3c_onenand_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c_onenand_driver_exit = internal global ptr @s3c_onenand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [62 x i8] c"onenand_samsung.file=drivers/mtd/nand/onenand/onenand_samsung\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"onenand_samsung.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [65 x i8] c"onenand_samsung.author=Kyungmin Park <kyungmin.park@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [63 x i8] c"onenand_samsung.description=Samsung OneNAND controller support\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung-onenand\00", [16 x i8] zeroinitializer }, align 32
@s3c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c_pm_ops_suspend, ptr @s3c_pm_ops_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c_onenand_driver_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c6400-onenand\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c6410-onenand\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"s5pc110-onenand\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@onenand = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s5pc110_dma_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onenand\00", [24 x i8] zeroinitializer }, align 32
@s3c_onenand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 914, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c_onenand_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/mtd/nand/onenand/onenand_samsung.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c_onenand_probe._entry_ptr = internal global ptr @s3c_onenand_probe._entry, section ".printk_index", align 4
@s3c_onenand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 931, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"OneNAND Sync. Burst Read enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c_onenand_probe._entry_ptr.10 = internal global ptr @s3c_onenand_probe._entry.7, section ".printk_index", align 4
@s3c_onenand_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 936, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to parse partitions and register the MTD device\0A\00", [40 x i8] zeroinitializer }, align 32
@s3c_onenand_probe._entry_ptr.13 = internal global ptr @s3c_onenand_probe._entry.11, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@s5pc110_read_bufferram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't map a %zu byte buffer for DMA\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5pc110_read_bufferram\00", [41 x i8] zeroinitializer }, align 32
@s5pc110_read_bufferram._entry_ptr = internal global ptr @s5pc110_read_bufferram._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@s3c_onenand_readw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 262, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Illegal access at reg 0x%x, value 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c_onenand_readw\00", [46 x i8] zeroinitializer }, align 32
@s3c_onenand_readw._entry_ptr = internal global ptr @s3c_onenand_readw._entry, section ".printk_index", align 4
@s3c_onenand_writew._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.4, i32 305, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_onenand_writew\00", [45 x i8] zeroinitializer }, align 32
@s3c_onenand_writew._entry_ptr = internal global ptr @s3c_onenand_writew._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s3c_onenand_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 357, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: ECC error = 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3c_onenand_wait\00", [47 x i8] zeroinitializer }, align 32
@s3c_onenand_wait._entry_ptr = internal global ptr @s3c_onenand_wait._entry, section ".printk_index", align 4
@s3c_onenand_wait._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 365, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: controller error = 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c_onenand_wait._entry_ptr.25 = internal global ptr @s3c_onenand_wait._entry.23, section ".printk_index", align 4
@s3c_onenand_wait._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 368, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: it's locked error = 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c_onenand_wait._entry_ptr.28 = internal global ptr @s3c_onenand_wait._entry.26, section ".printk_index", align 4
@s3c_onenand_check_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 740, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"block %d is write-protected!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s3c_onenand_check_lock_status\00", [34 x i8] zeroinitializer }, align 32
@s3c_onenand_check_lock_status._entry_ptr = internal global ptr @s3c_onenand_check_lock_status._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 32, i64 122880, i64 122882, i64 122884, i64 122886, i64 122892, i64 123970, i64 124032, i64 124060]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 123392, i64 123394, i64 123970, i64 124056]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 144, i64 240]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 7, i64 15, i64 21]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 19, i64 6520]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 19, i64 26, i64 39, i64 128, i64 148]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"s3c_onenand_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 992, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 994, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"s3c_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 973, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"s3c_onenand_driver_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 978, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant [8 x i8] c"onenand\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 143, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"s5pc110_dma_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 516, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 911, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 914, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 931, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 936, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 662, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 326, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 261, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 304, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 356, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 364, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 367, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private constant [46 x i8] c"../drivers/mtd/nand/onenand/onenand_samsung.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 740, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 87, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_s3c_onenand_driver_exit, ptr @__initcall__kmod_onenand_samsung__236_1002_s3c_onenand_driver_init6, ptr @s3c_onenand_check_lock_status._entry, ptr @s3c_onenand_check_lock_status._entry_ptr, ptr @s3c_onenand_driver_exit, ptr @s3c_onenand_probe._entry, ptr @s3c_onenand_probe._entry.11, ptr @s3c_onenand_probe._entry.7, ptr @s3c_onenand_probe._entry_ptr, ptr @s3c_onenand_probe._entry_ptr.10, ptr @s3c_onenand_probe._entry_ptr.13, ptr @s3c_onenand_readw._entry, ptr @s3c_onenand_readw._entry_ptr, ptr @s3c_onenand_wait._entry, ptr @s3c_onenand_wait._entry.23, ptr @s3c_onenand_wait._entry.26, ptr @s3c_onenand_wait._entry_ptr, ptr @s3c_onenand_wait._entry_ptr.25, ptr @s3c_onenand_wait._entry_ptr.28, ptr @s3c_onenand_writew._entry, ptr @s3c_onenand_writew._entry_ptr, ptr @s5pc110_read_bufferram._entry, ptr @s5pc110_read_bufferram._entry_ptr, ptr @s3c_onenand_driver, ptr @.str, ptr @s3c_pm_ops, ptr @s3c_onenand_driver_ids, ptr @onenand, ptr @s5pc110_dma_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @init_completion.__key, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_driver_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onenand to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pc110_dma_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pc110_read_bufferram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_readw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_writew._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_wait._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_wait._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_onenand_check_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_onenand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_onenand_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c_onenand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_onenand_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_onenand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1744, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i152 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #7
  store ptr %call.i152, ptr @onenand, align 4
  %tobool5.not = icmp eq ptr %call.i152, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.mtd_info, ptr %call.i, i32 1
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %pdev10 = getelementptr inbounds %struct.s3c_onenand, ptr %call.i152, i32 0, i32 1
  %4 = ptrtoint ptr %pdev10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev10, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.s3c_onenand, ptr %call.i152, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type, align 4
  %10 = ptrtoint ptr %call.i152 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %call.i152, align 4
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.body.i [
    i32 0, label %if.end7.if.end16.i_crit_edge
    i32 1, label %if.then4.i
    i32 2, label %if.then10.i
  ]

if.end7.if.end16.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %read_bufferram.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 25
  %12 = ptrtoint ptr %read_bufferram.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @s5pc110_read_bufferram, ptr %read_bufferram.i, align 8
  %chip_probe.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 30
  %13 = ptrtoint ptr %chip_probe.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @s5pc110_chip_probe, ptr %chip_probe.i, align 4
  br label %s3c_onenand_setup.exit

do.body.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/onenand/onenand_samsung.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 819, 0\0A.popsection", ""() #7, !srcloc !89
  unreachable

if.end16.i:                                       ; preds = %if.then4.i, %if.end7.if.end16.i_crit_edge
  %s3c6410_mem_addr.sink.i = phi ptr [ @s3c6410_mem_addr, %if.then4.i ], [ @s3c6400_mem_addr, %if.end7.if.end16.i_crit_edge ]
  %mem_addr5.i = getelementptr inbounds %struct.s3c_onenand, ptr %call.i152, i32 0, i32 8
  %14 = ptrtoint ptr %mem_addr5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %s3c6410_mem_addr.sink.i, ptr %mem_addr5.i, align 4
  %cmd_map6.i = getelementptr inbounds %struct.s3c_onenand, ptr %call.i152, i32 0, i32 9
  %15 = ptrtoint ptr %cmd_map6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @s3c64xx_cmd_map, ptr %cmd_map6.i, align 4
  %read_word.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 27
  %16 = ptrtoint ptr %read_word.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @s3c_onenand_readw, ptr %read_word.i, align 8
  %write_word.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 28
  %17 = ptrtoint ptr %write_word.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @s3c_onenand_writew, ptr %write_word.i, align 4
  %wait.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 22
  %18 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @s3c_onenand_wait, ptr %wait.i, align 4
  %bbt_wait.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 23
  %19 = ptrtoint ptr %bbt_wait.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @s3c_onenand_bbt_wait, ptr %bbt_wait.i, align 8
  %unlock_all.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 24
  %20 = ptrtoint ptr %unlock_all.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @s3c_unlock_all, ptr %unlock_all.i, align 4
  %command.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 21
  %21 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @s3c_onenand_command, ptr %command.i, align 8
  %read_bufferram17.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 25
  %22 = ptrtoint ptr %read_bufferram17.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @onenand_read_bufferram, ptr %read_bufferram17.i, align 8
  %write_bufferram.i = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 26
  %23 = ptrtoint ptr %write_bufferram.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @onenand_write_bufferram, ptr %write_bufferram.i, align 4
  br label %s3c_onenand_setup.exit

s3c_onenand_setup.exit:                           ; preds = %if.end16.i, %if.then10.i
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call11) #7
  %24 = load ptr, ptr @onenand, align 4
  %base = getelementptr inbounds %struct.s3c_onenand, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call13, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %s3c_onenand_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %s3c_onenand_setup.exit
  %27 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call11, align 4
  %phys_base = getelementptr inbounds %struct.s3c_onenand, ptr %24, i32 0, i32 11
  %29 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %phys_base, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13, ptr %arrayidx, align 8
  %options = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 12
  %31 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %options, align 4
  %or = or i32 %32, 256
  store i32 %or, ptr %options, align 4
  %type22 = getelementptr inbounds %struct.s3c_onenand, ptr %24, i32 0, i32 2
  %33 = ptrtoint ptr %type22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.not = icmp eq i32 %34, 2
  %call45 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %call47 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call45) #7
  %35 = load ptr, ptr @onenand, align 4
  br i1 %cmp.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  %ahb_addr = getelementptr inbounds %struct.s3c_onenand, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ahb_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call47, ptr %ahb_addr, align 4
  %cmp.i153 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.then23
  %call.i154 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4096, i32 noundef 3520) #7
  %38 = load ptr, ptr @onenand, align 4
  %page_buf = getelementptr inbounds %struct.s3c_onenand, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i154, ptr %page_buf, align 4
  %tobool36.not = icmp eq ptr %call.i154, null
  br i1 %tobool36.not, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call.i155 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #7
  %40 = load ptr, ptr @onenand, align 4
  %oob_buf = getelementptr inbounds %struct.s3c_onenand, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %oob_buf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i155, ptr %oob_buf, align 4
  %tobool42.not = icmp eq ptr %call.i155, null
  br i1 %tobool42.not, label %if.end38.cleanup_crit_edge, label %if.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %subpage_sft = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 53
  %42 = ptrtoint ptr %subpage_sft to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %subpage_sft, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %writesize, align 4
  %subpagesize = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 56, i32 0, i32 7, i32 0, i32 3, i32 6
  %45 = ptrtoint ptr %subpagesize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %subpagesize, align 4
  br label %if.end65

if.else:                                          ; preds = %if.end19
  %dma_addr = getelementptr inbounds %struct.s3c_onenand, ptr %35, i32 0, i32 10
  %46 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call47, ptr %dma_addr, align 4
  %cmp.i156 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.else
  store ptr @s5pc110_dma_poll, ptr @s5pc110_dma_ops, align 4
  %call54 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end53.if.end65_crit_edge, label %if.then56

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then56:                                        ; preds = %if.end53
  %48 = load ptr, ptr @onenand, align 4
  %complete = getelementptr inbounds %struct.s3c_onenand, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %complete, align 4
  %wait.i157 = getelementptr inbounds %struct.s3c_onenand, ptr %48, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i157, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #7
  store ptr @s5pc110_dma_irq, ptr @s5pc110_dma_ops, align 4
  %50 = ptrtoint ptr %call54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call54, align 4
  %call.i158 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %51, ptr noundef nonnull @s5pc110_onenand_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull @onenand) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool60.not = icmp eq i32 %call.i158, 0
  br i1 %tobool60.not, label %if.then56.if.end65_crit_edge, label %do.end

if.then56.if.end65_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end:                                           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end65:                                         ; preds = %if.then56.if.end65_crit_edge, %if.end53.if.end65_crit_edge, %if.end44
  %call66 = tail call i32 @onenand_scan(ptr noundef nonnull %call.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %52 = load ptr, ptr @onenand, align 4
  %type70 = getelementptr inbounds %struct.s3c_onenand, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %type70 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp71.not = icmp eq i32 %54, 2
  br i1 %cmp71.not, label %if.end69.if.end76_crit_edge, label %if.then72

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %subpage_sft73 = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 53
  %55 = ptrtoint ptr %subpage_sft73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %subpage_sft73, align 4
  %writesize74 = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 4
  %56 = ptrtoint ptr %writesize74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %writesize74, align 4
  %subpagesize75 = getelementptr %struct.mtd_info, ptr %call.i, i32 1, i32 56, i32 0, i32 7, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %subpagesize75 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %subpagesize75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end69.if.end76_crit_edge
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %52, i32 0, i32 3
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %62 = and i32 %61, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool78.not = icmp eq i32 %62, 0
  br i1 %tobool78.not, label %if.end76.if.end85_crit_edge, label %do.end82

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %63 = load ptr, ptr @onenand, align 4
  %pdev83 = getelementptr inbounds %struct.s3c_onenand, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pdev83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev83, align 4
  %dev84 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev84, ptr noundef nonnull @.str.8) #10
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %if.end76.if.end85_crit_edge
  %tobool86.not = icmp eq ptr %1, null
  br i1 %tobool86.not, label %if.end85.cond.end90_crit_edge, label %cond.true88

if.end85.cond.end90_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end90

cond.true88:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %parts = getelementptr inbounds %struct.onenand_platform_data, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.onenand_platform_data, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_parts, align 4
  br label %cond.end90

cond.end90:                                       ; preds = %cond.true88, %if.end85.cond.end90_crit_edge
  %cond160 = phi ptr [ %67, %cond.true88 ], [ null, %if.end85.cond.end90_crit_edge ]
  %cond91 = phi i32 [ %69, %cond.true88 ], [ 0, %if.end85.cond.end90_crit_edge ]
  %call92 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef %cond160, i32 noundef %cond91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  tail call void @onenand_release(ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end99:                                         ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end97, %if.end65.cleanup_crit_edge, %do.end, %if.then50, %if.end38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then29, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then16 ], [ %37, %if.then29 ], [ %call92, %do.end97 ], [ 0, %if.end99 ], [ %47, %if.then50 ], [ %call.i158, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_onenand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @onenand_release(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pc110_dma_poll(i32 noundef %dst, i32 noundef %src, i32 noundef %count, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @onenand, align 4
  %dma_addr = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %src)
  %add.ptr = getelementptr i8, ptr %2, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %dst)
  %add.ptr4 = getelementptr i8, ptr %2, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %add.ptr8 = getelementptr i8, ptr %2, i32 1028
  br i1 %cmp, label %do.body5, label %do.body13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16778240) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %add.ptr12 = getelementptr i8, ptr %2, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 33555456) #7, !srcloc !93
  br label %do.body21

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 33555456) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %add.ptr20 = getelementptr i8, ptr %2, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16778240) #7, !srcloc !93
  br label %do.body21

do.body21:                                        ; preds = %do.body13, %do.body5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %count)
  %add.ptr24 = getelementptr i8, ptr %2, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %5) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %direction)
  %add.ptr28 = getelementptr i8, ptr %2, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %6) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %add.ptr32 = getelementptr i8, ptr %2, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 16777216) #7, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.ptr34 = getelementptr i8, ptr %2, i32 1052
  %add.neg = sub i32 -2, %7
  br label %do.body33

do.body33:                                        ; preds = %land.rhs.do.body33_crit_edge, %do.body21
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !90
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %and = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond43, label %do.body38

do.body38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 256) #7, !srcloc !93
  br label %cleanup

do.cond43:                                        ; preds = %do.body33
  %and44 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %land.rhs, label %do.cond43.do.body48_crit_edge

do.cond43.do.body48_crit_edge:                    ; preds = %do.cond43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

land.rhs:                                         ; preds = %do.cond43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %10
  %cmp46 = icmp slt i32 %sub, 0
  br i1 %cmp46, label %land.rhs.do.body33_crit_edge, label %land.rhs.do.body48_crit_edge

land.rhs.do.body48_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

land.rhs.do.body33_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

do.body48:                                        ; preds = %land.rhs.do.body48_crit_edge, %do.cond43.do.body48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1024) #7, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %do.body38
  %retval.0 = phi i32 [ -5, %do.body38 ], [ 0, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pc110_dma_irq(i32 noundef %dst, i32 noundef %src, i32 noundef %count, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @onenand, align 4
  %dma_addr = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_addr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4132
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = and i32 %3, -258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !93
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %src)
  %add.ptr6 = getelementptr i8, ptr %2, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %dst)
  %add.ptr10 = getelementptr i8, ptr %2, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %add.ptr15 = getelementptr i8, ptr %2, i32 1028
  br i1 %cmp, label %do.body12, label %do.body20

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16778240) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %add.ptr19 = getelementptr i8, ptr %2, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 33555456) #7, !srcloc !93
  br label %do.body29

do.body20:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 33555456) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %add.ptr27 = getelementptr i8, ptr %2, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 16778240) #7, !srcloc !93
  br label %do.body29

do.body29:                                        ; preds = %do.body20, %do.body12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %count)
  %add.ptr32 = getelementptr i8, ptr %2, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %7) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %direction)
  %add.ptr36 = getelementptr i8, ptr %2, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %8) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %add.ptr40 = getelementptr i8, ptr %2, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #7, !srcloc !93
  %9 = load ptr, ptr @onenand, align 4
  %complete = getelementptr inbounds %struct.s3c_onenand, ptr %9, i32 0, i32 12
  %call42 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pc110_onenand_irq(i32 noundef %irq, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @onenand, align 4
  %dma_addr = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma_addr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4196
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !90
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %and = lshr i32 %4, 14
  %5 = and i32 %and, 1024
  %and4 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.do.body_crit_edge, label %if.then12, !prof !113

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.then12, %entry.do.body_crit_edge
  %cmd.1 = phi i32 [ 256, %if.then12 ], [ %5, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %add.ptr14 = getelementptr i8, ptr %2, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %cmd.1) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %add.ptr18 = getelementptr i8, ptr %2, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %3) #7, !srcloc !93
  %6 = load ptr, ptr @onenand, align 4
  %complete = getelementptr inbounds %struct.s3c_onenand, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %if.then20, label %do.body.if.end22_crit_edge

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef %complete) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body.if.end22_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onenand_scan(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @onenand_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c6400_mem_addr(i32 noundef %fba, i32 noundef %fpa, i32 noundef %fsa) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %fba, 10
  %shl1 = shl i32 %fpa, 4
  %or = or i32 %shl1, %shl
  %shl2 = shl i32 %fsa, 2
  %or3 = or i32 %or, %shl2
  ret i32 %or3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c64xx_cmd_map(i32 noundef %type, i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %type, 24
  %or = or i32 %shl, %val
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c6410_mem_addr(i32 noundef %fba, i32 noundef %fpa, i32 noundef %fsa) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %fba, 12
  %shl1 = shl i32 %fpa, 6
  %or = or i32 %shl1, %shl
  %shl2 = shl i32 %fsa, 4
  %or3 = or i32 %or, %shl2
  ret i32 %or3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pc110_read_bufferram(ptr nocapture noundef readonly %mtd, i32 noundef %area, ptr noundef %buffer, i32 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load ptr, ptr @onenand, align 4
  %pdev = getelementptr inbounds %struct.s3c_onenand, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 %area
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bufferram_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %area)
  %cmp = icmp eq i32 %area, 1024
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 8
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %10
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %12
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2, %entry.if.end5_crit_edge
  %p.0 = phi ptr [ %add.ptr3, %if.then2 ], [ %add.ptr4, %if.else ], [ %add.ptr, %entry.if.end5_crit_edge ]
  %and = and i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end5.normal_crit_edge

if.end5.normal_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

lor.lhs.false:                                    ; preds = %if.end5
  %13 = ptrtoint ptr %buffer to i32
  %and7 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.normal_crit_edge

lor.lhs.false.normal_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %dma_addr = getelementptr inbounds %struct.s3c_onenand, ptr %2, i32 0, i32 10
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_addr, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %lor.lhs.false9.normal_crit_edge, label %lor.lhs.false11

lor.lhs.false9.normal_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %writesize12 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %16 = ptrtoint ptr %writesize12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %count)
  %cmp13.not = icmp eq i32 %17, %count
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false11.normal_crit_edge

lor.lhs.false11.normal_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

if.end15:                                         ; preds = %lor.lhs.false11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %18 = load ptr, ptr @high_memory, align 4
  %cmp16.not = icmp ugt ptr %18, %buffer
  br i1 %cmp16.not, label %if.else31, label %if.then17

if.then17:                                        ; preds = %if.end15
  %add.ptr19 = getelementptr i8, ptr %buffer, i32 %count
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 -1
  %19 = ptrtoint ptr %add.ptr20 to i32
  %20 = xor i32 %19, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %20)
  %cmp22.not = icmp ult i32 %20, 4096
  br i1 %cmp22.not, label %if.end24, label %if.then17.normal_crit_edge

if.then17.normal_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

if.end24:                                         ; preds = %if.then17
  %call = tail call ptr @vmalloc_to_page(ptr noundef %buffer) #7
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %if.end24.normal_crit_edge, label %cleanup

if.end24.normal_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

cleanup:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %and28 = and i32 %13, 4095
  %21 = load ptr, ptr @onenand, align 4
  %phys_base = getelementptr inbounds %struct.s3c_onenand, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys_base, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = add i32 %23, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %call30 = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef nonnull %call, i32 noundef %and28, i32 noundef %count, i32 noundef 2, i32 noundef 0) #7
  br label %if.end39

if.else31:                                        ; preds = %if.end15
  %phys_base32 = getelementptr inbounds %struct.s3c_onenand, ptr %2, i32 0, i32 11
  %26 = ptrtoint ptr %phys_base32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phys_base32, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buffer) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else31
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end39.thread_crit_edge, label %if.then.i, !prof !113

land.rhs.i.if.end39.thread_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #7
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %if.end39.thread

if.end39.i:                                       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast34 = ptrtoint ptr %p.0 to i32
  %sub.ptr.rhs.cast35 = ptrtoint ptr %6 to i32
  %sub.ptr.sub36 = sub i32 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %add37 = add i32 %sub.ptr.sub36, %27
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %buffer, i32 noundef %count) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %32, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %count, i32 noundef 2, i32 noundef 0) #7
  br label %if.end39

if.end39.thread:                                  ; preds = %dev_name.exit.i, %land.rhs.i.if.end39.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #7
  br label %do.end

if.end39:                                         ; preds = %if.end39.i, %cleanup
  %dma_src.1 = phi i32 [ %add, %cleanup ], [ %add37, %if.end39.i ]
  %dma_dst.1 = phi i32 [ %call30, %cleanup ], [ %call41.i, %if.end39.i ]
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %dma_dst.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma_dst.1)
  %cmp.i = icmp eq i32 %dma_dst.1, -1
  br i1 %cmp.i, label %if.end39.do.end_crit_edge, label %if.end43

if.end39.do.end_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end39.do.end_crit_edge, %if.end39.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %count) #10
  br label %normal

if.end43:                                         ; preds = %if.end39
  %33 = load ptr, ptr @s5pc110_dma_ops, align 4
  %call44 = tail call i32 %33(i32 noundef %dma_dst.1, i32 noundef %dma_src.1, i32 noundef %count, i32 noundef 0) #7, !callees !116
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %dma_dst.1, i32 noundef %count, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool49.not = icmp eq i32 %call44, 0
  br i1 %tobool49.not, label %if.end43.cleanup60_crit_edge, label %if.end43.normal_crit_edge

if.end43.normal_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %normal

if.end43.cleanup60_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

normal:                                           ; preds = %if.end43.normal_crit_edge, %do.end, %if.end24.normal_crit_edge, %if.then17.normal_crit_edge, %lor.lhs.false11.normal_crit_edge, %lor.lhs.false9.normal_crit_edge, %lor.lhs.false.normal_crit_edge, %if.end5.normal_crit_edge
  %writesize52 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %34 = ptrtoint ptr %writesize52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %count)
  %cmp53.not = icmp eq i32 %35, %count
  br i1 %cmp53.not, label %if.else58, label %if.then54

if.then54:                                        ; preds = %normal
  call void @__sanitizer_cov_trace_pc() #9
  %page_buf = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 36
  %36 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %page_buf, align 8
  tail call void @mmiocpy(ptr noundef %37, ptr noundef %p.0, i32 noundef %35) #7
  %38 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page_buf, align 8
  %add.ptr57 = getelementptr i8, ptr %39, i32 %offset
  %40 = call ptr @memcpy(ptr %buffer, ptr %add.ptr57, i32 %count)
  br label %cleanup60

if.else58:                                        ; preds = %normal
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mmiocpy(ptr noundef %buffer, ptr noundef %p.0, i32 noundef %count) #7
  br label %cleanup60

cleanup60:                                        ; preds = %if.else58, %if.then54, %if.end43.cleanup60_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5pc110_chip_probe(ptr nocapture noundef readnone %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @s3c_onenand_readw(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @onenand, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %pdev = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr = ashr i32 %sub.ptr.sub, 1
  %9 = zext i32 %sub.ptr.sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %sub.ptr.sub, label %sw.epilog [
    i32 122880, label %sw.bb
    i32 122882, label %sw.bb2
    i32 122884, label %sw.bb5
    i32 122886, label %sw.bb8
    i32 122892, label %sw.bb11
    i32 123970, label %sw.bb14
    i32 124032, label %entry.cleanup_crit_edge
    i32 124060, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 112
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !90
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv = trunc i32 %13 to i16
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i52 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %14 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %15, i32 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !90
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv4 = trunc i32 %17 to i16
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i54 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %18 = ptrtoint ptr %base.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %19, i32 496
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !90
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv7 = trunc i32 %21 to i16
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i56 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %22 = ptrtoint ptr %base.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 144
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #7, !srcloc !90
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv10 = trunc i32 %25 to i16
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i58 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %26 = ptrtoint ptr %base.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 192
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #7, !srcloc !90
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv13 = trunc i32 %29 to i16
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i60 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %30 = ptrtoint ptr %base.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i60, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !90
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv16 = trunc i32 %33 to i16
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %cmp = icmp ult ptr %addr, inttoptr (i32 1024 to ptr)
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end37_crit_edge

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true:                                    ; preds = %sw.epilog
  %bootram_command = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 5
  %34 = ptrtoint ptr %bootram_command to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bootram_command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %land.lhs.true.if.end37_crit_edge, label %if.then

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub)
  %cmp20 = icmp ult i32 %sub.ptr.sub, 2
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %base.i61 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %36 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %37, i32 112
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #7, !srcloc !90
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv24 = trunc i32 %39 to i16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %40 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr, label %if.end.if.end37_crit_edge [
    i32 1, label %if.then27
    i32 2, label %if.then33
  ]

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i63 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %41 = ptrtoint ptr %base.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i63, align 4
  %add.ptr.i64 = getelementptr i8, ptr %42, i32 128
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !90
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv29 = trunc i32 %44 to i16
  br label %cleanup

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i65 = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %45 = ptrtoint ptr %base.i65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %46, i32 496
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #7, !srcloc !90
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %conv35 = trunc i32 %48 to i16
  br label %cleanup

if.end37:                                         ; preds = %if.end.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %sw.epilog.if.end37_crit_edge
  %cmd_map = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 9
  %49 = ptrtoint ptr %cmd_map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd_map, align 4
  %shl = shl i32 %shr, 2
  %call38 = tail call i32 %50(i32 noundef 3, i32 noundef %shl) #7
  %51 = load ptr, ptr @onenand, align 4
  %ahb_addr.i = getelementptr inbounds %struct.s3c_onenand, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ahb_addr.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %53, i32 %call38
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !90
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %and = and i32 %55, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %shr, i32 noundef %and) #10
  %conv40 = trunc i32 %55 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then33, %if.then27, %if.then22, %sw.bb18, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv24, %if.then22 ], [ %conv29, %if.then27 ], [ %conv35, %if.then33 ], [ %conv40, %if.end37 ], [ 4, %sw.bb18 ], [ %conv16, %sw.bb14 ], [ %conv13, %sw.bb11 ], [ %conv10, %sw.bb8 ], [ %conv7, %sw.bb5 ], [ %conv4, %sw.bb2 ], [ %conv, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_onenand_writew(i16 noundef zeroext %value, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @onenand, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %pdev = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr = lshr i32 %sub.ptr.sub, 1
  %9 = zext i32 %sub.ptr.sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %sub.ptr.sub, label %sw.epilog [
    i32 123970, label %sw.bb
    i32 123392, label %entry.cleanup_crit_edge
    i32 123394, label %entry.cleanup_crit_edge30
    i32 124056, label %entry.cleanup_crit_edge31
  ]

entry.cleanup_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %value to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %11 = load ptr, ptr @onenand, align 4
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #7, !srcloc !93
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %cmp = icmp ult ptr %addr, inttoptr (i32 1024 to ptr)
  br i1 %cmp, label %if.then, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %sw.epilog
  %14 = zext i16 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %value, label %if.then.do.end_crit_edge [
    i16 144, label %if.then8
    i16 240, label %if.then12
  ]

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bootram_command = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 5
  %15 = ptrtoint ptr %bootram_command to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %bootram_command, align 4
  br label %cleanup

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr @onenand, align 4
  %base.i28 = getelementptr inbounds %struct.s3c_onenand, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %base.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i28, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !93
  %19 = load ptr, ptr @onenand, align 4
  %bootram_command13 = getelementptr inbounds %struct.s3c_onenand, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %bootram_command13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bootram_command13, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %conv16 = zext i16 %value to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %conv16) #10
  %21 = load ptr, ptr @onenand, align 4
  %cmd_map = getelementptr inbounds %struct.s3c_onenand, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %cmd_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_map, align 4
  %shl = shl i32 %shr, 2
  %call = tail call i32 %23(i32 noundef 3, i32 noundef %shl) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv16) #7
  %25 = load ptr, ptr @onenand, align 4
  %ahb_addr.i = getelementptr inbounds %struct.s3c_onenand, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ahb_addr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %27, i32 %call
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %24) #7, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then12, %if.then8, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge30, %entry.cleanup_crit_edge31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_onenand_wait(ptr nocapture noundef %mtd, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @onenand, align 4
  %pdev = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 21, label %sw.bb
    i32 7, label %sw.bb2
    i32 4, label %sw.bb4
    i32 15, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %flags.0 = phi i32 [ 1024, %entry.sw.epilog_crit_edge ], [ 1152, %sw.bb6 ], [ 1216, %sw.bb4 ], [ 1184, %sw.bb2 ], [ 1168, %sw.bb ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -2, %4
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub61 = add i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub61)
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %while.body.lr.ph, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %state)
  %cmp9.not = icmp eq i32 %state, 21
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %6 = load ptr, ptr @onenand, align 4
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !90
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %and = and i32 %10, %flags.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  br i1 %cmp9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 342, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %while.body.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %12 = load ptr, ptr @onenand, align 4
  %base.i55 = getelementptr inbounds %struct.s3c_onenand, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #7, !srcloc !90
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %17 = load ptr, ptr @onenand, align 4
  %base.i57 = getelementptr inbounds %struct.s3c_onenand, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %base.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %15) #7, !srcloc !93
  %and14 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %while.end.if.end22_crit_edge, label %if.then16

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then16:                                        ; preds = %while.end
  %20 = load ptr, ptr @onenand, align 4
  %base.i59 = getelementptr inbounds %struct.s3c_onenand, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %base.i59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %22, i32 96
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #7, !srcloc !90
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %and18 = and i32 %24, 4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then16.if.end22_crit_edge, label %do.end

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %24) #10
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %25 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %failed, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %while.end.if.end22_crit_edge
  %and23 = and i32 %16, 269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %do.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %16) #10
  %and29 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end28.cleanup_crit_edge, label %do.end34

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, i32 noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -74, %do.end ], [ -5, %do.end34 ], [ -5, %do.end28.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_onenand_bbt_wait(ptr nocapture noundef readnone %mtd, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -2, %0
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr @onenand, align 4
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %6 = and i32 %5, 268697600
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %7 = load ptr, ptr @onenand, align 4
  %base.i22 = getelementptr inbounds %struct.s3c_onenand, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !90
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr @onenand, align 4
  %base.i24 = getelementptr inbounds %struct.s3c_onenand, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %10) #7, !srcloc !93
  %and3 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %while.end.cleanup16.sink.split_crit_edge

while.end.cleanup16.sink.split_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16.sink.split

if.end6:                                          ; preds = %while.end
  %and7 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup16_crit_edge, label %if.then9

if.end6.cleanup16_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

if.then9:                                         ; preds = %if.end6
  %15 = load ptr, ptr @onenand, align 4
  %base.i26 = getelementptr inbounds %struct.s3c_onenand, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %17, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %19 = and i32 %18, 269484032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.then9.cleanup16_crit_edge, label %if.then9.cleanup16.sink.split_crit_edge

if.then9.cleanup16.sink.split_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16.sink.split

if.then9.cleanup16_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

cleanup16.sink.split:                             ; preds = %if.then9.cleanup16.sink.split_crit_edge, %while.end.cleanup16.sink.split_crit_edge
  tail call fastcc void @s3c_onenand_reset()
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup16.sink.split, %if.then9.cleanup16_crit_edge, %if.end6.cleanup16_crit_edge
  %retval.1 = phi i32 [ 0, %if.end6.cleanup16_crit_edge ], [ 0, %if.then9.cleanup16_crit_edge ], [ 1, %cleanup16.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_unlock_all(ptr noundef %mtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chipsize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chipsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipsize, align 8
  %options = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %command = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command, align 8
  %call = tail call i32 %7(ptr noundef %mtd, i32 noundef 39, i64 noundef 0, i32 noundef 0) #7
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %call1 = tail call i32 %9(ptr noundef %mtd, i32 noundef 15) #7
  %device_id = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_id, align 4
  %and2 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %chipsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chipsize, align 8
  %shr = lshr i32 %13, 1
  %conv = zext i32 %shr to i64
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %ofs.0 = phi i64 [ %conv, %if.end ], [ 0, %entry.if.end8_crit_edge ]
  %len.0 = phi i32 [ %shr, %if.end ], [ %3, %entry.if.end8_crit_edge ]
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %erase_shift.i = getelementptr inbounds %struct.onenand_chip, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erase_shift.i, align 4
  %sh_prom.i = zext i32 %17 to i64
  %shr.i22 = lshr i64 %ofs.0, %sh_prom.i
  %conv.i = trunc i64 %shr.i22 to i32
  %18 = load ptr, ptr @onenand, align 4
  %mem_addr.i = getelementptr inbounds %struct.s3c_onenand, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem_addr.i, align 4
  %call.i = tail call i32 %20(i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #7
  %21 = ptrtoint ptr %erase_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %erase_shift.i, align 4
  %shr2.i = lshr i32 %len.0, %22
  %add.i = add nsw i32 %conv.i, -1
  %sub.i = add i32 %add.i, %shr2.i
  %23 = load ptr, ptr @onenand, align 4
  %mem_addr3.i = getelementptr inbounds %struct.s3c_onenand, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %mem_addr3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_addr3.i, align 4
  %call4.i = tail call i32 %25(i32 noundef %sub.i, i32 noundef 0, i32 noundef 0) #7
  %26 = load ptr, ptr @onenand, align 4
  %cmd_map9.i = getelementptr inbounds %struct.s3c_onenand, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %cmd_map9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd_map9.i, align 4
  %call10.i = tail call i32 %28(i32 noundef 2, i32 noundef %call.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr @onenand, align 4
  %ahb_addr.i.i = getelementptr inbounds %struct.s3c_onenand, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ahb_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ahb_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %call10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #7, !srcloc !93
  %32 = load ptr, ptr @onenand, align 4
  %cmd_map11.i = getelementptr inbounds %struct.s3c_onenand, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %cmd_map11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_map11.i, align 4
  %call12.i = tail call i32 %34(i32 noundef 2, i32 noundef %call4.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr @onenand, align 4
  %ahb_addr.i1.i = getelementptr inbounds %struct.s3c_onenand, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ahb_addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ahb_addr.i1.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %37, i32 %call12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 150994944) #7, !srcloc !93
  %wait.i = getelementptr inbounds %struct.onenand_chip, ptr %15, i32 0, i32 18
  %38 = ptrtoint ptr %wait.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wait.i, align 4
  %call13.i = tail call i32 %39(ptr noundef %mtd, i32 noundef 15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  tail call fastcc void @s3c_onenand_check_lock_status(ptr noundef %mtd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_onenand_command(ptr nocapture noundef readonly %mtd, i32 noundef %cmd, i64 noundef %addr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erase_shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %addr, %sh_prom
  %conv = trunc i64 %shr to i32
  %page_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_shift, align 8
  %sh_prom1 = zext i32 %5 to i64
  %shr2 = ashr i64 %addr, %sh_prom1
  %conv3 = trunc i64 %shr2 to i32
  %page_mask = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_mask, align 4
  %and = and i32 %7, %conv3
  %8 = load ptr, ptr @onenand, align 4
  %mem_addr4 = getelementptr inbounds %struct.s3c_onenand, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %mem_addr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_addr4, align 4
  %call = tail call i32 %10(i32 noundef %conv, i32 noundef %and, i32 noundef 0) #7
  %11 = load ptr, ptr @onenand, align 4
  %cmd_map = getelementptr inbounds %struct.s3c_onenand, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %cmd_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_map, align 4
  %call5 = tail call i32 %13(i32 noundef 1, i32 noundef %call) #7
  %14 = load ptr, ptr @onenand, align 4
  %cmd_map6 = getelementptr inbounds %struct.s3c_onenand, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %cmd_map6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_map6, align 4
  %call7 = tail call i32 %16(i32 noundef 2, i32 noundef %call) #7
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 19, label %entry.sw.bb_crit_edge170
    i32 6520, label %entry.sw.bb_crit_edge171
  ]

entry.sw.bb_crit_edge171:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge170:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge170, %entry.sw.bb_crit_edge171
  %bufferram_index = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %bufferram_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bufferram_index, align 4
  %xor = xor i32 %19, 1
  store i32 %xor, ptr %bufferram_index, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %bufferram_index8 = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %bufferram_index8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bufferram_index8, align 4
  %22 = load ptr, ptr @onenand, align 4
  %page_buf = getelementptr inbounds %struct.s3c_onenand, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page_buf, align 4
  %oob_buf = getelementptr inbounds %struct.s3c_onenand, ptr %22, i32 0, i32 7
  %25 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oob_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %writesize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %writesize, align 8
  %shr9 = lshr i32 %28, 2
  %add.ptr = getelementptr i32, ptr %24, i32 %shr9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %29 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oobsize, align 4
  %shr10 = lshr i32 %30, 2
  %add.ptr11 = getelementptr i32, ptr %26, i32 %shr10
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %s.0 = phi ptr [ %add.ptr11, %if.then ], [ %26, %sw.epilog.if.end_crit_edge ]
  %m.0 = phi ptr [ %add.ptr, %if.then ], [ %24, %sw.epilog.if.end_crit_edge ]
  %writesize12 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %31 = ptrtoint ptr %writesize12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %writesize12, align 4
  %shr13 = lshr i32 %32, 2
  %oobsize14 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %33 = ptrtoint ptr %oobsize14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oobsize14, align 4
  %shr15 = lshr i32 %34, 2
  %35 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 0, label %for.cond.preheader
    i32 19, label %sw.bb19
    i32 128, label %for.cond39.preheader
    i32 26, label %sw.bb47
    i32 39, label %sw.bb63
    i32 148, label %sw.bb64
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond39.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp40144.not = icmp ult i32 %32, 4
  br i1 %cmp40144.not, label %for.cond39.preheader.cleanup_crit_edge, label %for.body42.preheader

for.cond39.preheader.cleanup_crit_edge:           ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body42.preheader:                             ; preds = %for.cond39.preheader
  %umax159 = call i32 @llvm.umax.i32(i32 %shr13, i32 1)
  br label %for.body42

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp153.not = icmp ult i32 %32, 4
  br i1 %cmp153.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax165 = call i32 @llvm.umax.i32(i32 %shr13, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0155 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %m.1154 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %m.0, %for.body.preheader ]
  %36 = load ptr, ptr @onenand, align 4
  %ahb_addr.i = getelementptr inbounds %struct.s3c_onenand, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ahb_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %call5
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !90
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %incdec.ptr = getelementptr i32, ptr %m.1154, i32 1
  %41 = ptrtoint ptr %m.1154 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %m.1154, align 4
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond166.not = icmp eq i32 %inc, %umax165
  br i1 %exitcond166.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr @onenand, align 4
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %44, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 16777216) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp21147.not = icmp ult i32 %32, 4
  br i1 %cmp21147.not, label %sw.bb19.for.cond29.preheader_crit_edge, label %for.body23.preheader

sw.bb19.for.cond29.preheader_crit_edge:           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond29.preheader

for.body23.preheader:                             ; preds = %sw.bb19
  %umax161 = call i32 @llvm.umax.i32(i32 %shr13, i32 1)
  br label %for.body23

for.cond29.preheader:                             ; preds = %for.body23.for.cond29.preheader_crit_edge, %sw.bb19.for.cond29.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp30150.not = icmp ult i32 %34, 4
  br i1 %cmp30150.not, label %for.cond29.preheader.for.end37_crit_edge, label %for.body32.preheader

for.cond29.preheader.for.end37_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.body32.preheader:                             ; preds = %for.cond29.preheader
  %umax163 = call i32 @llvm.umax.i32(i32 %shr15, i32 1)
  br label %for.body32

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.preheader
  %i.1149 = phi i32 [ %inc27, %for.body23.for.body23_crit_edge ], [ 0, %for.body23.preheader ]
  %m.2148 = phi ptr [ %incdec.ptr25, %for.body23.for.body23_crit_edge ], [ %m.0, %for.body23.preheader ]
  %45 = load ptr, ptr @onenand, align 4
  %ahb_addr.i118 = getelementptr inbounds %struct.s3c_onenand, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %ahb_addr.i118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ahb_addr.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %47, i32 %call5
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #7, !srcloc !90
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %incdec.ptr25 = getelementptr i32, ptr %m.2148, i32 1
  %50 = ptrtoint ptr %m.2148 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %m.2148, align 4
  %inc27 = add nuw nsw i32 %i.1149, 1
  %exitcond162.not = icmp eq i32 %inc27, %umax161
  br i1 %exitcond162.not, label %for.body23.for.cond29.preheader_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.body23.for.cond29.preheader_crit_edge:        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond29.preheader

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body32.preheader
  %i.2152 = phi i32 [ %inc36, %for.body32.for.body32_crit_edge ], [ 0, %for.body32.preheader ]
  %s.1151 = phi ptr [ %incdec.ptr34, %for.body32.for.body32_crit_edge ], [ %s.0, %for.body32.preheader ]
  %51 = load ptr, ptr @onenand, align 4
  %ahb_addr.i120 = getelementptr inbounds %struct.s3c_onenand, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ahb_addr.i120 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ahb_addr.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %53, i32 %call5
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #7, !srcloc !90
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %incdec.ptr34 = getelementptr i32, ptr %s.1151, i32 1
  %56 = ptrtoint ptr %s.1151 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %s.1151, align 4
  %inc36 = add nuw nsw i32 %i.2152, 1
  %exitcond164.not = icmp eq i32 %inc36, %umax163
  br i1 %exitcond164.not, label %for.body32.for.end37_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

for.body32.for.end37_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.end37:                                        ; preds = %for.body32.for.end37_crit_edge, %for.cond29.preheader.for.end37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %57 = load ptr, ptr @onenand, align 4
  %base.i122 = getelementptr inbounds %struct.s3c_onenand, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %base.i122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i122, align 4
  %add.ptr.i123 = getelementptr i8, ptr %59, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 0) #7, !srcloc !93
  br label %cleanup

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.preheader
  %i.3146 = phi i32 [ %inc45, %for.body42.for.body42_crit_edge ], [ 0, %for.body42.preheader ]
  %m.3145 = phi ptr [ %incdec.ptr43, %for.body42.for.body42_crit_edge ], [ %m.0, %for.body42.preheader ]
  %incdec.ptr43 = getelementptr i32, ptr %m.3145, i32 1
  %60 = ptrtoint ptr %m.3145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m.3145, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %63 = load ptr, ptr @onenand, align 4
  %ahb_addr.i124 = getelementptr inbounds %struct.s3c_onenand, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ahb_addr.i124 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ahb_addr.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %65, i32 %call5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %62) #7, !srcloc !93
  %inc45 = add nuw nsw i32 %i.3146, 1
  %exitcond160.not = icmp eq i32 %inc45, %umax159
  br i1 %exitcond160.not, label %for.body42.cleanup_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %66 = load ptr, ptr @onenand, align 4
  %base.i126 = getelementptr inbounds %struct.s3c_onenand, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %base.i126 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i126, align 4
  %add.ptr.i127 = getelementptr i8, ptr %68, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 16777216) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp49139.not = icmp ult i32 %32, 4
  br i1 %cmp49139.not, label %sw.bb47.for.cond55.preheader_crit_edge, label %for.body51.preheader

sw.bb47.for.cond55.preheader_crit_edge:           ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond55.preheader

for.body51.preheader:                             ; preds = %sw.bb47
  %umax = call i32 @llvm.umax.i32(i32 %shr13, i32 1)
  br label %for.body51

for.cond55.preheader:                             ; preds = %for.body51.for.cond55.preheader_crit_edge, %sw.bb47.for.cond55.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp56141.not = icmp ult i32 %34, 4
  br i1 %cmp56141.not, label %for.cond55.preheader.for.end62_crit_edge, label %for.body58.preheader

for.cond55.preheader.for.end62_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.body58.preheader:                             ; preds = %for.cond55.preheader
  %umax157 = call i32 @llvm.umax.i32(i32 %shr15, i32 1)
  br label %for.body58

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.preheader
  %i.4140 = phi i32 [ %inc53, %for.body51.for.body51_crit_edge ], [ 0, %for.body51.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %69 = load ptr, ptr @onenand, align 4
  %ahb_addr.i128 = getelementptr inbounds %struct.s3c_onenand, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %ahb_addr.i128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ahb_addr.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %71, i32 %call5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 -1) #7, !srcloc !93
  %inc53 = add nuw nsw i32 %i.4140, 1
  %exitcond.not = icmp eq i32 %inc53, %umax
  br i1 %exitcond.not, label %for.body51.for.cond55.preheader_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.body51.for.cond55.preheader_crit_edge:        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond55.preheader

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.body58.preheader
  %i.5143 = phi i32 [ %inc61, %for.body58.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %s.2142 = phi ptr [ %incdec.ptr59, %for.body58.for.body58_crit_edge ], [ %s.0, %for.body58.preheader ]
  %incdec.ptr59 = getelementptr i32, ptr %s.2142, i32 1
  %72 = ptrtoint ptr %s.2142 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s.2142, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  %75 = load ptr, ptr @onenand, align 4
  %ahb_addr.i130 = getelementptr inbounds %struct.s3c_onenand, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ahb_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ahb_addr.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %77, i32 %call5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %74) #7, !srcloc !93
  %inc61 = add nuw nsw i32 %i.5143, 1
  %exitcond158.not = icmp eq i32 %inc61, %umax157
  br i1 %exitcond158.not, label %for.body58.for.end62_crit_edge, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

for.body58.for.end62_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.end62:                                        ; preds = %for.body58.for.end62_crit_edge, %for.cond55.preheader.for.end62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %78 = load ptr, ptr @onenand, align 4
  %base.i132 = getelementptr inbounds %struct.s3c_onenand, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %base.i132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %80, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 0) #7, !srcloc !93
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %81 = load ptr, ptr @onenand, align 4
  %ahb_addr.i134 = getelementptr inbounds %struct.s3c_onenand, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ahb_addr.i134 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ahb_addr.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %83, i32 %call7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 234881024) #7, !srcloc !93
  br label %cleanup

sw.bb64:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %84 = load ptr, ptr @onenand, align 4
  %ahb_addr.i136 = getelementptr inbounds %struct.s3c_onenand, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ahb_addr.i136 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ahb_addr.i136, align 4
  %add.ptr.i137 = getelementptr i8, ptr %86, i32 %call7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 50331648) #7, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %sw.bb64, %sw.bb63, %for.end62, %for.body42.cleanup_crit_edge, %for.end37, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond39.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @onenand_read_bufferram(ptr nocapture noundef readonly %mtd, i32 noundef %area, ptr nocapture noundef writeonly %buffer, i32 noundef %offset, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %area)
  %cmp.i = icmp eq i32 %area, 1024
  %4 = load ptr, ptr @onenand, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %page_buf.i = getelementptr inbounds %struct.s3c_onenand, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.s3c_get_bufferram.exit_crit_edge

if.then.i.s3c_get_bufferram.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_get_bufferram.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  br label %s3c_get_bufferram.exit

if.else.i:                                        ; preds = %entry
  %oob_buf.i = getelementptr inbounds %struct.s3c_onenand, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oob_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3.i = icmp eq i32 %3, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.s3c_get_bufferram.exit_crit_edge

if.else.i.s3c_get_bufferram.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_get_bufferram.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 %12
  br label %s3c_get_bufferram.exit

s3c_get_bufferram.exit:                           ; preds = %if.then4.i, %if.else.i.s3c_get_bufferram.exit_crit_edge, %if.then2.i, %if.then.i.s3c_get_bufferram.exit_crit_edge
  %p.0.i = phi ptr [ %add.ptr.i, %if.then2.i ], [ %6, %if.then.i.s3c_get_bufferram.exit_crit_edge ], [ %add.ptr5.i, %if.then4.i ], [ %10, %if.else.i.s3c_get_bufferram.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.0.i, i32 %offset
  %13 = call ptr @memcpy(ptr %buffer, ptr %add.ptr, i32 %count)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @onenand_write_bufferram(ptr nocapture noundef readonly %mtd, i32 noundef %area, ptr nocapture noundef readonly %buffer, i32 noundef %offset, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bufferram_index.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bufferram_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufferram_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %area)
  %cmp.i = icmp eq i32 %area, 1024
  %4 = load ptr, ptr @onenand, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %page_buf.i = getelementptr inbounds %struct.s3c_onenand, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.s3c_get_bufferram.exit_crit_edge

if.then.i.s3c_get_bufferram.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_get_bufferram.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %writesize.i = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  br label %s3c_get_bufferram.exit

if.else.i:                                        ; preds = %entry
  %oob_buf.i = getelementptr inbounds %struct.s3c_onenand, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %oob_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %oob_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3.i = icmp eq i32 %3, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.s3c_get_bufferram.exit_crit_edge

if.else.i.s3c_get_bufferram.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c_get_bufferram.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 %12
  br label %s3c_get_bufferram.exit

s3c_get_bufferram.exit:                           ; preds = %if.then4.i, %if.else.i.s3c_get_bufferram.exit_crit_edge, %if.then2.i, %if.then.i.s3c_get_bufferram.exit_crit_edge
  %p.0.i = phi ptr [ %add.ptr.i, %if.then2.i ], [ %6, %if.then.i.s3c_get_bufferram.exit_crit_edge ], [ %add.ptr5.i, %if.then4.i ], [ %10, %if.else.i.s3c_get_bufferram.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.0.i, i32 %offset
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %buffer, i32 %count)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_onenand_reset() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %0 = load ptr, ptr @onenand, align 4
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !93
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %timeout.0 = phi i32 [ 65536, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %timeout.0, -1
  %3 = load ptr, ptr @onenand, align 4
  %base.i4 = getelementptr inbounds %struct.s3c_onenand, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %7 = and i32 %6, 1048576
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %8 = load ptr, ptr @onenand, align 4
  %base.i6 = getelementptr inbounds %struct.s3c_onenand, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr @onenand, align 4
  %base.i8 = getelementptr inbounds %struct.s3c_onenand, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %base.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %11) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr @onenand, align 4
  %base.i10 = getelementptr inbounds %struct.s3c_onenand, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %18 = load ptr, ptr @onenand, align 4
  %base.i12 = getelementptr inbounds %struct.s3c_onenand, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %base.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %20, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #7, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c_onenand_check_lock_status(ptr nocapture noundef readonly %mtd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load ptr, ptr @onenand, align 4
  %pdev = getelementptr inbounds %struct.s3c_onenand, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %chipsize = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %chipsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipsize, align 8
  %erase_shift = getelementptr inbounds %struct.onenand_chip, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erase_shift, align 4
  %shr = lshr i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp13.not = icmp eq i32 %shr, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %block.014 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %9 = load ptr, ptr @onenand, align 4
  %mem_addr2 = getelementptr inbounds %struct.s3c_onenand, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %mem_addr2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_addr2, align 4
  %call = tail call i32 %11(i32 noundef %block.014, i32 noundef 0, i32 noundef 0) #7
  %12 = load ptr, ptr @onenand, align 4
  %cmd_map = getelementptr inbounds %struct.s3c_onenand, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %cmd_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_map, align 4
  %call3 = tail call i32 %14(i32 noundef 1, i32 noundef %call) #7
  %15 = load ptr, ptr @onenand, align 4
  %ahb_addr.i = getelementptr inbounds %struct.s3c_onenand, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ahb_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ahb_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %call3
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %19 = load ptr, ptr @onenand, align 4
  %base.i = getelementptr inbounds %struct.s3c_onenand, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %block.014) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr @onenand, align 4
  %base.i11 = getelementptr inbounds %struct.s3c_onenand, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 65536) #7, !srcloc !93
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %inc = add nuw i32 %block.014, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pm_ops_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %wait = getelementptr inbounds %struct.onenand_chip, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %call1 = tail call i32 %5(ptr noundef %1, i32 noundef 12) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pm_ops_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %unlock_all = getelementptr inbounds %struct.onenand_chip, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %unlock_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlock_all, align 4
  tail call void %5(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_onenand_samsung__236_1002_s3c_onenand_driver_init6, !1, !"__initcall__kmod_onenand_samsung__236_1002_s3c_onenand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 1002, i32 1}
!2 = !{ptr @__exitcall_s3c_onenand_driver_exit, !1, !"__exitcall_s3c_onenand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 1004, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author239, !7, !"__UNIQUE_ID_author239", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 1005, i32 1}
!8 = !{ptr @__UNIQUE_ID_description240, !9, !"__UNIQUE_ID_description240", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 1006, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 994, i32 11}
!12 = !{ptr @s3c_onenand_driver, !13, !"s3c_onenand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 992, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 911, i32 26}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 914, i32 5}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c_onenand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c_onenand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 931, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @s3c_onenand_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @s3c_onenand_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 936, i32 3}
!31 = !{ptr @s3c_onenand_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @s3c_onenand_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @onenand, !34, !"onenand", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 143, i32 28}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 662, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s5pc110_read_bufferram._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @s5pc110_read_bufferram._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 261, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @s3c_onenand_readw._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @s3c_onenand_readw._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 304, i32 2}
!51 = !{ptr @s3c_onenand_writew._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @s3c_onenand_writew._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 356, i32 4}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @s3c_onenand_wait._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @s3c_onenand_wait._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 364, i32 3}
!60 = !{ptr @s3c_onenand_wait._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @s3c_onenand_wait._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 367, i32 4}
!64 = !{ptr @s3c_onenand_wait._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @s3c_onenand_wait._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 740, i32 4}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @s3c_onenand_check_lock_status._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @s3c_onenand_check_lock_status._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @s5pc110_dma_ops, !72, !"s5pc110_dma_ops", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 516, i32 14}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @s3c_pm_ops, !77, !"s3c_pm_ops", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 973, i32 32}
!78 = !{ptr @s3c_onenand_driver_ids, !79, !"s3c_onenand_driver_ids", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/onenand/onenand_samsung.c", i32 978, i32 40}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2154383366, i64 2154383873, i64 2154383403, i64 2154383459, i64 2154383493, i64 2154383517, i64 2154383558, i64 2154383579, i64 2154383607, i64 2154383641}
!90 = !{i64 6537003}
!91 = !{i64 2154352405}
!92 = !{i64 2154365145}
!93 = !{i64 6536585}
!94 = !{i64 2154365530}
!95 = !{i64 2154366734}
!96 = !{i64 2154368048}
!97 = !{i64 2154368549}
!98 = !{i64 2154368946}
!99 = !{i64 2154369367}
!100 = !{i64 2154370030}
!101 = !{i64 2154370277}
!102 = !{i64 2154371098}
!103 = !{i64 2154373167}
!104 = !{i64 2154373407}
!105 = !{i64 2154373802}
!106 = !{i64 2154374187}
!107 = !{i64 2154375391}
!108 = !{i64 2154376705}
!109 = !{i64 2154377206}
!110 = !{i64 2154377603}
!111 = !{i64 2154378024}
!112 = !{i64 2154371769}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2154372120}
!115 = !{i64 2154372510}
!116 = !{ptr @s5pc110_dma_irq, ptr @s5pc110_dma_poll}
!117 = !{i64 2154353660}
!118 = !{i64 2154352795}
!119 = !{i64 2154354051}
