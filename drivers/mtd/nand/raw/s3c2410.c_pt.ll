; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/s3c2410.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/s3c2410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.s3c24XX_nand_devtype_data = type { i32 }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.s3c2410_nand_info = type { %struct.nand_controller, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.s3c2410_platform_nand = type { i32, i32, i32, i8, i32, i32, ptr, ptr }
%struct.s3c2410_nand_set = type { i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.47 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.47 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.50, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
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
%struct.anon.50 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c2410_nand_mtd = type { %struct.nand_chip, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.46 }
%union.anon.46 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_s3c2410__222_1291_s3c24xx_nand_driver_init6 = internal global ptr @s3c24xx_nand_driver_init, section ".initcall6.init", align 4
@s3c24xx_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c24xx_nand_probe, ptr @s3c24xx_nand_remove, ptr null, ptr @s3c24xx_nand_suspend, ptr @s3c24xx_nand_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c24xx_nand_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s3c24xx_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s3c24xx_nand_driver_exit = internal global ptr @s3c24xx_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file223 = internal constant [42 x i8] c"s3c2410.file=drivers/mtd/nand/raw/s3c2410\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [20 x i8] c"s3c2410.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [44 x i8] c"s3c2410.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [44 x i8] c"s3c2410.description=S3C24XX MTD NAND driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c24xx-nand\00", [19 x i8] zeroinitializer }, align 32
@s3c24xx_nand_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_nand_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2412_nand_devtype_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_nand_devtype_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@s3c24xx_driver_ids = internal constant { [5 x %struct.platform_device_id], [40 x i8] } { [5 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-nand\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2440-nand\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"s3c2412-nand\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"s3c6400-nand\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@s3c24xx_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @s3c2410_nand_attach_chip, ptr null, ptr null, ptr @s3c2410_nand_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@s3c24xx_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c24xx_nand_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/nand/raw/s3c2410.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_nand_probe._entry_ptr = internal global ptr @s3c24xx_nand_probe._entry, section ".printk_index", align 4
@s3c24xx_nand_probe.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s3c2410\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mapped registers at %p\0A\00", [40 x i8] zeroinitializer }, align 32
@s3c24xx_nand_probe.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"initialising set %d (%p, info %p)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nand-s3c2410: initialising set %d (%p, info %p)\0A\00", [47 x i8] zeroinitializer }, align 32
@s3c24xx_nand_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to init cpufreq support\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c24xx_nand_probe._entry_ptr.13 = internal global ptr @s3c24xx_nand_probe._entry.11, section ".printk_index", align 4
@s3c24xx_nand_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1194, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clock idle support enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_nand_probe._entry_ptr.17 = internal global ptr @s3c24xx_nand_probe._entry.14, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@s3c2410_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 936, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ECC disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c2410_nand_attach_chip\00", [39 x i8] zeroinitializer }, align 32
@s3c2410_nand_attach_chip._entry_ptr = internal global ptr @s3c2410_nand_attach_chip._entry, section ".printk_index", align 4
@s3c2410_nand_attach_chip._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 947, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soft ECC\0A\00", [22 x i8] zeroinitializer }, align 32
@s3c2410_nand_attach_chip._entry_ptr.23 = internal global ptr @s3c2410_nand_attach_chip._entry.21, section ".printk_index", align 4
@s3c2410_nand_attach_chip.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.4, ptr @.str.24, i8 0, i8 -13, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip %p => page shift %d\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c2410_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @s3c2410_ooblayout_ecc, ptr @s3c2410_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@s3c2410_nand_attach_chip._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.4, i32 987, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hardware ECC\0A\00", [18 x i8] zeroinitializer }, align 32
@s3c2410_nand_attach_chip._entry_ptr.27 = internal global ptr @s3c2410_nand_attach_chip._entry.25, section ".printk_index", align 4
@s3c2410_nand_attach_chip._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.4, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid ECC mode!\0A\00", [45 x i8] zeroinitializer }, align 32
@s3c2410_nand_attach_chip._entry_ptr.30 = internal global ptr @s3c2410_nand_attach_chip._entry.28, section ".printk_index", align 4
@s3c2410_nand_calculate_ecc.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c2410_nand_calculate_ecc\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: returning ecc %*phN\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nand-s3c2410: %s: returning ecc %*phN\0A\00", [57 x i8] zeroinitializer }, align 32
@s3c2410_nand_correct_data.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c2410_nand_correct_data\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(%p,%p,%p,%p)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nand-s3c2410: %s(%p,%p,%p,%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c2410_nand_correct_data.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.34, ptr @.str.4, ptr @.str.37, i8 0, i8 -126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: rd %*phN calc %*phN diff %02x%02x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nand-s3c2410: %s: rd %*phN calc %*phN diff %02x%02x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@s3c2410_nand_correct_data.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.34, ptr @.str.4, ptr @.str.39, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"correcting error bit %d, byte %d\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c2412_nand_calculate_ecc.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.40, ptr @.str.4, ptr @.str.32, i8 0, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c2412_nand_calculate_ecc\00", [37 x i8] zeroinitializer }, align 32
@s3c2440_nand_calculate_ecc.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c2440_nand_calculate_ecc\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: returning ecc %06lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nand-s3c2410: %s: returning ecc %06lx\0A\00", [57 x i8] zeroinitializer }, align 32
@s3c2410_nand_setrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get suitable timings\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c2410_nand_setrate\00", [43 x i8] zeroinitializer }, align 32
@s3c2410_nand_setrate._entry_ptr = internal global ptr @s3c2410_nand_setrate._entry, section ".printk_index", align 4
@s3c2410_nand_setrate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 321, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Tacls=%d, %dns Twrph0=%d %dns, Twrph1=%d %dns\0A\00", [49 x i8] zeroinitializer }, align 32
@s3c2410_nand_setrate._entry_ptr.48 = internal global ptr @s3c2410_nand_setrate._entry.46, section ".printk_index", align 4
@s3c2410_nand_setrate.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.45, ptr @.str.4, ptr @.str.49, i8 0, i8 89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NF_CONF is 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@s3c_nand_calc_rate.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c_nand_calc_rate\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"result %d from %ld, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nand-s3c2410: result %d from %ld, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@s3c_nand_calc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.4, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013nand-s3c2410: %d ns is too big for current clock rate %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c_nand_calc_rate._entry_ptr = internal global ptr @s3c_nand_calc_rate._entry, section ".printk_index", align 4
@s3c2410_nand_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 898, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"System booted from NAND\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c2410_nand_init_chip\00", [41 x i8] zeroinitializer }, align 32
@s3c2410_nand_init_chip._entry_ptr = internal global ptr @s3c2410_nand_init_chip._entry, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@s3c2410_nand_select_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid chip %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c2410_nand_select_chip\00", [39 x i8] zeroinitializer }, align 32
@s3c2410_nand_select_chip._entry_ptr = internal global ptr @s3c2410_nand_select_chip._entry, section ".printk_index", align 4
@s3c24xx_nand_remove.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s3c24xx_nand_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"releasing mtd %d (%p)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nand-s3c2410: releasing mtd %d (%p)\0A\00", [59 x i8] zeroinitializer }, align 32
@s3c2410_nand_devtype_data = internal constant { %struct.s3c24XX_nand_devtype_data, [28 x i8] } zeroinitializer, align 32
@s3c2412_nand_devtype_data = internal constant { %struct.s3c24XX_nand_devtype_data, [28 x i8] } { %struct.s3c24XX_nand_devtype_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@s3c2440_nand_devtype_data = internal constant { %struct.s3c24XX_nand_devtype_data, [28 x i8] } { %struct.s3c24XX_nand_devtype_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@switch.table.s3c2410_nand_attach_chip = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @s3c2410_nand_enable_hwecc, ptr @s3c2412_nand_enable_hwecc, ptr @s3c2440_nand_enable_hwecc], [20 x i8] zeroinitializer }, align 32
@switch.table.s3c2410_nand_attach_chip.62 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @s3c2410_nand_calculate_ecc, ptr @s3c2412_nand_calculate_ecc, ptr @s3c2440_nand_calculate_ecc], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"s3c24xx_nand_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1279, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1286, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"s3c24xx_nand_dt_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1006, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"s3c24xx_driver_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1260, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"s3c24xx_nand_controller_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1001, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1107, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1109, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1141, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1169, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1189, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1194, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1105, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 936, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 947, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 972, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [22 x i8] c"s3c2410_ooblayout_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 98, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 987, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 991, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 629, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 515, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 521, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 560, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 645, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 661, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 315, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 319, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 358, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 263, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 266, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 898, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 464, i32 31 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 424, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 782, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [26 x i8] c"s3c2410_nand_devtype_data\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 179, i32 47 }
@___asan_gen_.272 = private unnamed_addr constant [26 x i8] c"s3c2412_nand_devtype_data\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 183, i32 47 }
@___asan_gen_.275 = private unnamed_addr constant [26 x i8] c"s3c2440_nand_devtype_data\00", align 1
@___asan_gen_.276 = private constant [34 x i8] c"../drivers/mtd/nand/raw/s3c2410.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 187, i32 47 }
@___asan_gen_.278 = private unnamed_addr constant [38 x i8] c"switch.table.s3c2410_nand_attach_chip\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [41 x i8] c"switch.table.s3c2410_nand_attach_chip.62\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__exitcall_s3c24xx_nand_driver_exit, ptr @__initcall__kmod_s3c2410__222_1291_s3c24xx_nand_driver_init6, ptr @s3c2410_nand_attach_chip._entry, ptr @s3c2410_nand_attach_chip._entry.21, ptr @s3c2410_nand_attach_chip._entry.25, ptr @s3c2410_nand_attach_chip._entry.28, ptr @s3c2410_nand_attach_chip._entry_ptr, ptr @s3c2410_nand_attach_chip._entry_ptr.23, ptr @s3c2410_nand_attach_chip._entry_ptr.27, ptr @s3c2410_nand_attach_chip._entry_ptr.30, ptr @s3c2410_nand_init_chip._entry, ptr @s3c2410_nand_init_chip._entry_ptr, ptr @s3c2410_nand_select_chip._entry, ptr @s3c2410_nand_select_chip._entry_ptr, ptr @s3c2410_nand_setrate._entry, ptr @s3c2410_nand_setrate._entry.46, ptr @s3c2410_nand_setrate._entry_ptr, ptr @s3c2410_nand_setrate._entry_ptr.48, ptr @s3c24xx_nand_driver_exit, ptr @s3c24xx_nand_probe._entry, ptr @s3c24xx_nand_probe._entry.11, ptr @s3c24xx_nand_probe._entry.14, ptr @s3c24xx_nand_probe._entry_ptr, ptr @s3c24xx_nand_probe._entry_ptr.13, ptr @s3c24xx_nand_probe._entry_ptr.17, ptr @s3c_nand_calc_rate._entry, ptr @s3c_nand_calc_rate._entry_ptr, ptr @s3c24xx_nand_driver, ptr @.str, ptr @s3c24xx_nand_dt_ids, ptr @s3c24xx_driver_ids, ptr @s3c24xx_nand_controller_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @nand_controller_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @s3c2410_ooblayout_ops, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @s3c2410_nand_devtype_data, ptr @s3c2412_nand_devtype_data, ptr @s3c2440_nand_devtype_data, ptr @switch.table.s3c2410_nand_attach_chip, ptr @switch.table.s3c2410_nand_attach_chip.62], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_nand_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_driver_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_nand_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_nand_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_attach_chip._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_attach_chip._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_attach_chip._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_setrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_setrate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_nand_calc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_select_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_nand_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2412_nand_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2440_nand_devtype_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c2410_nand_attach_chip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c2410_nand_attach_chip.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c24xx_nand_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c24xx_nand_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.exit_error.thread_crit_edge, label %if.end

entry.exit_error.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @nand_controller_init.__key) #6
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @s3c24xx_nand_controller_ops, ptr %ops, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %clk = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %exit_error.thread

if.end8:                                          ; preds = %if.end
  %clk_state.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i = icmp eq i32 %4, 1
  br i1 %cmp1.i, label %if.end8.s3c2410_nand_clk_set_state.exit_crit_edge, label %if.else.i

if.end8.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.else.i:                                        ; preds = %if.end8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge

if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.end.i.i:                                       ; preds = %if.else.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge, label %if.end11.sink.split.i

if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.end11.sink.split.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call3) #6
  br label %s3c2410_nand_clk_set_state.exit

s3c2410_nand_clk_set_state.exit:                  ; preds = %if.end11.sink.split.i, %if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge, %if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge, %if.end8.s3c2410_nand_clk_set_state.exit_crit_edge
  %5 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %clk_state.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %s3c2410_nand_clk_set_state.exit
  %call2.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then10.exit_error.thread_crit_edge, label %if.end.i

if.then10.exit_error.thread_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.end.i:                                         ; preds = %if.then10
  %10 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call2.i, align 4
  %cpu_type.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %cpu_type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cpu_type.i, align 4
  %call.i.i185 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool5.not.i = icmp eq ptr %call.i.i185, null
  br i1 %tobool5.not.i, label %if.end.i.exit_error.thread_crit_edge, label %if.end7.i

if.end.i.exit_error.thread_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.end7.i:                                        ; preds = %if.end.i
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i185, ptr %platform_data.i, align 8
  %call.i53.i = tail call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i53.i, null
  br i1 %cmp.not5.i.i, label %of_get_child_count.exit.thread.i, label %if.end7.i.for.body.i.i_crit_edge

if.end7.i.for.body.i.i_crit_edge:                 ; preds = %if.end7.i
  br label %for.body.i.i

of_get_child_count.exit.thread.i:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %nr_sets55.i = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %call.i.i185, i32 0, i32 5
  %14 = ptrtoint ptr %nr_sets55.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %nr_sets55.i, align 4
  br label %if.end16

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end7.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i186, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i53.i, %if.end7.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i186 = tail call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i186, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  %nr_sets.i = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %call.i.i185, i32 0, i32 5
  %15 = ptrtoint ptr %nr_sets.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i.i, ptr %nr_sets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool11.not.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool11.not.i, label %of_get_child_count.exit.i.if.end16_crit_edge, label %if.end13.i

of_get_child_count.exit.i.if.end16_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end13.i:                                       ; preds = %of_get_child_count.exit.i
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 32) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end13.i.exit_error.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !150

if.end13.i.exit_error.thread_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

devm_kcalloc.exit.i:                              ; preds = %if.end13.i
  %18 = extractvalue { i32, i1 } %16, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #6
  %tobool17.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool17.not.i, label %devm_kcalloc.exit.i.exit_error.thread_crit_edge, label %if.end19.i

devm_kcalloc.exit.i.exit_error.thread_crit_edge:  ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.end19.i:                                       ; preds = %devm_kcalloc.exit.i
  %sets20.i = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %call.i.i185, i32 0, i32 6
  %19 = ptrtoint ptr %sets20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %sets20.i, align 4
  %call21.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %7, ptr noundef null) #6
  %cmp.not59.i = icmp eq ptr %call21.i, null
  br i1 %cmp.not59.i, label %if.end19.i.if.end16_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

if.end19.i.if.end16_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %sets.061.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call5.i.i.i, %if.end19.i.for.body.i_crit_edge ]
  %child.060.i = phi ptr [ %call25.i, %for.body.i.for.body.i_crit_edge ], [ %call21.i, %if.end19.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %child.060.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %child.060.i, align 4
  %name22.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.061.i, i32 0, i32 4
  %22 = ptrtoint ptr %name22.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %name22.i, align 4
  %of_node23.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.061.i, i32 0, i32 7
  %23 = ptrtoint ptr %of_node23.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %child.060.i, ptr %of_node23.i, align 4
  %nr_chips.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.061.i, i32 0, i32 2
  %24 = ptrtoint ptr %nr_chips.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %nr_chips.i, align 4
  %call24.i = tail call ptr @of_node_get(ptr noundef nonnull %child.060.i) #6
  %incdec.ptr.i = getelementptr %struct.s3c2410_nand_set, ptr %sets.061.i, i32 1
  %call25.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %7, ptr noundef nonnull %child.060.i) #6
  %cmp.not.i = icmp eq ptr %call25.i, null
  br i1 %cmp.not.i, label %for.body.i.if.end16_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end16_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.else:                                          ; preds = %s3c2410_nand_clk_set_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %25 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %driver_data.i, align 4
  %cpu_type.i189 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %9, i32 0, i32 12
  %29 = ptrtoint ptr %cpu_type.i189 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cpu_type.i189, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %for.body.i.if.end16_crit_edge, %if.end19.i.if.end16_crit_edge, %of_get_child_count.exit.i.if.end16_crit_edge, %of_get_child_count.exit.thread.i
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platform_data.i.i, align 8
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %32 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resource, align 8
  %device = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %device, align 4
  %platform = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %platform, align 4
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %33) #6
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call21, ptr %regs, align 4
  %cmp.i190 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %exit_error, label %do.body28

do.body28:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_nand_probe.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_nand_probe, %do.end39)) #6
          to label %if.then34 [label %do.end39], !srcloc !151

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_nand_probe.__UNIQUE_ID_ddebug220, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %38) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body28
  %sets40 = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %31, i32 0, i32 6
  %39 = ptrtoint ptr %sets40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sets40, align 4
  %tobool41.not = icmp eq ptr %40, null
  br i1 %tobool41.not, label %do.end39.exit_error.thread_crit_edge, label %lor.lhs.false

do.end39.exit_error.thread_crit_edge:             ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

lor.lhs.false:                                    ; preds = %do.end39
  %nr_sets42 = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %31, i32 0, i32 5
  %41 = ptrtoint ptr %nr_sets42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_sets42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp43 = icmp slt i32 %42, 1
  br i1 %cmp43, label %lor.lhs.false.exit_error.thread_crit_edge, label %if.end45

lor.lhs.false.exit_error.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.end45:                                         ; preds = %lor.lhs.false
  %mtd_count = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %mtd_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %mtd_count, align 4
  %mul = mul i32 %42, 2176
  %call.i191 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #6
  %mtds = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %mtds to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i191, ptr %mtds, align 4
  %cmp51 = icmp eq ptr %call.i191, null
  br i1 %cmp51, label %if.end45.exit_error.thread_crit_edge, label %for.body.lr.ph

if.end45.exit_error.thread_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

for.body.lr.ph:                                   ; preds = %if.end45
  %cpu_type.i194 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 12
  %sel_reg34.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 6
  %sel_bit35.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %call.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nmtd.0223 = phi ptr [ %call.i191, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %setno.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sets.0219 = phi ptr [ %40, %for.body.lr.ph ], [ %incdec.ptr84, %for.inc.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_nand_probe.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_nand_probe, %do.end74)) #6
          to label %if.then71 [label %do.end74], !srcloc !151

if.then71:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c24xx_nand_probe.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.10, i32 noundef %setno.0221, ptr noundef %nmtd.0223, ptr noundef nonnull %call.i) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %for.body
  %parent = getelementptr inbounds %struct.mtd_info, ptr %nmtd.0223, i32 0, i32 56, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %parent, align 8
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device, align 4
  %of_node.i192 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %of_node.i192 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node.i192, align 8
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %of_node3.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.0219, i32 0, i32 7
  %52 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node3.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nmtd.0223, i32 0, i32 56, i32 27
  %54 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nmtd.0223, i32 0, i32 13
  %55 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.end74.nand_set_flash_node.exit.i_crit_edge

do.end74.nand_set_flash_node.exit.i_crit_edge:    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %nand_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.56, ptr noundef %name.i.i.i) #6
  br label %nand_set_flash_node.exit.i

nand_set_flash_node.exit.i:                       ; preds = %if.then.i.i.i, %do.end74.nand_set_flash_node.exit.i_crit_edge
  %legacy.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5
  %write_buf.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 5
  %57 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @s3c2410_nand_write_buf, ptr %write_buf.i, align 4
  %read_buf.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 6
  %58 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @s3c2410_nand_read_buf, ptr %read_buf.i, align 8
  %select_chip.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %select_chip.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @s3c2410_nand_select_chip, ptr %select_chip.i, align 8
  %chip_delay.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 15
  %60 = ptrtoint ptr %chip_delay.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 50, ptr %chip_delay.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 34
  %61 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %nmtd.0223, ptr %priv1.i.i, align 8
  %options.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.0219, i32 0, i32 1
  %62 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %options.i, align 4
  %options7.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 6
  %64 = ptrtoint ptr %options7.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %options7.i, align 8
  %controller8.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 32
  %65 = ptrtoint ptr %controller8.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %controller8.i, align 4
  %tobool.not.i193 = icmp eq ptr %49, null
  br i1 %tobool.not.i193, label %if.then.i, label %nand_set_flash_node.exit.i.if.end.i195_crit_edge

nand_set_flash_node.exit.i.if.end.i195_crit_edge: ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i195

if.then.i:                                        ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %63, 8388608
  %66 = ptrtoint ptr %options7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i, ptr %options7.i, align 8
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i, %nand_set_flash_node.exit.i.if.end.i195_crit_edge
  %67 = ptrtoint ptr %cpu_type.i194 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu_type.i194, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %if.end.i195.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb14.i
    i32 1, label %sw.bb29.i
  ]

if.end.i195.sw.epilog.i_crit_edge:                ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %51, i32 12
  %IO_ADDR_W.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %IO_ADDR_W.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i, ptr %IO_ADDR_W.i, align 4
  %71 = ptrtoint ptr %sel_reg34.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %51, ptr %sel_reg34.i, align 4
  %72 = ptrtoint ptr %sel_bit35.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2048, ptr %sel_bit35.i, align 4
  %cmd_ctrl.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 7
  %73 = ptrtoint ptr %cmd_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @s3c2410_nand_hwcontrol, ptr %cmd_ctrl.i, align 4
  %dev_ready.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 9
  %74 = ptrtoint ptr %dev_ready.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @s3c2410_nand_devready, ptr %dev_ready.i, align 4
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr15.i = getelementptr i8, ptr %51, i32 16
  %IO_ADDR_W17.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %IO_ADDR_W17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr15.i, ptr %IO_ADDR_W17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %51, i32 4
  %76 = ptrtoint ptr %sel_reg34.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr18.i, ptr %sel_reg34.i, align 4
  %77 = ptrtoint ptr %sel_bit35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %sel_bit35.i, align 4
  %cmd_ctrl22.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 7
  %78 = ptrtoint ptr %cmd_ctrl22.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @s3c2440_nand_hwcontrol, ptr %cmd_ctrl22.i, align 4
  %dev_ready24.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 9
  %79 = ptrtoint ptr %dev_ready24.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @s3c2440_nand_devready, ptr %dev_ready24.i, align 4
  %80 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @s3c2440_nand_read_buf, ptr %read_buf.i, align 8
  %81 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @s3c2440_nand_write_buf, ptr %write_buf.i, align 4
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end.i195
  %add.ptr30.i = getelementptr i8, ptr %51, i32 16
  %IO_ADDR_W32.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %IO_ADDR_W32.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr30.i, ptr %IO_ADDR_W32.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %51, i32 4
  %83 = ptrtoint ptr %sel_reg34.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr33.i, ptr %sel_reg34.i, align 4
  %84 = ptrtoint ptr %sel_bit35.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %sel_bit35.i, align 4
  %cmd_ctrl37.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 7
  %85 = ptrtoint ptr %cmd_ctrl37.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @s3c2440_nand_hwcontrol, ptr %cmd_ctrl37.i, align 4
  %dev_ready39.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 9
  %86 = ptrtoint ptr %dev_ready39.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @s3c2412_nand_devready, ptr %dev_ready39.i, align 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %.mask.i = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool42.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool42.not.i, label %sw.bb29.i.sw.epilog.i_crit_edge, label %do.end.i

sw.bb29.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.54) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb29.i.sw.epilog.i_crit_edge, %sw.bb14.i, %sw.bb.i, %if.end.i195.sw.epilog.i_crit_edge
  %IO_ADDR_W47.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 5, i32 1
  %90 = ptrtoint ptr %IO_ADDR_W47.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %IO_ADDR_W47.i, align 4
  %92 = ptrtoint ptr %legacy.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %legacy.i, align 8
  %info49.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %nmtd.0223, i32 0, i32 2
  %93 = ptrtoint ptr %info49.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %info49.i, align 4
  %set50.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %nmtd.0223, i32 0, i32 1
  %94 = ptrtoint ptr %set50.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %sets.0219, ptr %set50.i, align 8
  %95 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %platform, align 4
  %engine_type.i = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %engine_type.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %engine_type.i, align 4
  %ecc.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 33
  %99 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %ecc.i, align 8
  %100 = ptrtoint ptr %sets.0219 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i = load i8, ptr %sets.0219, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool52.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool52.not.i, label %sw.epilog.i.s3c2410_nand_init_chip.exit_crit_edge, label %if.then53.i

sw.epilog.i.s3c2410_nand_init_chip.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_init_chip.exit

if.then53.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %bbt_options.i = getelementptr inbounds %struct.nand_chip, ptr %nmtd.0223, i32 0, i32 10
  %101 = ptrtoint ptr %bbt_options.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bbt_options.i, align 8
  %or54.i = or i32 %102, 131072
  store i32 %or54.i, ptr %bbt_options.i, align 8
  br label %s3c2410_nand_init_chip.exit

s3c2410_nand_init_chip.exit:                      ; preds = %if.then53.i, %sw.epilog.i.s3c2410_nand_init_chip.exit_crit_edge
  %tobool78.not = icmp eq ptr %sets.0219, null
  br i1 %tobool78.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %s3c2410_nand_init_chip.exit
  %call.i196 = tail call i32 @nand_scan_with_ids(ptr noundef %nmtd.0223, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool80.not = icmp eq i32 %call.i196, 0
  br i1 %tobool80.not, label %cond.end.for.inc_crit_edge, label %cond.end.exit_error.thread_crit_edge

cond.end.exit_error.thread_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.end.thread:                                  ; preds = %s3c2410_nand_init_chip.exit
  %nr_chips = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.0219, i32 0, i32 2
  %103 = ptrtoint ptr %nr_chips to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr_chips, align 4
  %call.i196205 = tail call i32 @nand_scan_with_ids(ptr noundef %nmtd.0223, i32 noundef %104, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196205)
  %tobool80.not206 = icmp eq i32 %call.i196205, 0
  br i1 %tobool80.not206, label %if.then.i199, label %cond.end.thread.exit_error.thread_crit_edge

cond.end.thread.exit_error.thread_crit_edge:      ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.then.i199:                                     ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.0219, i32 0, i32 4
  %105 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name.i, align 4
  %107 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %name.i.i.i, align 8
  %partitions.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.0219, i32 0, i32 6
  %108 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %partitions.i, align 4
  %nr_partitions.i = getelementptr inbounds %struct.s3c2410_nand_set, ptr %sets.0219, i32 0, i32 3
  %110 = ptrtoint ptr %nr_partitions.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_partitions.i, align 4
  %call2.i198 = tail call i32 @mtd_device_parse_register(ptr noundef %nmtd.0223, ptr noundef null, ptr noundef null, ptr noundef %109, i32 noundef %111) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then.i199, %cond.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %setno.0221, 1
  %incdec.ptr = getelementptr %struct.s3c2410_nand_mtd, ptr %nmtd.0223, i32 1
  %incdec.ptr84 = getelementptr %struct.s3c2410_nand_set, ptr %sets.0219, i32 1
  %exitcond.not = icmp eq i32 %inc, %42
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call85 = tail call fastcc i32 @s3c2410_nand_inithw(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.end88, label %for.end.exit_error.thread_crit_edge

for.end.exit_error.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_error.thread

if.end88:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  tail call fastcc void @s3c2410_nand_clk_set_state(ptr noundef nonnull %call.i, i32 noundef 2)
  br label %cleanup109

exit_error.thread:                                ; preds = %for.end.exit_error.thread_crit_edge, %cond.end.thread.exit_error.thread_crit_edge, %cond.end.exit_error.thread_crit_edge, %if.end45.exit_error.thread_crit_edge, %lor.lhs.false.exit_error.thread_crit_edge, %do.end39.exit_error.thread_crit_edge, %devm_kcalloc.exit.i.exit_error.thread_crit_edge, %if.end13.i.exit_error.thread_crit_edge, %if.end.i.exit_error.thread_crit_edge, %if.then10.exit_error.thread_crit_edge, %do.end, %entry.exit_error.thread_crit_edge
  %err.1.ph = phi i32 [ -12, %if.end13.i.exit_error.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.exit_error.thread_crit_edge ], [ -12, %if.end.i.exit_error.thread_crit_edge ], [ -19, %if.then10.exit_error.thread_crit_edge ], [ -12, %if.end45.exit_error.thread_crit_edge ], [ -22, %do.end39.exit_error.thread_crit_edge ], [ -22, %lor.lhs.false.exit_error.thread_crit_edge ], [ -12, %entry.exit_error.thread_crit_edge ], [ %call85, %for.end.exit_error.thread_crit_edge ], [ -2, %do.end ], [ %call.i196, %cond.end.exit_error.thread_crit_edge ], [ %call.i196205, %cond.end.thread.exit_error.thread_crit_edge ]
  %call105216 = tail call i32 @s3c24xx_nand_remove(ptr noundef %pdev)
  br label %cleanup109

exit_error:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %call21 to i32
  %call105 = tail call i32 @s3c24xx_nand_remove(ptr noundef %pdev)
  br label %cleanup109

cleanup109:                                       ; preds = %exit_error, %exit_error.thread, %if.end88
  %retval.0 = phi i32 [ 0, %if.end88 ], [ %err.1.ph, %exit_error.thread ], [ %112, %exit_error ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtds = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtds, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %if.end.if.end44_crit_edge, label %for.cond.preheader

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

for.cond.preheader:                               ; preds = %if.end
  %mtd_count = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mtd_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp461 = icmp sgt i32 %5, 0
  br i1 %cmp461, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.if.end44_crit_edge

for.cond.preheader.if.end44_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %if.end35.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %mtdno.063 = phi i32 [ %inc, %if.end35.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  %ptr.062 = phi ptr [ %incdec.ptr, %if.end35.do.body_crit_edge ], [ %3, %for.cond.preheader.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_nand_remove.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c24xx_nand_remove, %do.end)) #6
          to label %if.then9 [label %do.end], !srcloc !151

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c24xx_nand_remove.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.61, i32 noundef %mtdno.063, ptr noundef %ptr.062) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call12 = tail call i32 @mtd_device_unregister(ptr noundef %ptr.062) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.if.end35_crit_edge, label %do.end29, !prof !154

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 783, i32 noundef 9, ptr noundef null) #6
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %do.end.if.end35_crit_edge
  tail call void @nand_cleanup(ptr noundef %ptr.062) #6
  %inc = add nuw nsw i32 %mtdno.063, 1
  %incdec.ptr = getelementptr %struct.s3c2410_nand_mtd, ptr %ptr.062, i32 1
  %6 = ptrtoint ptr %mtd_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtd_count, align 4
  %cmp4 = icmp slt i32 %inc, %7
  br i1 %cmp4, label %if.end35.do.body_crit_edge, label %if.end35.if.end44_crit_edge

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end44:                                         ; preds = %if.end35.if.end44_crit_edge, %for.cond.preheader.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %clk = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  %clk_state.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1.i = icmp eq i32 %11, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.then46.s3c2410_nand_clk_set_state.exit_crit_edge

if.then46.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.then2.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %s3c2410_nand_clk_set_state.exit

s3c2410_nand_clk_set_state.exit:                  ; preds = %if.then2.i, %if.then46.s3c2410_nand_clk_set_state.exit_crit_edge
  %12 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %clk_state.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %s3c2410_nand_clk_set_state.exit, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_nand_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %pm.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %sel_reg = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sel_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !152
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %save_sel = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %save_sel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %save_sel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %save_sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %save_sel, align 4
  %sel_bit = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %sel_bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sel_bit, align 4
  %or = or i32 %10, %8
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sel_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !157
  %clk_state.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1.i = icmp eq i32 %15, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.then.s3c2410_nand_clk_set_state.exit_crit_edge

if.then.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %s3c2410_nand_clk_set_state.exit

s3c2410_nand_clk_set_state.exit:                  ; preds = %if.then2.i, %if.then.s3c2410_nand_clk_set_state.exit_crit_edge
  %18 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %clk_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %s3c2410_nand_clk_set_state.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_nand_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %clk_state.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.then.s3c2410_nand_clk_set_state.exit_crit_edge, label %if.else.i

if.then.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.else.i:                                        ; preds = %if.then
  %clk8.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk8.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge

if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.end.i.i:                                       ; preds = %if.else.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge, label %if.end11.sink.split.i

if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.end11.sink.split.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %s3c2410_nand_clk_set_state.exit

s3c2410_nand_clk_set_state.exit:                  ; preds = %if.end11.sink.split.i, %if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge, %if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge, %if.then.s3c2410_nand_clk_set_state.exit_crit_edge
  %6 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %clk_state.i, align 4
  %call.i = tail call fastcc i32 @s3c2410_nand_setrate(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %s3c2410_nand_clk_set_state.exit.s3c2410_nand_inithw.exit_crit_edge, label %if.end.i

s3c2410_nand_clk_set_state.exit.s3c2410_nand_inithw.exit_crit_edge: ; preds = %s3c2410_nand_clk_set_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_inithw.exit

if.end.i:                                         ; preds = %s3c2410_nand_clk_set_state.exit
  %cpu_type.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %cpu_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu_type.i, align 4
  %.off.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %do.body.i, label %if.end.i.s3c2410_nand_inithw.exit_crit_edge

if.end.i.s3c2410_nand_inithw.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_inithw.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !157
  br label %s3c2410_nand_inithw.exit

s3c2410_nand_inithw.exit:                         ; preds = %do.body.i, %if.end.i.s3c2410_nand_inithw.exit_crit_edge, %s3c2410_nand_clk_set_state.exit.s3c2410_nand_inithw.exit_crit_edge
  %sel_reg = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sel_reg, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !152
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  %sel_bit = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %sel_bit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sel_bit, align 4
  %neg = xor i32 %16, -1
  %and = and i32 %14, %neg
  %save_sel = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %save_sel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %save_sel, align 4
  %and5 = and i32 %18, %16
  %or = or i32 %and5, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sel_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !157
  %22 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp1.i18 = icmp eq i32 %23, 1
  br i1 %cmp1.i18, label %if.then2.i19, label %s3c2410_nand_inithw.exit.s3c2410_nand_clk_set_state.exit22_crit_edge

s3c2410_nand_inithw.exit.s3c2410_nand_clk_set_state.exit22_crit_edge: ; preds = %s3c2410_nand_inithw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit22

if.then2.i19:                                     ; preds = %s3c2410_nand_inithw.exit
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %s3c2410_nand_clk_set_state.exit22

s3c2410_nand_clk_set_state.exit22:                ; preds = %if.then2.i19, %s3c2410_nand_inithw.exit.s3c2410_nand_clk_set_state.exit22_crit_edge
  %26 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %clk_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %s3c2410_nand_clk_set_state.exit22, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c2410_nand_clk_set_state(ptr nocapture noundef %info, i32 noundef %new_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_state = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 11
  %0 = ptrtoint ptr %clk_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_state)
  %cmp3.not = icmp eq i32 %new_state, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %entry
  br i1 %cmp3.not, label %if.then2.if.end11_crit_edge, label %if.then4

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  br label %if.end11.sink.split

if.else:                                          ; preds = %entry
  br i1 %cmp3.not, label %if.then7, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.else
  %clk8 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %clk8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk8, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i:                                         ; preds = %if.then7
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %if.end.i.if.end11.sink.split_crit_edge

if.end.i.if.end11.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11.sink.split:                              ; preds = %if.end.i.if.end11.sink.split_crit_edge, %if.then4
  %.sink = phi ptr [ %3, %if.then4 ], [ %5, %if.end.i.if.end11.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end.i.if.end11_crit_edge, %if.then7.if.end11_crit_edge, %if.else.if.end11_crit_edge, %if.then2.if.end11_crit_edge
  %6 = ptrtoint ptr %clk_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_state, ptr %clk_state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c2410_nand_inithw(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s3c2410_nand_setrate(ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu_type = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 12
  %0 = ptrtoint ptr %cpu_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu_type, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !157
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %do.end50 [
    i32 1, label %entry.sw.epilog52_crit_edge
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
  ]

entry.sw.epilog52_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog52

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %5 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %algo, align 8
  br label %sw.epilog52

sw.bb8:                                           ; preds = %entry
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %6 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @s3c2410_nand_calculate_ecc, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %7 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @s3c2410_nand_correct_data, ptr %correct, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %8 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %strength, align 4
  %cpu_type = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %cpu_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %switch.lookup, label %sw.bb8.do.body26_crit_edge

sw.bb8.do.body26_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

switch.lookup:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.s3c2410_nand_attach_chip, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep85 = getelementptr inbounds [3 x ptr], ptr @switch.table.s3c2410_nand_attach_chip.62, i32 0, i32 %10
  %13 = ptrtoint ptr %switch.gep85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load86 = load ptr, ptr %switch.gep85, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %14 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %switch.load, ptr %hwctl, align 4
  %15 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %switch.load86, ptr %calculate, align 8
  br label %do.body26

do.body26:                                        ; preds = %switch.lookup, %sw.bb8.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_nand_attach_chip.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_attach_chip, %do.end33)) #6
          to label %if.then [label %do.end33], !srcloc !151

if.then:                                          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %device31 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device31, align 4
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %18 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_shift, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410_nand_attach_chip.__UNIQUE_ID_ddebug219, ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef %chip, i32 noundef %19) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then, %do.body26
  %page_shift34 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %20 = ptrtoint ptr %page_shift34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_shift34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp = icmp ugt i32 %21, 10
  br i1 %cmp, label %do.end33.do.end46_crit_edge, label %if.else

do.end33.do.end46_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

if.else:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %22 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @s3c2410_ooblayout_ops, ptr %ooblayout1.i, align 8
  br label %do.end46

do.end46:                                         ; preds = %if.else, %do.end33.do.end46_crit_edge
  %.sink = phi i32 [ 512, %if.else ], [ 256, %do.end33.do.end46_crit_edge ]
  %23 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %25, align 4
  br label %sw.epilog52

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device51 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %device51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.29) #9
  br label %cleanup

sw.epilog52:                                      ; preds = %do.end46, %sw.bb2, %entry.sw.epilog52_crit_edge
  %.str.26.sink = phi ptr [ @.str.26, %do.end46 ], [ @.str.22, %sw.bb2 ], [ @.str.19, %entry.sw.epilog52_crit_edge ]
  %device47 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %device47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device47, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull %.str.26.sink) #9
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %31 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bbt_options, align 8
  %and = and i32 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %sw.epilog52.cleanup_crit_edge, label %if.then54

sw.epilog52.cleanup_crit_edge:                    ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #8
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %33 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %options, align 8
  %or = or i32 %34, 65536
  store i32 %or, ptr %options, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %sw.epilog52.cleanup_crit_edge, %do.end50
  %retval.0 = phi i32 [ -22, %do.end50 ], [ 0, %if.then54 ], [ 0, %sw.epilog52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410_nand_setup_interface(ptr nocapture noundef readonly %chip, i32 noundef %csline, ptr noundef readonly %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %2, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.i, align 4
  %platform = getelementptr inbounds %struct.s3c2410_nand_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform, align 4
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 14
  %7 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tCLS_min, align 8
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %9 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tWP_min, align 8
  %sub = sub i32 %8, %10
  %11 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %sub6 = add nuw i32 %11, 999
  %div = sdiv i32 %sub6, 1000
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %6, align 4
  %13 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tWP_min, align 8
  %sub10 = add i32 %14, 999
  %div11 = udiv i32 %sub10, 1000
  %twrph0 = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %twrph0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div11, ptr %twrph0, align 4
  %tCLH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 12
  %16 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tCLH_min, align 8
  %sub13 = add i32 %17, 999
  %div14 = udiv i32 %sub13, 1000
  %twrph1 = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %twrph1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div14, ptr %twrph1, align 4
  %call15 = tail call fastcc i32 @s3c2410_nand_setrate(ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410_nand_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr noundef %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %5 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ecc_code, align 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 21
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %arrayidx13 = getelementptr i8, ptr %ecc_code, i32 1
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx13, align 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 22
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %arrayidx22 = getelementptr i8, ptr %ecc_code, i32 2
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx22, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_nand_calculate_ecc.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_calculate_ecc, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c2410_nand_calculate_ecc.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 3, ptr noundef %ecc_code) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410_nand_correct_data(ptr noundef %chip, ptr noundef %dat, ptr noundef %read_ecc, ptr noundef %calc_ecc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_correct_data, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef %chip, ptr noundef %dat, ptr noundef %read_ecc, ptr noundef %calc_ecc) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %read_ecc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_ecc, align 1
  %4 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %calc_ecc, align 1
  %xor192 = xor i8 %5, %3
  %xor = zext i8 %xor192 to i32
  %arrayidx8 = getelementptr i8, ptr %read_ecc, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr i8, ptr %calc_ecc, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %xor12193 = xor i8 %9, %7
  %xor12 = zext i8 %xor12193 to i32
  %arrayidx13 = getelementptr i8, ptr %read_ecc, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr i8, ptr %calc_ecc, i32 2
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  %xor17194 = xor i8 %13, %11
  %xor17 = zext i8 %xor17194 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_correct_data, %do.end35)) #6
          to label %if.then32 [label %do.end35], !srcloc !151

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef %read_ecc, i32 noundef 3, ptr noundef %calc_ecc, i32 noundef %xor, i32 noundef %xor12, i32 noundef %xor17) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor192)
  %cmp = icmp eq i8 %xor192, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor12193)
  %cmp37 = icmp eq i8 %xor12193, 0
  %or.cond = select i1 %cmp, i1 %cmp37, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor17194)
  %cmp40 = icmp eq i8 %xor17194, 0
  %or.cond195 = select i1 %or.cond, i1 %cmp40, i1 false
  br i1 %or.cond195, label %do.end35.cleanup_crit_edge, label %if.end43

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %do.end35
  %14 = ptrtoint ptr %read_ecc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %read_ecc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp46 = icmp eq i8 %15, -1
  br i1 %cmp46, label %land.lhs.true48, label %if.end43.if.end61_crit_edge

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true48:                                  ; preds = %if.end43
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp51 = icmp eq i8 %17, -1
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true48.if.end61_crit_edge

land.lhs.true48.if.end61_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp56 = icmp eq i8 %19, -1
  br i1 %cmp56, label %land.lhs.true58, label %land.lhs.true53.if.end61_crit_edge

land.lhs.true53.if.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %platform = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform, align 4
  %ignore_unset_ecc = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ignore_unset_ecc to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ignore_unset_ecc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool59.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool59.not, label %land.lhs.true58.if.end61_crit_edge, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true58.if.end61_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true58.if.end61_crit_edge, %land.lhs.true53.if.end61_crit_edge, %land.lhs.true48.if.end61_crit_edge, %if.end43.if.end61_crit_edge
  %shr = lshr i32 %xor, 1
  %xor62 = xor i32 %shr, %xor
  %and = and i32 %xor62, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %and)
  %cmp63 = icmp eq i32 %and, 85
  br i1 %cmp63, label %land.lhs.true65, label %if.end61.if.end133_crit_edge

if.end61.if.end133_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

land.lhs.true65:                                  ; preds = %if.end61
  %shr66 = lshr i32 %xor12, 1
  %xor67 = xor i32 %shr66, %xor12
  %and68 = and i32 %xor67, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %and68)
  %cmp69 = icmp eq i32 %and68, 85
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true65.if.end133_crit_edge

land.lhs.true65.if.end133_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %shr72 = lshr i32 %xor17, 1
  %xor73 = xor i32 %shr72, %xor17
  %and74 = and i32 %xor73, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %and74)
  %cmp75 = icmp eq i32 %and74, 85
  br i1 %cmp75, label %if.then77, label %land.lhs.true71.if.end133_crit_edge

land.lhs.true71.if.end133_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then77:                                        ; preds = %land.lhs.true71
  %shr78 = lshr i32 %xor17, 3
  %and79 = and i32 %shr78, 1
  %shr80 = lshr i32 %xor17, 4
  %and81 = and i32 %shr80, 2
  %or = or i32 %and79, %and81
  %shr82 = lshr i32 %xor17, 5
  %and83 = and i32 %shr82, 4
  %or84 = or i32 %or, %and83
  %shl = shl nuw nsw i32 %xor17, 7
  %and85 = and i32 %shl, 256
  %and87 = and i32 %xor12, 128
  %shl89 = shl nuw nsw i32 %xor12, 1
  %and90 = and i32 %shl89, 64
  %shl92 = shl nuw nsw i32 %xor12, 2
  %and93 = and i32 %shl92, 32
  %shl95 = shl nuw nsw i32 %xor12, 3
  %and96 = and i32 %shl95, 16
  %shr98 = lshr i32 %xor, 4
  %and99 = and i32 %shr98, 8
  %shr101 = lshr i32 %xor, 3
  %and102 = and i32 %shr101, 4
  %shr104 = lshr i32 %xor, 2
  %and105 = and i32 %shr104, 2
  %and108 = and i32 %shr, 1
  %or88 = or i32 %and102, %and99
  %or91 = or i32 %or88, %and105
  %or94 = or i32 %or91, %and108
  %or97 = or i32 %or94, %and87
  %or100 = or i32 %or97, %and90
  %or103 = or i32 %or100, %and93
  %or106 = or i32 %or103, %and96
  %or109 = or i32 %or106, %and85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_correct_data, %do.end127)) #6
          to label %if.then124 [label %do.end127], !srcloc !151

if.then124:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug214, ptr noundef %24, ptr noundef nonnull @.str.39, i32 noundef %or84, i32 noundef %or109) #6
  br label %do.end127

do.end127:                                        ; preds = %if.then124, %if.then77
  %shl128 = shl nuw i32 1, %or84
  %arrayidx129 = getelementptr i8, ptr %dat, i32 %or109
  %25 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx129, align 1
  %27 = trunc i32 %shl128 to i8
  %conv132 = xor i8 %26, %27
  store i8 %conv132, ptr %arrayidx129, align 1
  br label %cleanup

if.end133:                                        ; preds = %land.lhs.true71.if.end133_crit_edge, %land.lhs.true65.if.end133_crit_edge, %if.end61.if.end133_crit_edge
  %shl134 = shl nuw nsw i32 %xor12, 8
  %or135 = or i32 %shl134, %xor
  %shl136 = shl nuw nsw i32 %xor17, 16
  %or137 = or i32 %shl136, %or135
  %28 = tail call i32 @llvm.ctpop.i32(i32 %or137), !range !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp139.inv = icmp ugt i32 %28, 1
  %. = select i1 %cmp139.inv, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %do.end127, %land.lhs.true58.cleanup_crit_edge, %do.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end127 ], [ 0, %do.end35.cleanup_crit_edge ], [ 0, %land.lhs.true58.cleanup_crit_edge ], [ %., %if.end133 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_nand_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  %5 = or i32 %4, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !157
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2412_nand_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %5 = or i32 %4, 536870912
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #6, !srcloc !157
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2412_nand_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr noundef %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !152
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %ecc_code, align 1
  %shr = lshr i32 %5, 8
  %conv4 = trunc i32 %shr to i8
  %arrayidx5 = getelementptr i8, ptr %ecc_code, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %5, 16
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr i8, ptr %ecc_code, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %arrayidx8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2412_nand_calculate_ecc.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2412_nand_calculate_ecc, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c2412_nand_calculate_ecc.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.40, i32 noundef 3, ptr noundef %ecc_code) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2440_nand_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %5 = or i32 %4, 268435456
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #6, !srcloc !157
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2440_nand_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !152
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %ecc_code, align 1
  %shr = lshr i32 %5, 8
  %conv4 = trunc i32 %shr to i8
  %arrayidx5 = getelementptr i8, ptr %ecc_code, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %5, 16
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr i8, ptr %ecc_code, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %arrayidx8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2440_nand_calculate_ecc.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2440_nand_calculate_ecc, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %5, 16777215
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c2440_nand_calculate_ecc.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %and) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s3c2410_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s3c2410_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c2410_nand_setrate(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform, align 4
  %cpu_type = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 12
  %2 = ptrtoint ptr %cpu_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 8, i32 4
  %clk = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %clk_rate = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 10
  %6 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %clk_rate, align 4
  %div = udiv i32 %call, 1000
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %mul.i = mul i32 %8, %div
  %sub.i = add i32 %mul.i, 999999
  %div.i = udiv i32 %sub.i, 1000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_setrate, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !151

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.52, i32 noundef %div.i, i32 noundef %div, i32 noundef %8) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %cond)
  %cmp.i = icmp ugt i32 %div.i, %cond
  br i1 %cmp.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %8, i32 noundef %div) #9
  br label %s3c_nand_calc_rate.exit

if.end10.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i)
  %9 = icmp ult i32 %sub.i, 1000000
  %spec.store.select.i = select i1 %9, i32 1, i32 %div.i
  br label %s3c_nand_calc_rate.exit

s3c_nand_calc_rate.exit:                          ; preds = %if.end10.i, %do.end7.i
  %retval.0.i176 = phi i32 [ -1, %do.end7.i ], [ %spec.store.select.i, %if.end10.i ]
  %twrph04 = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %twrph04 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %twrph04, align 4
  %mul.i177 = mul i32 %11, %div
  %sub.i178 = add i32 %mul.i177, 999999
  %div.i179 = udiv i32 %sub.i178, 1000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_setrate, %do.end.i182)) #6
          to label %if.then.i180 [label %do.end.i182], !srcloc !151

if.then.i180:                                     ; preds = %s3c_nand_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.52, i32 noundef %div.i179, i32 noundef %div, i32 noundef %11) #6
  br label %do.end.i182

do.end.i182:                                      ; preds = %if.then.i180, %s3c_nand_calc_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8999999, i32 %sub.i178)
  %cmp.i181 = icmp ugt i32 %sub.i178, 8999999
  br i1 %cmp.i181, label %do.end7.i184, label %if.end10.i186

do.end7.i184:                                     ; preds = %do.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %11, i32 noundef %div) #9
  br label %s3c_nand_calc_rate.exit188

if.end10.i186:                                    ; preds = %do.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i178)
  %12 = icmp ult i32 %sub.i178, 1000000
  %spec.store.select.i185 = select i1 %12, i32 1, i32 %div.i179
  br label %s3c_nand_calc_rate.exit188

s3c_nand_calc_rate.exit188:                       ; preds = %if.end10.i186, %do.end7.i184
  %retval.0.i187 = phi i32 [ -1, %do.end7.i184 ], [ %spec.store.select.i185, %if.end10.i186 ]
  %twrph16 = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %twrph16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %twrph16, align 4
  %mul.i189 = mul i32 %14, %div
  %sub.i190 = add i32 %mul.i189, 999999
  %div.i191 = udiv i32 %sub.i190, 1000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_setrate, %do.end.i194)) #6
          to label %if.then.i192 [label %do.end.i194], !srcloc !151

if.then.i192:                                     ; preds = %s3c_nand_calc_rate.exit188
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.52, i32 noundef %div.i191, i32 noundef %div, i32 noundef %14) #6
  br label %do.end.i194

do.end.i194:                                      ; preds = %if.then.i192, %s3c_nand_calc_rate.exit188
  call void @__sanitizer_cov_trace_const_cmp4(i32 8999999, i32 %sub.i190)
  %cmp.i193 = icmp ugt i32 %sub.i190, 8999999
  br i1 %cmp.i193, label %if.end.thread, label %if.end10.i198

if.end.thread:                                    ; preds = %do.end.i194
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %14, i32 noundef %div) #9
  br label %do.end

if.end10.i198:                                    ; preds = %do.end.i194
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i190)
  %15 = icmp ult i32 %sub.i190, 1000000
  %spec.store.select.i197 = select i1 %15, i32 1, i32 %div.i191
  br label %if.end

if.end:                                           ; preds = %if.end10.i198, %entry.if.end_crit_edge
  %twrph1.0 = phi i32 [ 8, %entry.if.end_crit_edge ], [ %spec.store.select.i197, %if.end10.i198 ]
  %twrph0.0 = phi i32 [ 8, %entry.if.end_crit_edge ], [ %retval.0.i187, %if.end10.i198 ]
  %tacls.0 = phi i32 [ %cond, %entry.if.end_crit_edge ], [ %retval.0.i176, %if.end10.i198 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tacls.0)
  %cmp8 = icmp slt i32 %tacls.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %twrph0.0)
  %cmp9 = icmp slt i32 %twrph0.0, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end.do.end_crit_edge, label %do.end16

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.thread
  %device = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 3
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.44) #9
  br label %cleanup

do.end16:                                         ; preds = %if.end
  %device17 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 3
  %18 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device17, align 4
  %mul = mul nuw i32 %tacls.0, 1000000
  %div18 = udiv i32 %mul, %div
  %mul19 = mul nuw nsw i32 %twrph0.0, 1000000
  %div20 = udiv i32 %mul19, %div
  %mul21 = mul nuw nsw i32 %twrph1.0, 1000000
  %div22 = udiv i32 %mul21, %div
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.47, i32 noundef %tacls.0, i32 noundef %div18, i32 noundef %twrph0.0, i32 noundef %div20, i32 noundef %twrph1.0, i32 noundef %div22) #9
  %20 = ptrtoint ptr %cpu_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu_type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %21, label %do.body43 [
    i32 0, label %sw.bb
    i32 2, label %do.end16.sw.bb30_crit_edge
    i32 1, label %do.end16.sw.bb30_crit_edge211
  ]

do.end16.sw.bb30_crit_edge211:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

do.end16.sw.bb30_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

sw.bb:                                            ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %sub = shl nuw nsw i32 %tacls.0, 8
  %shl = add nsw i32 %sub, -256
  %sub24 = shl nuw nsw i32 %twrph0.0, 4
  %shl25 = add nsw i32 %sub24, -16
  %sub27 = add nsw i32 %twrph1.0, -1
  %or = or i32 %sub27, %shl25
  %or26 = or i32 %or, %shl
  %or29 = or i32 %or26, 32768
  br label %do.body50

sw.bb30:                                          ; preds = %do.end16.sw.bb30_crit_edge, %do.end16.sw.bb30_crit_edge211
  %sub31.neg = mul nsw i32 %cond, -4096
  %sub35 = shl nuw nsw i32 %tacls.0, 12
  %shl36 = add nsw i32 %sub35, -4096
  %sub37 = shl nuw nsw i32 %twrph0.0, 8
  %shl38 = add nsw i32 %sub37, -256
  %sub40 = shl nuw nsw i32 %twrph1.0, 4
  %shl41 = add nsw i32 %sub40, -16
  %or39 = or i32 %shl38, %shl41
  %or42 = or i32 %or39, %shl36
  %notlhs = or i32 %sub31.neg, 2191
  br label %do.body50

do.body43:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/s3c2410.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #6, !srcloc !174
  unreachable

do.body50:                                        ; preds = %sw.bb30, %sw.bb
  %mask.0 = phi i32 [ %notlhs, %sw.bb30 ], [ -888, %sw.bb ]
  %set.0 = phi i32 [ %or42, %sw.bb30 ], [ %or29, %sw.bb ]
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !175
  %and.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then62, label %do.body50.do.end65_crit_edge

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body50.do.end65_crit_edge
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %info, i32 0, i32 5
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !152
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  %and = and i32 %27, %mask.0
  %or69 = or i32 %and, %set.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !157
  br i1 %tobool.not, label %if.then84, label %do.end65.do.body86_crit_edge

do.end65.do.body86_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body86

if.then84:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body86

do.body86:                                        ; preds = %if.then84, %do.end65.do.body86_crit_edge
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !178
  %and.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool94.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool94.not, label %if.then98, label %do.body86.do.end101_crit_edge, !prof !150

do.body86.do.end101_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end101

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body86.do.end101_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #6, !srcloc !179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c2410_nand_setrate.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s3c2410_nand_setrate, %cleanup)) #6
          to label %if.then118 [label %cleanup], !srcloc !151

if.then118:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c2410_nand_setrate.__UNIQUE_ID_ddebug211, ptr noundef %33, ptr noundef nonnull @.str.49, i32 noundef %or69) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %do.end101, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then118 ], [ 0, %do.end101 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_nand_write_buf(ptr nocapture noundef readonly %this, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %IO_ADDR_W, align 4
  tail call void @__raw_writesb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_nand_read_buf(ptr nocapture noundef readonly %this, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 5
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 8
  tail call void @__raw_readsb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_nand_select_chip(ptr nocapture noundef readonly %this, i32 noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %info1 = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chip)
  %cmp.not = icmp eq i32 %chip, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %clk_state.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp eq i32 %5, 1
  br i1 %cmp1.i, label %if.then.s3c2410_nand_clk_set_state.exit_crit_edge, label %if.else.i

if.then.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.else.i:                                        ; preds = %if.then
  %clk8.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %clk8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk8.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge

if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.end.i.i:                                       ; preds = %if.else.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge, label %if.end11.sink.split.i

if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit

if.end11.sink.split.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %s3c2410_nand_clk_set_state.exit

s3c2410_nand_clk_set_state.exit:                  ; preds = %if.end11.sink.split.i, %if.end.i.i.s3c2410_nand_clk_set_state.exit_crit_edge, %if.else.i.s3c2410_nand_clk_set_state.exit_crit_edge, %if.then.s3c2410_nand_clk_set_state.exit_crit_edge
  %8 = ptrtoint ptr %clk_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %clk_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %s3c2410_nand_clk_set_state.exit, %entry.if.end_crit_edge
  %sel_reg = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sel_reg, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !152
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  br i1 %cmp.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %sel_bit = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %sel_bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sel_bit, align 4
  %or = or i32 %14, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sel_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !157
  %clk_state.i61 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %clk_state.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_state.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp1.i62 = icmp eq i32 %19, 1
  br i1 %cmp1.i62, label %if.then2.i63, label %if.then5.s3c2410_nand_clk_set_state.exit66_crit_edge

if.then5.s3c2410_nand_clk_set_state.exit66_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %s3c2410_nand_clk_set_state.exit66

if.then2.i63:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %clk.i = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %s3c2410_nand_clk_set_state.exit66

s3c2410_nand_clk_set_state.exit66:                ; preds = %if.then2.i63, %if.then5.s3c2410_nand_clk_set_state.exit66_crit_edge
  %22 = ptrtoint ptr %clk_state.i61 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %clk_state.i61, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %set = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set, align 8
  %cmp6.not = icmp eq ptr %24, null
  br i1 %cmp6.not, label %if.else.if.end10_crit_edge, label %land.lhs.true

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.else
  %nr_chips = getelementptr inbounds %struct.s3c2410_nand_set, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_chips to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_chips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %chip)
  %cmp8 = icmp slt i32 %26, %chip
  br i1 %cmp8, label %do.end, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.57, i32 noundef %chip) #9
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.else.if.end10_crit_edge
  %platform = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform, align 4
  %cmp11.not = icmp eq ptr %30, null
  br i1 %cmp11.not, label %cleanup.critedge57, label %if.then12

if.then12:                                        ; preds = %if.end10
  %select_chip = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %select_chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %select_chip, align 4
  %cmp14.not = icmp eq ptr %32, null
  br i1 %cmp14.not, label %cleanup.critedge, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %32(ptr noundef %24, i32 noundef %chip) #6
  %sel_bit21.c54 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %sel_bit21.c54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sel_bit21.c54, align 4
  %neg.c55 = xor i32 %34, -1
  %and.c56 = and i32 %12, %neg.c55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.c56)
  %36 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sel_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #6, !srcloc !157
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %sel_bit21.c = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %sel_bit21.c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sel_bit21.c, align 4
  %neg.c = xor i32 %39, -1
  %and.c = and i32 %12, %neg.c
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.c)
  %41 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sel_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !157
  br label %cleanup

cleanup.critedge57:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %sel_bit21.c58 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %sel_bit21.c58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sel_bit21.c58, align 4
  %neg.c59 = xor i32 %44, -1
  %and.c60 = and i32 %12, %neg.c59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %and.c60)
  %46 = ptrtoint ptr %sel_reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sel_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !157
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge57, %cleanup.critedge, %if.then15, %do.end, %s3c2410_nand_clk_set_state.exit66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_nand_hwcontrol(ptr nocapture noundef readonly %chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %and = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %conv6 = trunc i32 %cmd to i8
  %regs7 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs7, align 4
  br i1 %tobool.not, label %do.body3, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv6) #6, !srcloc !182
  br label %cleanup

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr8 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %conv6) #6, !srcloc !182
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410_nand_devready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2440_nand_hwcontrol(ptr nocapture noundef readonly %chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %and = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %conv6 = trunc i32 %cmd to i8
  %regs7 = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs7, align 4
  br i1 %tobool.not, label %do.body3, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv6) #6, !srcloc !182
  br label %cleanup

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr8 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %conv6) #6, !srcloc !182
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2440_nand_devready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2440_nand_read_buf(ptr nocapture noundef readonly %this, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %this, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %shr = ashr i32 %len, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %shr) #6
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body:                                         ; preds = %entry
  %and2 = and i32 %len, -4
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %and2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %7 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %add.ptr3, align 1
  %dec = add i32 %len, 3
  %and4 = and i32 %dec, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %for.body.if.end_crit_edge, label %for.body.1

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.1:                                       ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %add.ptr3, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr7.1 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.1) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %incdec.ptr, align 1
  %dec.1 = add i32 %len, 2
  %and4.1 = and i32 %dec.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1)
  %tobool5.not.1 = icmp eq i32 %and4.1, 0
  br i1 %tobool5.not.1, label %for.body.1.if.end_crit_edge, label %for.body.2

for.body.1.if.end_crit_edge:                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.1 = getelementptr i8, ptr %incdec.ptr, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr7.2 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.2) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %15 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %incdec.ptr.1, align 1
  br label %if.end

if.end:                                           ; preds = %for.body.2, %for.body.1.if.end_crit_edge, %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2440_nand_write_buf(ptr nocapture noundef readonly %this, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %this, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %shr = ashr i32 %len, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %shr) #6
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  %and2 = and i32 %len, -4
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr3, align 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %5) #6, !srcloc !182
  %dec = add i32 %len, 3
  %and4 = and i32 %dec, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.if.end_crit_edge, label %do.body.1

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.1:                                        ; preds = %do.body
  %incdec.ptr = getelementptr i8, ptr %add.ptr3, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr7.1 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.1, i8 %9) #6, !srcloc !182
  %dec.1 = add i32 %len, 2
  %and4.1 = and i32 %dec.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1)
  %tobool5.not.1 = icmp eq i32 %and4.1, 0
  br i1 %tobool5.not.1, label %do.body.1.if.end_crit_edge, label %do.body.2

do.body.1.if.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.2:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.1 = getelementptr i8, ptr %incdec.ptr, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.1, align 1
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr7.2 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.2, i8 %13) #6, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %do.body.2, %do.body.1.if.end_crit_edge, %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2412_nand_devready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.s3c2410_nand_mtd, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %regs = getelementptr inbounds %struct.s3c2410_nand_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_s3c2410__222_1291_s3c24xx_nand_driver_init6, !1, !"__initcall__kmod_s3c2410__222_1291_s3c24xx_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1291, i32 1}
!2 = !{ptr @__exitcall_s3c24xx_nand_driver_exit, !1, !"__exitcall_s3c24xx_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file223, !4, !"__UNIQUE_ID_file223", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1293, i32 1}
!5 = !{ptr @__UNIQUE_ID_license224, !4, !"__UNIQUE_ID_license224", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author225, !7, !"__UNIQUE_ID_author225", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1294, i32 1}
!8 = !{ptr @__UNIQUE_ID_description226, !9, !"__UNIQUE_ID_description226", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1295, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1286, i32 11}
!12 = !{ptr @s3c24xx_nand_driver, !13, !"s3c24xx_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1279, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1107, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1109, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s3c24xx_nand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s3c24xx_nand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1141, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @s3c24xx_nand_probe.__UNIQUE_ID_ddebug220, !25, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1169, i32 3}
!30 = !{ptr @s3c24xx_nand_probe.__UNIQUE_ID_ddebug221, !29, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1189, i32 3}
!34 = !{ptr @s3c24xx_nand_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @s3c24xx_nand_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1194, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @s3c24xx_nand_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @s3c24xx_nand_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @nand_controller_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @s3c24xx_nand_controller_ops, !45, !"s3c24xx_nand_controller_ops", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1001, i32 41}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 936, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @s3c2410_nand_attach_chip._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @s3c2410_nand_attach_chip._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 947, i32 3}
!53 = !{ptr @s3c2410_nand_attach_chip._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @s3c2410_nand_attach_chip._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 972, i32 3}
!57 = !{ptr @s3c2410_nand_attach_chip.__UNIQUE_ID_ddebug219, !56, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 987, i32 3}
!60 = !{ptr @s3c2410_nand_attach_chip._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @s3c2410_nand_attach_chip._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 991, i32 3}
!64 = !{ptr @s3c2410_nand_attach_chip._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @s3c2410_nand_attach_chip._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 629, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @s3c2410_nand_calculate_ecc.__UNIQUE_ID_ddebug215, !67, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!70 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 515, i32 2}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug212, !72, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!75 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 521, i32 2}
!78 = !{ptr @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug213, !77, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!79 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 560, i32 3}
!82 = !{ptr @s3c2410_nand_correct_data.__UNIQUE_ID_ddebug214, !81, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 645, i32 2}
!85 = !{ptr @s3c2412_nand_calculate_ecc.__UNIQUE_ID_ddebug216, !84, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 661, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @s3c2440_nand_calculate_ecc.__UNIQUE_ID_ddebug217, !87, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!90 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @s3c2410_ooblayout_ops, !92, !"s3c2410_ooblayout_ops", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 98, i32 39}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 315, i32 3}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @s3c2410_nand_setrate._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @s3c2410_nand_setrate._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 319, i32 2}
!100 = !{ptr @s3c2410_nand_setrate._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @s3c2410_nand_setrate._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 358, i32 2}
!104 = !{ptr @s3c2410_nand_setrate.__UNIQUE_ID_ddebug211, !103, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 263, i32 2}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @s3c_nand_calc_rate.__UNIQUE_ID_ddebug210, !106, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!109 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 266, i32 3}
!112 = !{ptr @s3c_nand_calc_rate._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @s3c_nand_calc_rate._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 898, i32 4}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @s3c2410_nand_init_chip._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @s3c2410_nand_init_chip._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 424, i32 4}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @s3c2410_nand_select_chip._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @s3c2410_nand_select_chip._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 782, i32 4}
!128 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @s3c24xx_nand_remove.__UNIQUE_ID_ddebug218, !127, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!130 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @s3c24xx_nand_dt_ids, !132, !"s3c24xx_nand_dt_ids", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1006, i32 34}
!133 = !{ptr @s3c2410_nand_devtype_data, !134, !"s3c2410_nand_devtype_data", i1 false, i1 false}
!134 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 179, i32 47}
!135 = !{ptr @s3c2412_nand_devtype_data, !136, !"s3c2412_nand_devtype_data", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 183, i32 47}
!137 = !{ptr @s3c2440_nand_devtype_data, !138, !"s3c2440_nand_devtype_data", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 187, i32 47}
!139 = !{ptr @s3c24xx_driver_ids, !140, !"s3c24xx_driver_ids", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/s3c2410.c", i32 1260, i32 40}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2148984669, i64 2148984674, i64 2148984687, i64 2148984731, i64 2148984765, i64 2148984786}
!152 = !{i64 4067320}
!153 = !{i64 2153432971}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2153454236}
!156 = !{i64 2153454473}
!157 = !{i64 4066902}
!158 = !{i64 2153403761}
!159 = !{i64 2153455195}
!160 = !{i64 2153455405}
!161 = !{i64 4067100}
!162 = !{i64 2153419119}
!163 = !{i64 2153419396}
!164 = !{i64 2153419673}
!165 = !{i32 0, i32 25}
!166 = !{i64 2153416396}
!167 = !{i64 2153416652}
!168 = !{i64 2153417365}
!169 = !{i64 2153417629}
!170 = !{i64 2153422555}
!171 = !{i64 2153418369}
!172 = !{i64 2153418633}
!173 = !{i64 2153425437}
!174 = !{i64 2153397647, i64 2153398142, i64 2153397684, i64 2153397740, i64 2153397774, i64 2153397798, i64 2153397839, i64 2153397860, i64 2153397888, i64 2153397922}
!175 = !{i64 774992, i64 775053}
!176 = !{i64 2153400040}
!177 = !{i64 2153400287}
!178 = !{i64 777724}
!179 = !{i64 778009}
!180 = !{i64 2153404419}
!181 = !{i64 2153406214}
!182 = !{i64 4066705}
!183 = !{i64 2153407886}
!184 = !{i64 2153408162}
!185 = !{i64 2153428204}
!186 = !{i64 2153428589}
!187 = !{i64 2153408438}
