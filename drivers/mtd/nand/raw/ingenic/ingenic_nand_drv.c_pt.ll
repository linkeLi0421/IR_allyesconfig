; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c"
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
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.jz_soc_info = type { i32, i32, i32, ptr, i8 }
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
%struct.ingenic_nfc = type { ptr, ptr, ptr, %struct.nand_controller, i32, %struct.list_head, [0 x %struct.ingenic_nand_cs] }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.ingenic_nand_cs = type { i32, ptr }
%struct.ingenic_nand = type { %struct.nand_chip, %struct.list_head, ptr, ptr, i8 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
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
%struct.nand_op_instr = type { i32, %union.anon.44, i32 }
%union.anon.44 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.45, i8 }
%union.anon.45 = type { ptr }
%struct.ingenic_ecc_params = type { i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_ingenic_nand__198_573_ingenic_nand_driver_init6 = internal global ptr @ingenic_nand_driver_init, section ".initcall6.init", align 4
@ingenic_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_nand_probe, ptr @ingenic_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_nand_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ingenic_nand_driver_exit = internal global ptr @ingenic_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author199 = internal constant [55 x i8] c"ingenic_nand.author=Alex Smith <alex@alex-smith.me.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author200 = internal constant [60 x i8] c"ingenic_nand.author=Harvey Hunt <harveyhuntnexus@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description201 = internal constant [52 x i8] c"ingenic_nand.description=Ingenic JZ47xx NAND driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [60 x i8] c"ingenic_nand.file=drivers/mtd/nand/raw/ingenic/ingenic_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [28 x i8] c"ingenic_nand.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ingenic-nand\00", [19 x i8] zeroinitializer }, align 32
@ingenic_nand_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4780_soc_info }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ingenic_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no banks found\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ingenic_nand_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_nand_probe._entry_ptr = internal global ptr @ingenic_nand_probe._entry, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@ingenic_nand_init_chips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"found %d chips but only %d banks\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ingenic_nand_init_chips\00", [40 x i8] zeroinitializer }, align 32
@ingenic_nand_init_chips._entry_ptr = internal global ptr @ingenic_nand_init_chips._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rb\00", [29 x i8] zeroinitializer }, align 32
@ingenic_nand_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request busy GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ingenic_nand_init_chip\00", [41 x i8] zeroinitializer }, align 32
@ingenic_nand_init_chip._entry_ptr = internal global ptr @ingenic_nand_init_chip._entry, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qi,lb60\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@ingenic_nand_init_chip._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request WP GPIO: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_nand_init_chip._entry_ptr.17 = internal global ptr @ingenic_nand_init_chip._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@ingenic_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @ingenic_nand_attach_chip, ptr null, ptr @ingenic_nand_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HW ECC selected, but ECC controller not found\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ingenic_nand_attach_chip\00", [39 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry_ptr = internal global ptr @ingenic_nand_attach_chip._entry, section ".printk_index", align 4
@ingenic_nand_attach_chip._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 212, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"using %s (strength %d, size %d, bytes %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry_ptr.25 = internal global ptr @ingenic_nand_attach_chip._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hardware ECC\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"software ECC\00", [19 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 215, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not using ECC\0A\00", [17 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry_ptr.30 = internal global ptr @ingenic_nand_attach_chip._entry.28, section ".printk_index", align 4
@ingenic_nand_attach_chip._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ECC mode %d not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry_ptr.33 = internal global ptr @ingenic_nand_attach_chip._entry.31, section ".printk_index", align 4
@ingenic_nand_attach_chip._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"invalid ECC config: required %d ECC bytes, but only %d are available\00", [59 x i8] zeroinitializer }, align 32
@ingenic_nand_attach_chip._entry_ptr.36 = internal global ptr @ingenic_nand_attach_chip._entry.34, section ".printk_index", align 4
@qi_lb60_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @qi_lb60_ooblayout_ecc, ptr @qi_lb60_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jz4740_soc_info = internal constant { %struct.jz_soc_info, [44 x i8] } { %struct.jz_soc_info { i32 0, i32 65536, i32 32768, ptr null, i8 1 }, [44 x i8] zeroinitializer }, align 32
@jz4725b_soc_info = internal constant { %struct.jz_soc_info, [44 x i8] } { %struct.jz_soc_info { i32 0, i32 65536, i32 32768, ptr @jz4725b_ooblayout_ops, i8 0 }, [44 x i8] zeroinitializer }, align 32
@jz4780_soc_info = internal constant { %struct.jz_soc_info, [44 x i8] } { %struct.jz_soc_info { i32 0, i32 8388608, i32 4194304, ptr null, i8 0 }, [44 x i8] zeroinitializer }, align 32
@jz4725b_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @jz4725b_ooblayout_ecc, ptr @jz4725b_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"ingenic_nand_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 565, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 569, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"ingenic_nand_dt_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 557, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 488, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1105, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 460, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 360, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 376, i32 49 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 380, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 392, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 396, i32 47 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 400, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 406, i32 46 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"ingenic_nand_controller_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 340, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 201, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 210, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 215, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 218, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 231, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"qi_lb60_ooblayout_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 102, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"jz4740_soc_info\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 537, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"jz4725b_soc_info\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 544, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"jz4780_soc_info\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 551, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"jz4725b_ooblayout_ops\00", align 1
@___asan_gen_.168 = private constant [51 x i8] c"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 137, i32 39 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_author200, ptr @__UNIQUE_ID_description201, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_ingenic_nand_driver_exit, ptr @__initcall__kmod_ingenic_nand__198_573_ingenic_nand_driver_init6, ptr @ingenic_nand_attach_chip._entry, ptr @ingenic_nand_attach_chip._entry.22, ptr @ingenic_nand_attach_chip._entry.28, ptr @ingenic_nand_attach_chip._entry.31, ptr @ingenic_nand_attach_chip._entry.34, ptr @ingenic_nand_attach_chip._entry_ptr, ptr @ingenic_nand_attach_chip._entry_ptr.25, ptr @ingenic_nand_attach_chip._entry_ptr.30, ptr @ingenic_nand_attach_chip._entry_ptr.33, ptr @ingenic_nand_attach_chip._entry_ptr.36, ptr @ingenic_nand_driver_exit, ptr @ingenic_nand_init_chip._entry, ptr @ingenic_nand_init_chip._entry.15, ptr @ingenic_nand_init_chip._entry_ptr, ptr @ingenic_nand_init_chip._entry_ptr.17, ptr @ingenic_nand_init_chips._entry, ptr @ingenic_nand_init_chips._entry_ptr, ptr @ingenic_nand_probe._entry, ptr @ingenic_nand_probe._entry_ptr, ptr @ingenic_nand_driver, ptr @.str, ptr @ingenic_nand_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nand_controller_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @ingenic_nand_controller_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @qi_lb60_ooblayout_ops, ptr @jz4740_soc_info, ptr @jz4725b_soc_info, ptr @jz4780_soc_info, ptr @jz4725b_ooblayout_ops], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_init_chips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_init_chip._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_attach_chip._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_attach_chip._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_attach_chip._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_nand_attach_chip._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qi_lb60_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_soc_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_soc_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_soc_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_nand_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_nand_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @jz4780_nemc_num_banks(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 8) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 120) #7
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %soc_info = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %soc_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %soc_info, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @of_ingenic_ecc_get(ptr noundef %5) #7
  %ecc = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %ecc, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call.i, align 4
  %num_banks19 = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %num_banks19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %num_banks19, align 4
  %controller = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.6, ptr noundef nonnull @nand_controller_init.__key) #7
  %chips = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %chips, ptr %prev.i, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %13, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end17.if.end.i_crit_edge, label %if.end17.for.body.i.i_crit_edge

if.end17.for.body.i.i_crit_edge:                  ; preds = %if.end17
  br label %for.body.i.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end17.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end17.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end17.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %13, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  %14 = ptrtoint ptr %num_banks19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_banks19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %15)
  %cmp.i55 = icmp ugt i32 %inc.i.i, %15
  br i1 %cmp.i55, label %ingenic_nand_init_chips.exit.thread59, label %of_get_child_count.exit.i.if.end.i_crit_edge

of_get_child_count.exit.i.if.end.i_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

ingenic_nand_init_chips.exit.thread59:            ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %inc.i.i, i32 noundef %15) #10
  br label %if.then22

if.end.i:                                         ; preds = %of_get_child_count.exit.i.if.end.i_crit_edge, %if.end17.if.end.i_crit_edge
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call4.i = tail call ptr @of_get_next_child(ptr noundef %17, ptr noundef null) #7
  %cmp5.not61.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.not61.i, label %if.end.i.if.end28_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %ops.i.i = getelementptr inbounds %struct.ingenic_nfc, ptr %call.i, i32 0, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  %np.062.i = phi ptr [ %call4.i, %for.body.lr.ph.i ], [ %call10.i, %if.end8.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ingenic_nfc, ptr %call.i, i32 0, i32 6, i32 %i.063.i
  %call.i28.i = tail call ptr @of_get_property(ptr noundef nonnull %np.062.i, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool.not.i.i = icmp eq ptr %call.i28.i, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then7.i_crit_edge, label %if.end.i.i

for.body.i.if.then7.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.end.i.i:                                       ; preds = %for.body.i
  %18 = ptrtoint ptr %call.i28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i28.i, align 4
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i.i, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void @jz4780_nemc_set_type(ptr noundef %22, i32 noundef %19, i32 noundef 1) #7
  %call5.i.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %i.063.i) #7
  %base.i.i = getelementptr %struct.ingenic_nfc, ptr %call.i, i32 0, i32 6, i32 %i.063.i, i32 1
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %base.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then8.i.i, label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call5.i.i to i32
  br label %if.then7.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2192, i32 noundef 3520) #7
  %tobool13.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.then7.i_crit_edge, label %if.end15.i.i

if.end11.i.i.if.then7.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %call16.i.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 1) #7
  %busy_gpio.i.i = getelementptr inbounds %struct.ingenic_nand, ptr %call.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %busy_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16.i.i, ptr %busy_gpio.i.i, align 8
  %cmp.i113.i.i = icmp ugt ptr %call16.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i.i, label %if.then19.i.i, label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call16.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %26) #10
  br label %if.then7.i

if.end22.i.i:                                     ; preds = %if.end15.i.i
  %call23.i.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.if.end30.i.i_crit_edge, label %land.lhs.true.i.i

if.end22.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

land.lhs.true.i.i:                                ; preds = %if.end22.i.i
  %27 = ptrtoint ptr %busy_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %busy_gpio.i.i, align 8
  %call26.i.i = tail call i32 @gpiod_is_active_low(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true.i.i.if.end30.i.i_crit_edge, label %if.then28.i.i

land.lhs.true.i.i.if.end30.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %busy_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %busy_gpio.i.i, align 8
  tail call void @gpiod_toggle_active_low(ptr noundef %30) #7
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then28.i.i, %land.lhs.true.i.i.if.end30.i.i_crit_edge, %if.end22.i.i.if.end30.i.i_crit_edge
  %call31.i.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 3) #7
  %wp_gpio.i.i = getelementptr inbounds %struct.ingenic_nand, ptr %call.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %wp_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31.i.i, ptr %wp_gpio.i.i, align 4
  %cmp.i114.i.i = icmp ugt ptr %call31.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114.i.i, label %if.then34.i.i, label %if.end40.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call31.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %32) #10
  br label %if.then7.i

if.end40.i.i:                                     ; preds = %if.end30.i.i
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end40.i.i.dev_name.exit.i.i_crit_edge

if.end40.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end40.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %if.end40.i.i.dev_name.exit.i.i_crit_edge ]
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %call45.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i.i, i32 noundef %38) #7
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i.i, i32 0, i32 13
  %39 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call45.i.i, ptr %name.i.i, align 8
  %tobool47.not.i.i = icmp eq ptr %call45.i.i, null
  br i1 %tobool47.not.i.i, label %dev_name.exit.i.i.if.then7.i_crit_edge, label %nand_set_flash_node.exit.i.i

dev_name.exit.i.i.if.then7.i_crit_edge:           ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

nand_set_flash_node.exit.i.i:                     ; preds = %dev_name.exit.i.i
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i.i, i32 0, i32 56, i32 1
  %40 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev1, ptr %parent.i.i, align 8
  %options.i.i = getelementptr inbounds %struct.nand_chip, ptr %call.i.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %options.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 512, ptr %options.i.i, align 8
  %ecc.i.i = getelementptr inbounds %struct.nand_chip, ptr %call.i.i.i, i32 0, i32 33
  %42 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %ecc.i.i, align 8
  %controller51.i.i = getelementptr inbounds %struct.nand_chip, ptr %call.i.i.i, i32 0, i32 32
  %43 = ptrtoint ptr %controller51.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %controller, ptr %controller51.i.i, align 4
  %of_node.i.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i.i, i32 0, i32 56, i32 27
  %44 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %np.062.i, ptr %of_node.i.i.i.i, align 8
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ingenic_nand_controller_ops, ptr %ops.i.i, align 4
  %call.i115.i.i = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i.i.i, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i.i)
  %tobool54.not.i.i = icmp eq i32 %call.i115.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end56.i.i, label %nand_set_flash_node.exit.i.i.if.then7.i_crit_edge

nand_set_flash_node.exit.i.i.if.then7.i_crit_edge: ; preds = %nand_set_flash_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.end56.i.i:                                     ; preds = %nand_set_flash_node.exit.i.i
  %call57.i.i = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end60.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nand_cleanup(ptr noundef nonnull %call.i.i.i) #7
  br label %if.then7.i

if.end60.i.i:                                     ; preds = %if.end56.i.i
  %chip_list.i.i = getelementptr inbounds %struct.ingenic_nand, ptr %call.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i116.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chip_list.i.i, ptr noundef %47, ptr noundef %chips) #7
  br i1 %call.i.i116.i.i, label %if.end.i.i.i.i, label %if.end60.i.i.if.end8.i_crit_edge

if.end60.i.i.if.end8.i_crit_edge:                 ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end.i.i.i.i:                                   ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %chip_list.i.i, ptr %prev.i, align 4
  %49 = ptrtoint ptr %chip_list.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %chips, ptr %chip_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ingenic_nand, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %chip_list.i.i, ptr %47, align 4
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.then59.i.i, %nand_set_flash_node.exit.i.i.if.then7.i_crit_edge, %dev_name.exit.i.i.if.then7.i_crit_edge, %if.then34.i.i, %if.then19.i.i, %if.end11.i.i.if.then7.i_crit_edge, %if.then8.i.i, %for.body.i.if.then7.i_crit_edge
  %retval.0.i38.i = phi i32 [ %call57.i.i, %if.then59.i.i ], [ %24, %if.then8.i.i ], [ %26, %if.then19.i.i ], [ %32, %if.then34.i.i ], [ -22, %for.body.i.if.then7.i_crit_edge ], [ -12, %if.end11.i.i.if.then7.i_crit_edge ], [ -12, %dev_name.exit.i.i.if.then7.i_crit_edge ], [ %call.i115.i.i, %nand_set_flash_node.exit.i.i.if.then7.i_crit_edge ]
  %52 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %chips, align 4
  %cmp.i.not31.i.i = icmp eq ptr %53, %chips
  br i1 %cmp.i.not31.i.i, label %if.then7.i.ingenic_nand_init_chips.exit_crit_edge, label %if.then7.i.while.body.i.i_crit_edge

if.then7.i.while.body.i.i_crit_edge:              ; preds = %if.then7.i
  br label %while.body.i.i

if.then7.i.ingenic_nand_init_chips.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_nand_init_chips.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %if.then7.i.while.body.i.i_crit_edge
  %54 = phi ptr [ %64, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %53, %if.then7.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 -2168
  %call4.i.i = tail call i32 @mtd_device_unregister(ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %while.body.i.i.if.end.i30.i_crit_edge, label %do.end.i.i, !prof !100

while.body.i.i.if.end.i30.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i30.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 444, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i30.i

if.end.i30.i:                                     ; preds = %do.end.i.i, %while.body.i.i.if.end.i30.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %add.ptr.i.i) #7
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %54) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i31.i, label %if.end.i30.i.list_del.exit.i.i_crit_edge

if.end.i30.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i31.i:                                 ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i31.i, %if.end.i30.i.list_del.exit.i.i_crit_edge
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %54, align 4
  %prev.i.i32.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i32.i, align 4
  %63 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %chips, align 4
  %cmp.i.not.i.i = icmp eq ptr %64, %chips
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.ingenic_nand_init_chips.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

list_del.exit.i.i.ingenic_nand_init_chips.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_nand_init_chips.exit

if.end8.i:                                        ; preds = %if.end.i.i.i.i, %if.end60.i.i.if.end8.i_crit_edge
  %inc.i = add i32 %i.063.i, 1
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %call10.i = tail call ptr @of_get_next_child(ptr noundef %66, ptr noundef nonnull %np.062.i) #7
  %cmp5.not.i = icmp eq ptr %call10.i, null
  br i1 %cmp5.not.i, label %if.end8.i.if.end28_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end8.i.if.end28_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

ingenic_nand_init_chips.exit:                     ; preds = %list_del.exit.i.i.ingenic_nand_init_chips.exit_crit_edge, %if.then7.i.ingenic_nand_init_chips.exit_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %np.062.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i38.i)
  %tobool21.not = icmp eq i32 %retval.0.i38.i, 0
  br i1 %tobool21.not, label %ingenic_nand_init_chips.exit.if.end28_crit_edge, label %ingenic_nand_init_chips.exit.if.then22_crit_edge

ingenic_nand_init_chips.exit.if.then22_crit_edge: ; preds = %ingenic_nand_init_chips.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

ingenic_nand_init_chips.exit.if.end28_crit_edge:  ; preds = %ingenic_nand_init_chips.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %ingenic_nand_init_chips.exit.if.then22_crit_edge, %ingenic_nand_init_chips.exit.thread59
  %retval.0.i5662 = phi i32 [ -22, %ingenic_nand_init_chips.exit.thread59 ], [ %retval.0.i38.i, %ingenic_nand_init_chips.exit.if.then22_crit_edge ]
  %67 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ecc, align 4
  %tobool24.not = icmp eq ptr %68, null
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then25

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ingenic_ecc_release(ptr noundef nonnull %68) #7
  br label %cleanup

if.end28:                                         ; preds = %ingenic_nand_init_chips.exit.if.end28_crit_edge, %if.end8.i.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then25, %if.then22.cleanup_crit_edge, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %7, %if.then14 ], [ 0, %if.end28 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %retval.0.i5662, %if.then25 ], [ %retval.0.i5662, %if.then22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ecc = getelementptr inbounds %struct.ingenic_nfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ecc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ingenic_ecc_release(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chips.i = getelementptr inbounds %struct.ingenic_nfc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chips.i, align 4
  %cmp.i.not31.i = icmp eq ptr %5, %chips.i
  br i1 %cmp.i.not31.i, label %if.end.ingenic_nand_cleanup_chips.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.ingenic_nand_cleanup_chips.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_nand_cleanup_chips.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.i.while.body.i_crit_edge ], [ %5, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -2168
  %call4.i = tail call i32 @mtd_device_unregister(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %while.body.i.if.end.i_crit_edge, label %do.end.i, !prof !100

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 444, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %add.ptr.i) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %chips.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %chips.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.ingenic_nand_cleanup_chips.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

list_del.exit.i.ingenic_nand_cleanup_chips.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ingenic_nand_cleanup_chips.exit

ingenic_nand_cleanup_chips.exit:                  ; preds = %list_del.exit.i.ingenic_nand_cleanup_chips.exit_crit_edge, %if.end.ingenic_nand_cleanup_chips.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jz4780_nemc_num_banks(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_ingenic_ecc_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ingenic_ecc_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jz4780_nemc_set_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_toggle_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_attach_chip(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %mul = mul i32 %5, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %mul, i1 true) #7, !range !101
  %sub.i = sub nuw nsw i32 32, %6
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %div = sdiv i32 %3, 8
  %mul7 = mul i32 %cond.i, %div
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %mul7.sink = phi i32 [ %mul7, %if.else ], [ 9, %entry.if.end_crit_edge ]
  %7 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul7.sink, ptr %7, align 4
  %9 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end37 [
    i32 3, label %sw.bb
    i32 2, label %if.end.do.end20_crit_edge
    i32 1, label %do.end33
  ]

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

sw.bb:                                            ; preds = %if.end
  %ecc11 = getelementptr i8, ptr %1, i32 -8
  %12 = ptrtoint ptr %ecc11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ecc11, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.end, label %if.end13

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %16 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ingenic_nand_ecc_hwctl, ptr %hwctl, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %17 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ingenic_nand_ecc_calculate, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %18 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ingenic_nand_ecc_correct, ptr %correct, align 4
  br label %do.end20

do.end20:                                         ; preds = %if.end13, %if.end.do.end20_crit_edge
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %ecc22 = getelementptr i8, ptr %1, i32 -8
  %21 = ptrtoint ptr %ecc22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ecc22, align 4
  %tobool23.not = icmp eq ptr %22, null
  %cond = select i1 %tobool23.not, ptr @.str.27, ptr @.str.26
  %size27 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %23 = ptrtoint ptr %size27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size27, align 8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, i32 noundef %3, i32 noundef %24, i32 noundef %26) #10
  br label %sw.epilog

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.29) #10
  br label %sw.epilog

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.32, i32 noundef %10) #10
  br label %cleanup

sw.epilog:                                        ; preds = %do.end33, %do.end20
  %31 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp43.not = icmp eq i32 %32, 3
  br i1 %cmp43.not, label %if.end45, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %sw.epilog
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %33 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writesize, align 4
  %size47 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %35 = ptrtoint ptr %size47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size47, align 8
  %div48 = udiv i32 %34, %36
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %7, align 4
  %mul51 = mul i32 %38, %div48
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %39 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oobsize, align 4
  %sub = add i32 %40, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul51, i32 %sub)
  %cmp52 = icmp ugt i32 %mul51, %sub
  br i1 %cmp52, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.35, i32 noundef %mul51, i32 noundef %sub) #10
  br label %cleanup

if.end60:                                         ; preds = %if.end45
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %43 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bbt_options, align 8
  %and = and i32 %44, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.end60.if.end64_crit_edge, label %if.then62

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %44, 262144
  %45 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60.if.end64_crit_edge
  %soc_info = getelementptr i8, ptr %1, i32 -4
  %46 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %soc_info, align 4
  %oob_first = getelementptr inbounds %struct.jz_soc_info, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %oob_first to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %oob_first, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool65.not = icmp eq i8 %49, 0
  br i1 %tobool65.not, label %if.end64.if.end68_crit_edge, label %if.then66

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %50 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @nand_read_page_hwecc_oob_first, ptr %read_page, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end64.if.end68_crit_edge
  %call69 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.else72, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %51 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @qi_lb60_ooblayout_ops, ptr %ooblayout1.i, align 8
  br label %cleanup

if.else72:                                        ; preds = %if.end68
  %52 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %soc_info, align 4
  %oob_layout = getelementptr inbounds %struct.jz_soc_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %oob_layout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %oob_layout, align 4
  %tobool74.not = icmp eq ptr %55, null
  br i1 %tobool74.not, label %if.else78, label %if.then75

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  %ooblayout1.i119 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %56 = ptrtoint ptr %ooblayout1.i119 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %ooblayout1.i119, align 8
  br label %cleanup

if.else78:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call ptr @nand_get_large_page_ooblayout() #7
  %ooblayout1.i120 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %57 = ptrtoint ptr %ooblayout1.i120 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call79, ptr %ooblayout1.i120, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %if.then75, %if.then71, %do.end56, %sw.epilog.cleanup_crit_edge, %do.end37, %do.end
  %retval.0 = phi i32 [ -22, %do.end37 ], [ -22, %do.end56 ], [ -19, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then75 ], [ 0, %if.else78 ], [ 0, %if.then71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_exec_op(ptr noundef %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %arrayidx = getelementptr %struct.ingenic_nfc, ptr %add.ptr.i, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @jz4780_nemc_assert(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #7
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %8 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp46.not = icmp eq i32 %9, 0
  br i1 %cmp46.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %busy_gpio.i = getelementptr inbounds %struct.ingenic_nand, ptr %chip, i32 0, i32 2
  %options33.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %base46.i = getelementptr inbounds %struct.ingenic_nand_cs, ptr %arrayidx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instrs, align 4
  %arrayidx6 = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047
  %12 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller, align 4
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %15, label %for.body.for.end_crit_edge [
    i32 0, label %do.body.i
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb28.i
    i32 4, label %sw.bb55.i
  ]

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.i:                             ; preds = %for.body
  %ctx4.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1
  %17 = ptrtoint ptr %ctx4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp100.not.i = icmp eq i32 %18, 0
  br i1 %cmp100.not.i, label %for.cond.preheader.i.if.end10_crit_edge, label %do.body5.lr.ph.i

for.cond.preheader.i.if.end10_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body5.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 1
  %soc_info10.i = getelementptr i8, ptr %13, i32 -4
  br label %do.body5.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctx.i, align 4
  %21 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base46.i, align 4
  %soc_info.i = getelementptr i8, ptr %13, i32 -4
  %23 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc_info.i, align 4
  %cmd_offset.i = getelementptr inbounds %struct.jz_soc_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_offset.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %22, i32 %26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39, i8 %20) #7, !srcloc !104
  br label %if.end10

do.body5.i:                                       ; preds = %do.body5.i.do.body5.i_crit_edge, %do.body5.lr.ph.i
  %i.0101.i = phi i32 [ 0, %do.body5.lr.ph.i ], [ %inc.i, %do.body5.i.do.body5.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %28, i32 %i.0101.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %31 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base46.i, align 4
  %33 = ptrtoint ptr %soc_info10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc_info10.i, align 4
  %addr_offset.i = getelementptr inbounds %struct.jz_soc_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %addr_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr_offset.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 %36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %30) #7, !srcloc !104
  %inc.i = add nuw i32 %i.0101.i, 1
  %37 = ptrtoint ptr %ctx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctx4.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %do.body5.i.do.body5.i_crit_edge, label %do.body5.i.if.end10_crit_edge

do.body5.i.if.end10_crit_edge:                    ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body5.i.do.body5.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

sw.bb12.i:                                        ; preds = %for.body
  %ctx13.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1
  %force_8bit.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %force_8bit.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb12.i.if.then.i_crit_edge

sw.bb12.i.if.then.i_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb12.i
  %41 = ptrtoint ptr %options33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %options33.i, align 8
  %and.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb12.i.if.then.i_crit_edge
  %43 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base46.i, align 4
  %soc_info16.i = getelementptr i8, ptr %13, i32 -4
  %45 = ptrtoint ptr %soc_info16.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc_info16.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add.ptr17.i = getelementptr i8, ptr %44, i32 %48
  %buf.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf.i, align 4
  %51 = ptrtoint ptr %ctx13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctx13.i, align 4
  tail call void @__raw_readsb(ptr noundef %add.ptr17.i, ptr noundef %50, i32 noundef %52) #7
  br label %if.end10

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base46.i, align 4
  %soc_info21.i = getelementptr i8, ptr %13, i32 -4
  %55 = ptrtoint ptr %soc_info21.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc_info21.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add.ptr23.i = getelementptr i8, ptr %54, i32 %58
  %buf25.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %buf25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf25.i, align 4
  %61 = ptrtoint ptr %ctx13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctx13.i, align 4
  tail call void @__raw_readsw(ptr noundef %add.ptr23.i, ptr noundef %60, i32 noundef %62) #7
  br label %if.end10

sw.bb28.i:                                        ; preds = %for.body
  %ctx29.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1
  %force_8bit30.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %force_8bit30.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %force_8bit30.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool31.not.i = icmp eq i8 %64, 0
  br i1 %tobool31.not.i, label %lor.lhs.false32.i, label %sw.bb28.i.if.then36.i_crit_edge

sw.bb28.i.if.then36.i_crit_edge:                  ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

lor.lhs.false32.i:                                ; preds = %sw.bb28.i
  %65 = ptrtoint ptr %options33.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %options33.i, align 8
  %and34.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false32.i.if.then36.i_crit_edge, label %if.else45.i

lor.lhs.false32.i.if.then36.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false32.i.if.then36.i_crit_edge, %sw.bb28.i.if.then36.i_crit_edge
  %67 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base46.i, align 4
  %soc_info38.i = getelementptr i8, ptr %13, i32 -4
  %69 = ptrtoint ptr %soc_info38.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %soc_info38.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add.ptr40.i = getelementptr i8, ptr %68, i32 %72
  %buf42.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %buf42.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf42.i, align 4
  %75 = ptrtoint ptr %ctx29.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ctx29.i, align 4
  tail call void @__raw_writesb(ptr noundef %add.ptr40.i, ptr noundef %74, i32 noundef %76) #7
  br label %if.end10

if.else45.i:                                      ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %base46.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base46.i, align 4
  %soc_info47.i = getelementptr i8, ptr %13, i32 -4
  %79 = ptrtoint ptr %soc_info47.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soc_info47.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add.ptr49.i = getelementptr i8, ptr %78, i32 %82
  %buf51.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1, i32 0, i32 1
  %83 = ptrtoint ptr %buf51.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf51.i, align 4
  %85 = ptrtoint ptr %ctx29.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ctx29.i, align 4
  tail call void @__raw_writesw(ptr noundef %add.ptr49.i, ptr noundef %84, i32 noundef %86) #7
  br label %if.end10

sw.bb55.i:                                        ; preds = %for.body
  %87 = ptrtoint ptr %busy_gpio.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %busy_gpio.i, align 8
  %tobool56.not.i = icmp eq ptr %88, null
  %ctx58.i = getelementptr %struct.nand_op_instr, ptr %11, i32 %i.047, i32 1
  %89 = ptrtoint ptr %ctx58.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ctx58.i, align 4
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end60.i

if.then57.i:                                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call59.i = tail call i32 @nand_soft_waitrdy(ptr noundef %chip, i32 noundef %90) #7
  br label %ingenic_nand_exec_instr.exit

if.end60.i:                                       ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call64.i = tail call i32 @nand_gpio_waitrdy(ptr noundef %chip, ptr noundef nonnull %88, i32 noundef %90) #7
  br label %ingenic_nand_exec_instr.exit

ingenic_nand_exec_instr.exit:                     ; preds = %if.end60.i, %if.then57.i
  %retval.0.i = phi i32 [ %call64.i, %if.end60.i ], [ %call59.i, %if.then57.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %ingenic_nand_exec_instr.exit.if.end10_crit_edge, label %ingenic_nand_exec_instr.exit.for.end_crit_edge

ingenic_nand_exec_instr.exit.for.end_crit_edge:   ; preds = %ingenic_nand_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ingenic_nand_exec_instr.exit.if.end10_crit_edge:  ; preds = %ingenic_nand_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %ingenic_nand_exec_instr.exit.if.end10_crit_edge, %if.else45.i, %if.then36.i, %if.else.i, %if.then.i, %do.body5.i.if.end10_crit_edge, %do.body.i, %for.cond.preheader.i.if.end10_crit_edge
  %91 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %instrs, align 4
  %delay_ns = getelementptr %struct.nand_op_instr, ptr %92, i32 %i.047, i32 2
  %93 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool13.not = icmp eq i32 %94, 0
  br i1 %tobool13.not, label %if.end10.for.inc_crit_edge, label %cond.false8.i

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cond.false8.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %94, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %div.i) #7
  br label %for.inc

for.inc:                                          ; preds = %cond.false8.i, %if.end10.for.inc_crit_edge
  %inc = add nuw i32 %i.047, 1
  %96 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %97
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ingenic_nand_exec_instr.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ -22, %for.body.for.end_crit_edge ], [ %retval.0.i, %ingenic_nand_exec_instr.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 4
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx, align 4
  tail call void @jz4780_nemc_assert(ptr noundef %99, i32 noundef %101, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ingenic_nand_ecc_hwctl(ptr nocapture noundef %chip, i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %reading = getelementptr inbounds %struct.ingenic_nand, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reading, align 8
  %bf.shl = select i1 %cmp, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %reading, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_ecc_calculate(ptr nocapture noundef readonly %chip, ptr noundef %dat, ptr noundef %ecc_code) #2 align 64 {
entry:
  %params = alloca %struct.ingenic_ecc_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #7
  %reading = getelementptr inbounds %struct.ingenic_nand, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %reading, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %params, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %4, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %11 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strength, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %ecc12 = getelementptr i8, ptr %1, i32 -8
  %14 = ptrtoint ptr %ecc12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ecc12, align 4
  %call13 = call i32 @ingenic_ecc_calculate(ptr noundef %15, ptr noundef nonnull %params, ptr noundef %dat, ptr noundef %ecc_code) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_nand_ecc_correct(ptr nocapture noundef readonly %chip, ptr noundef %dat, ptr noundef %read_ecc, ptr nocapture noundef readnone %calc_ecc) #2 align 64 {
entry:
  %params = alloca %struct.ingenic_ecc_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #7
  %2 = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 2
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %params, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %7 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %2, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %10 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %strength, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  %ecc12 = getelementptr i8, ptr %1, i32 -8
  %13 = ptrtoint ptr %ecc12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ecc12, align 4
  %call13 = call i32 @ingenic_ecc_correct(ptr noundef %14, ptr noundef nonnull %params, ptr noundef %dat, ptr noundef %read_ecc) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #7
  ret i32 %call13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_hwecc_oob_first(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ingenic_ecc_calculate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ingenic_ecc_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qi_lb60_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %3 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qi_lb60_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 4
  %sub = add i32 %1, -12
  %sub2 = sub i32 %sub, %3
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub2, ptr %length, align 4
  %5 = load i32, ptr %total, align 4
  %add = add i32 %5, 12
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jz4780_nemc_assert(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jz4725b_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %3 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jz4725b_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 4
  %sub = add i32 %1, -3
  %sub2 = sub i32 %sub, %3
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub2, ptr %length, align 4
  %5 = load i32, ptr %total, align 4
  %add = add i32 %5, 3
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_ingenic_nand__198_573_ingenic_nand_driver_init6, !1, !"__initcall__kmod_ingenic_nand__198_573_ingenic_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 573, i32 1}
!2 = !{ptr @__exitcall_ingenic_nand_driver_exit, !1, !"__exitcall_ingenic_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author199, !4, !"__UNIQUE_ID_author199", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 575, i32 1}
!5 = !{ptr @__UNIQUE_ID_author200, !6, !"__UNIQUE_ID_author200", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 576, i32 1}
!7 = !{ptr @__UNIQUE_ID_description201, !8, !"__UNIQUE_ID_description201", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 577, i32 1}
!9 = !{ptr @__UNIQUE_ID_file202, !10, !"__UNIQUE_ID_file202", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 578, i32 1}
!11 = !{ptr @__UNIQUE_ID_license203, !10, !"__UNIQUE_ID_license203", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 569, i32 11}
!14 = !{ptr @ingenic_nand_driver, !15, !"ingenic_nand_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 565, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 488, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ingenic_nand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ingenic_nand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @nand_controller_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 460, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ingenic_nand_init_chips._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ingenic_nand_init_chips._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 360, i32 28}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 376, i32 49}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 380, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ingenic_nand_init_chip._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ingenic_nand_init_chip._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 392, i32 31}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 396, i32 47}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 400, i32 3}
!47 = !{ptr @ingenic_nand_init_chip._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ingenic_nand_init_chip._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 406, i32 46}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!53 = !{ptr @ingenic_nand_controller_ops, !54, !"ingenic_nand_controller_ops", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 340, i32 41}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 201, i32 4}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ingenic_nand_attach_chip._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ingenic_nand_attach_chip._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 210, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ingenic_nand_attach_chip._entry.22, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ingenic_nand_attach_chip._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 215, i32 3}
!69 = !{ptr @ingenic_nand_attach_chip._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ingenic_nand_attach_chip._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 218, i32 3}
!73 = !{ptr @ingenic_nand_attach_chip._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ingenic_nand_attach_chip._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 231, i32 3}
!77 = !{ptr @ingenic_nand_attach_chip._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ingenic_nand_attach_chip._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @qi_lb60_ooblayout_ops, !80, !"qi_lb60_ooblayout_ops", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 102, i32 39}
!81 = !{ptr @ingenic_nand_dt_match, !82, !"ingenic_nand_dt_match", i1 false, i1 false}
!82 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 557, i32 34}
!83 = !{ptr @jz4740_soc_info, !84, !"jz4740_soc_info", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 537, i32 33}
!85 = !{ptr @jz4725b_soc_info, !86, !"jz4725b_soc_info", i1 false, i1 false}
!86 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 544, i32 33}
!87 = !{ptr @jz4725b_ooblayout_ops, !88, !"jz4725b_ooblayout_ops", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 137, i32 39}
!89 = !{ptr @jz4780_soc_info, !90, !"jz4780_soc_info", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c", i32 551, i32 33}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i32 0, i32 33}
!102 = !{i8 0, i8 2}
!103 = !{i64 2153223272}
!104 = !{i64 2988644}
!105 = !{i64 2153223617}
