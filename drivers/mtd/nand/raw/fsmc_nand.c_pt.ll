; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/fsmc_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/fsmc_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.fsmc_nand_data = type { %struct.nand_controller, i32, %struct.nand_chip, i32, ptr, i32, ptr, ptr, ptr, %struct.completion, ptr, i32, ptr, ptr, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.90, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.84 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.84 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.90 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.fsmc_nand_timings = type { i8, i8, i8, i8, i8, i8 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.85, i32 }
%union.anon.85 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.86, i8 }
%union.anon.86 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_fsmc_nand__312_1235_fsmc_nand_driver_init6 = internal global ptr @fsmc_nand_driver_init, section ".initcall6.init", align 4
@fsmc_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @fsmc_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.74, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsmc_nand_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsmc_nand_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsmc_nand_driver_exit = internal global ptr @fsmc_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file313 = internal constant [46 x i8] c"fsmc_nand.file=drivers/mtd/nand/raw/fsmc_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [25 x i8] c"fsmc_nand.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [70 x i8] c"fsmc_nand.author=Vipin Kumar <vipin.kumar@st.com>, Ashish Priyadarshi\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [54 x i8] c"fsmc_nand.description=NAND driver for SPEAr Platforms\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_data\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_cmd\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsmc_regs\00", [22 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1071, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to fetch block clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsmc_nand_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/fsmc_nand.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry_ptr = internal global ptr @fsmc_nand_probe._entry, section ".printk_index", align 4
@fsmc_nand_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1092, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"FSMC device partno %03x, manufacturer %02x, revision %02x, config %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry_ptr.12 = internal global ptr @fsmc_nand_probe._entry.9, section ".printk_index", align 4
@fsmc_nand_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1112, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get read dma channel\0A\00", [32 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry_ptr.15 = internal global ptr @fsmc_nand_probe._entry.13, section ".printk_index", align 4
@fsmc_nand_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1118, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to get write dma channel\0A\00", [63 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry_ptr.18 = internal global ptr @fsmc_nand_probe._entry.16, section ".printk_index", align 4
@fsmc_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @fsmc_nand_attach_chip, ptr null, ptr @fsmc_exec_op, ptr @fsmc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 1146, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"FSMC NAND driver registration successful\0A\00", [54 x i8] zeroinitializer }, align 32
@fsmc_nand_probe._entry_ptr.22 = internal global ptr @fsmc_nand_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bank-width\00", [21 x i8] zeroinitializer }, align 32
@fsmc_nand_probe_config_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 878, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid bank-width %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsmc_nand_probe_config_dt\00", [38 x i8] zeroinitializer }, align 32
@fsmc_nand_probe_config_dt._entry_ptr = internal global ptr @fsmc_nand_probe_config_dt._entry, section ".printk_index", align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nand-skip-bbtscan\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timings\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bank\00", [27 x i8] zeroinitializer }, align 32
@fsmc_nand_probe_config_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.6, i32 901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid bank %u\0A\00", [47 x i8] zeroinitializer }, align 32
@fsmc_nand_probe_config_dt._entry_ptr.31 = internal global ptr @fsmc_nand_probe_config_dt._entry.29, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 939, ptr @.str.37, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No oob scheme defined for oobsize %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsmc_nand_attach_chip\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry_ptr = internal global ptr @fsmc_nand_attach_chip._entry, section ".printk_index", align 4
@fsmc_ecc4_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @fsmc_ecc4_ooblayout_ecc, ptr @fsmc_ecc4_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.6, i32 950, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using 1-bit HW ECC scheme\0A\00", [37 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry_ptr.40 = internal global ptr @fsmc_nand_attach_chip._entry.38, section ".printk_index", align 4
@fsmc_nand_attach_chip._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.6, i32 962, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using 4-bit SW BCH ECC scheme\0A\00", [33 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry_ptr.43 = internal global ptr @fsmc_nand_attach_chip._entry.41, section ".printk_index", align 4
@fsmc_nand_attach_chip._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.6, i32 971, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported ECC mode!\0A\00", [41 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry_ptr.46 = internal global ptr @fsmc_nand_attach_chip._entry.44, section ".printk_index", align 4
@fsmc_ecc1_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @fsmc_ecc1_ooblayout_ecc, ptr @fsmc_ecc1_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 990, ptr @.str.37, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@fsmc_nand_attach_chip._entry_ptr.48 = internal global ptr @fsmc_nand_attach_chip._entry.47, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fsmc_read_hwecc_ecc4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 406, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"calculate ecc timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsmc_read_hwecc_ecc4\00", [43 x i8] zeroinitializer }, align 32
@fsmc_read_hwecc_ecc4._entry_ptr = internal global ptr @fsmc_read_hwecc_ecc4._entry, section ".printk_index", align 4
@fsmc_exec_op.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.6, ptr @.str.53, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsmc_nand\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsmc_exec_op\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Executing operation [%d instructions]:\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.57, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_op_trace\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sCMD      [0x%02x]\0A\00", [43 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.58, i8 1, i8 3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sADDR     [%d cyc: %*ph]\0A\00", [37 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.59, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sDATA_IN  [%d B%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", force 8-bit\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nand_op_trace.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.62, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sDATA_OUT [%d B%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.63, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%sWAITRDY  [max %d ms]\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 518, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device_prep_dma_memcpy error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_xfer\00", [23 x i8] zeroinitializer }, align 32
@dma_xfer._entry_ptr = internal global ptr @dma_xfer._entry, section ".printk_index", align 4
@dma_xfer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.6, i32 529, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_submit_error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dma_xfer._entry_ptr.68 = internal global ptr @dma_xfer._entry.66, section ".printk_index", align 4
@dma_xfer._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.6, i32 540, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wait_for_completion_timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@dma_xfer._entry_ptr.71 = internal global ptr @dma_xfer._entry.69, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsmc-nand\00", [22 x i8] zeroinitializer }, align 32
@fsmc_nand_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-fsmc-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,fsmc-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@fsmc_nand_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsmc_nand_suspend, ptr @fsmc_nand_resume, ptr @fsmc_nand_suspend, ptr @fsmc_nand_resume, ptr @fsmc_nand_suspend, ptr @fsmc_nand_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 64, i64 128, i64 224, i64 256]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 64, i64 128]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"fsmc_nand_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1226, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1044, i32 59 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1051, i32 59 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1056, i32 59 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1061, i32 59 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1071, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1089, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1112, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1118, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"fsmc_nand_controller_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 998, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1140, i32 14 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1146, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 874, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 878, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 883, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 892, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 899, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 901, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 87, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 464, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1105, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 937, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"fsmc_ecc4_ooblayout_ops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 246, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 950, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 961, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 971, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"fsmc_ecc1_ooblayout_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 199, i32 39 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 988, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 406, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 642, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 647, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1030, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1034, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1041, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1047, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1053, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 518, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 529, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 540, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 326, i32 6 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1229, i32 11 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"fsmc_nand_id_table\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1219, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"fsmc_nand_pm_ops\00", align 1
@___asan_gen_.309 = private constant [36 x i8] c"../drivers/mtd/nand/raw/fsmc_nand.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1217, i32 8 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_fsmc_nand_driver_exit, ptr @__initcall__kmod_fsmc_nand__312_1235_fsmc_nand_driver_init6, ptr @dma_xfer._entry, ptr @dma_xfer._entry.66, ptr @dma_xfer._entry.69, ptr @dma_xfer._entry_ptr, ptr @dma_xfer._entry_ptr.68, ptr @dma_xfer._entry_ptr.71, ptr @fsmc_nand_attach_chip._entry, ptr @fsmc_nand_attach_chip._entry.38, ptr @fsmc_nand_attach_chip._entry.41, ptr @fsmc_nand_attach_chip._entry.44, ptr @fsmc_nand_attach_chip._entry.47, ptr @fsmc_nand_attach_chip._entry_ptr, ptr @fsmc_nand_attach_chip._entry_ptr.40, ptr @fsmc_nand_attach_chip._entry_ptr.43, ptr @fsmc_nand_attach_chip._entry_ptr.46, ptr @fsmc_nand_attach_chip._entry_ptr.48, ptr @fsmc_nand_driver_exit, ptr @fsmc_nand_probe._entry, ptr @fsmc_nand_probe._entry.13, ptr @fsmc_nand_probe._entry.16, ptr @fsmc_nand_probe._entry.20, ptr @fsmc_nand_probe._entry.9, ptr @fsmc_nand_probe._entry_ptr, ptr @fsmc_nand_probe._entry_ptr.12, ptr @fsmc_nand_probe._entry_ptr.15, ptr @fsmc_nand_probe._entry_ptr.18, ptr @fsmc_nand_probe._entry_ptr.22, ptr @fsmc_nand_probe_config_dt._entry, ptr @fsmc_nand_probe_config_dt._entry.29, ptr @fsmc_nand_probe_config_dt._entry_ptr, ptr @fsmc_nand_probe_config_dt._entry_ptr.31, ptr @fsmc_read_hwecc_ecc4._entry, ptr @fsmc_read_hwecc_ecc4._entry_ptr, ptr @fsmc_nand_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @fsmc_nand_controller_ops, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @init_completion.__key, ptr @.str.32, ptr @.str.33, ptr @nand_controller_init.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @fsmc_ecc4_ooblayout_ops, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @fsmc_ecc1_ooblayout_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @fsmc_nand_id_table, ptr @fsmc_nand_pm_ops], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe_config_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_probe_config_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_ecc4_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_attach_chip._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_attach_chip._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_attach_chip._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_ecc1_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_attach_chip._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_read_hwecc_ecc4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_xfer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_xfer._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsmc_nand_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @fsmc_nand_driver, ptr noundef nonnull @fsmc_nand_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsmc_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsmc_nand_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_nand_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %val.i = alloca i32, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !162
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2376, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nand1 = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !162
  %options.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %options.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end7.i_crit_edge

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end.i [
    i32 2, label %if.then1.i
    i32 1, label %if.then.i.if.end7.i_crit_edge
  ]

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options.i, align 8
  %or.i = or i32 %9, 2
  store i32 %or.i, ptr %options.i, align 8
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %6) #12
  br label %fsmc_nand_probe_config_dt.exit.thread

if.end7.i:                                        ; preds = %if.then1.i, %if.then.i.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %call8.i = call ptr @of_get_property(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef null) #9
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then10.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options.i, align 8
  %or12.i = or i32 %11, 65536
  store i32 %or12.i, ptr %options.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6, i32 noundef 3520) #9
  %dev_timings.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %dev_timings.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %dev_timings.i, align 8
  %tobool17.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not.i, label %if.end13.i.fsmc_nand_probe_config_dt.exit.thread_crit_edge, label %if.end19.i

if.end13.i.fsmc_nand_probe_config_dt.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsmc_nand_probe_config_dt.exit.thread

if.end19.i:                                       ; preds = %if.end13.i
  %call.i54.i = call i32 @of_property_read_variable_u8_array(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %call.i.i, i32 noundef 6, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i54.i)
  %tobool22.not.i = icmp sgt i32 %call.i54.i, -1
  br i1 %tobool22.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then23.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev_timings.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dev_timings.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end25.i_crit_edge
  %bank.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bank.i, align 8
  %call.i.i55.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i55.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i55.i, -1
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end25.i.if.end5_crit_edge

if.end25.i.if.end5_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then28.i:                                      ; preds = %if.end25.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp29.i = icmp ugt i32 %16, 3
  br i1 %cmp29.i, label %do.end33.i, label %if.end35.i

do.end33.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %16) #12
  br label %fsmc_nand_probe_config_dt.exit.thread

if.end35.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bank.i, align 8
  br label %if.end5

fsmc_nand_probe_config_dt.exit.thread:            ; preds = %do.end33.i, %if.end13.i.fsmc_nand_probe_config_dt.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end13.i.fsmc_nand_probe_config_dt.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end33.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end35.i, %if.end25.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %call6 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str) #9
  %call8 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #9
  %data_va = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 12
  %18 = ptrtoint ptr %data_va to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8, ptr %data_va, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %20 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call6, align 4
  %data_pa = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %data_pa to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data_pa, align 4
  %call15 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #9
  %call17 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call15) #9
  %addr_va = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 14
  %23 = ptrtoint ptr %addr_va to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call17, ptr %addr_va, align 8
  %cmp.i235 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call24 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %call26 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call24) #9
  %cmd_va = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 13
  %25 = ptrtoint ptr %cmd_va to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call26, ptr %cmd_va, align 4
  %cmp.i236 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %call33 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #9
  %call35 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call33) #9
  %cmp.i237 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %add.ptr = getelementptr i8, ptr %call35, i32 64
  %28 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bank.i, align 8
  %mul = shl i32 %29, 5
  %add.ptr40 = getelementptr i8, ptr %add.ptr, i32 %mul
  %regs_va = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %regs_va to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr40, ptr %regs_va, align 4
  %call42 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call42, ptr %clk, align 4
  %cmp.i238 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %do.end, label %if.end49

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %call51 = call fastcc i32 @clk_prepare_enable(ptr noundef %call42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond.preheader, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end49
  %end.i = getelementptr inbounds %struct.resource, ptr %call33, i32 0, i32 1
  %add.ptr56 = getelementptr i8, ptr %call35, i32 -32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0246 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %pid.0245 = phi i32 [ 0, %for.cond.preheader ], [ %or, %for.body.for.body_crit_edge ]
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end.i, align 4
  %37 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call33, align 4
  %sub.i = add i32 %36, 1
  %add.i = sub i32 %sub.i, %38
  %add.ptr57 = getelementptr i8, ptr %add.ptr56, i32 %add.i
  %mul58 = shl i32 %i.0246, 2
  %add.ptr59 = getelementptr i8, ptr %add.ptr57, i32 %mul58
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #9, !srcloc !163
  %40 = lshr i32 %39, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  %mul62 = shl i32 %i.0246, 3
  %shl = shl i32 %40, %mul62
  %or = or i32 %shl, %pid.0245
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %pid63 = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %pid63 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %pid63, align 8
  %and68 = and i32 %or, 4095
  %shr = lshr i32 %or, 12
  %and69 = and i32 %shr, 255
  %shr70 = lshr i32 %or, 20
  %and71 = and i32 %shr70, 15
  %shr72 = lshr i32 %or, 24
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %and68, i32 noundef %and69, i32 noundef %and71, i32 noundef %shr72) #12
  %dev75 = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %dev75 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %dev75, align 4
  %mode = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp76 = icmp eq i32 %44, 1
  br i1 %cmp76, label %if.then77, label %for.end.if.end78_crit_edge

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dma_access_complete = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 9
  %45 = ptrtoint ptr %dma_access_complete to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %dma_access_complete, align 4
  %wait.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %for.end.if.end78_crit_edge
  %46 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 56, i32 27
  %48 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 13
  %49 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end78.nand_set_flash_node.exit_crit_edge

if.end78.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i239 = call i32 @of_property_read_string(ptr noundef %47, ptr noundef nonnull @.str.33, ptr noundef %name.i.i) #9
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end78.nand_set_flash_node.exit_crit_edge
  %parent = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 56, i32 1
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev, ptr %parent, align 8
  %badblockbits = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2, i32 12
  %52 = ptrtoint ptr %badblockbits to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 7, ptr %badblockbits, align 8
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp85 = icmp eq i32 %54, 1
  br i1 %cmp85, label %if.then86, label %nand_set_flash_node.exit.if.end105_crit_edge

nand_set_flash_node.exit.if.end105_crit_edge:     ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then86:                                        ; preds = %nand_set_flash_node.exit
  %55 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask) #9
  %call87 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef null, ptr noundef null) #9
  %read_dma_chan = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %read_dma_chan to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call87, ptr %read_dma_chan, align 8
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %disable_clk

if.end95:                                         ; preds = %if.then86
  %call96 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef null, ptr noundef null) #9
  %write_dma_chan = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 8
  %57 = ptrtoint ptr %write_dma_chan to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call96, ptr %write_dma_chan, align 4
  %tobool98.not = icmp eq ptr %call96, null
  br i1 %tobool98.not, label %do.end102, label %if.end95.if.end105_crit_edge

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

do.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %release_dma_read_chan

if.end105:                                        ; preds = %if.end95.if.end105_crit_edge, %nand_set_flash_node.exit.if.end105_crit_edge
  %58 = ptrtoint ptr %dev_timings.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_timings.i, align 8
  %tobool106.not = icmp eq ptr %59, null
  br i1 %tobool106.not, label %if.end105.if.end110_crit_edge, label %if.then107

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @fsmc_nand_setup(ptr noundef nonnull %call.i, ptr noundef nonnull %59)
  %60 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %options.i, align 8
  %or109 = or i32 %61, 8388608
  store i32 %or109, ptr %options.i, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end105.if.end110_crit_edge
  call void @__mutex_init(ptr noundef %call.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @nand_controller_init.__key) #9
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @fsmc_nand_controller_ops, ptr %ops, align 4
  %controller = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 2, i32 32
  %63 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %controller, align 4
  %call.i240 = call i32 @nand_scan_with_ids(ptr noundef %nand1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool115.not = icmp eq i32 %call.i240, 0
  br i1 %tobool115.not, label %if.end117, label %if.end110.release_dma_write_chan_crit_edge

if.end110.release_dma_write_chan_crit_edge:       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_dma_write_chan

if.end117:                                        ; preds = %if.end110
  %64 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.19, ptr %name.i.i, align 8
  %call118 = call i32 @mtd_device_parse_register(ptr noundef %nand1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %cleanup_nand

if.end121:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  call void @nand_cleanup(ptr noundef %nand1) #9
  br label %release_dma_write_chan

release_dma_write_chan:                           ; preds = %cleanup_nand, %if.end110.release_dma_write_chan_crit_edge
  %ret.0 = phi i32 [ %call.i240, %if.end110.release_dma_write_chan_crit_edge ], [ %call118, %cleanup_nand ]
  %66 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp127 = icmp eq i32 %67, 1
  br i1 %cmp127, label %if.then128, label %release_dma_write_chan.disable_clk_crit_edge

release_dma_write_chan.disable_clk_crit_edge:     ; preds = %release_dma_write_chan
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_clk

if.then128:                                       ; preds = %release_dma_write_chan
  call void @__sanitizer_cov_trace_pc() #11
  %write_dma_chan129 = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 8
  %68 = ptrtoint ptr %write_dma_chan129 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_dma_chan129, align 4
  call void @dma_release_channel(ptr noundef %69) #9
  br label %release_dma_read_chan

release_dma_read_chan:                            ; preds = %if.then128, %do.end102
  %ret.1.ph = phi i32 [ -19, %do.end102 ], [ %ret.0, %if.then128 ]
  %70 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp132 = icmp eq i32 %.pr, 1
  br i1 %cmp132, label %if.then133, label %release_dma_read_chan.disable_clk_crit_edge

release_dma_read_chan.disable_clk_crit_edge:      ; preds = %release_dma_read_chan
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_clk

if.then133:                                       ; preds = %release_dma_read_chan
  call void @__sanitizer_cov_trace_pc() #11
  %read_dma_chan134 = getelementptr inbounds %struct.fsmc_nand_data, ptr %call.i, i32 0, i32 7
  %71 = ptrtoint ptr %read_dma_chan134 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read_dma_chan134, align 8
  call void @dma_release_channel(ptr noundef %72) #9
  br label %disable_clk

disable_clk:                                      ; preds = %if.then133, %release_dma_read_chan.disable_clk_crit_edge, %release_dma_write_chan.disable_clk_crit_edge, %do.end93
  %ret.2 = phi i32 [ %ret.1.ph, %if.then133 ], [ %ret.1.ph, %release_dma_read_chan.disable_clk_crit_edge ], [ -19, %do.end93 ], [ %ret.0, %release_dma_write_chan.disable_clk_crit_edge ]
  call fastcc void @fsmc_nand_disable(ptr noundef nonnull %call.i)
  %73 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %74) #9
  call void @clk_unprepare(ptr noundef %74) #9
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end121, %if.end49.cleanup_crit_edge, %do.end, %if.then37, %if.then29, %if.then20, %if.then11, %fsmc_nand_probe_config_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then11 ], [ %24, %if.then20 ], [ %26, %if.then29 ], [ %27, %if.then37 ], [ %34, %do.end ], [ %ret.2, %disable_clk ], [ 0, %if.end121 ], [ -12, %entry.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ], [ %retval.0.i.ph, %fsmc_nand_probe_config_dt.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @filter(ptr nocapture noundef writeonly %chan, ptr noundef %slave) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %slave, ptr %private, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsmc_nand_setup(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %tims) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tims to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tims, align 1
  %tar2 = getelementptr inbounds %struct.fsmc_nand_timings, ptr %tims, i32 0, i32 1
  %2 = ptrtoint ptr %tar2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tar2, align 1
  %thiz6 = getelementptr inbounds %struct.fsmc_nand_timings, ptr %tims, i32 0, i32 2
  %4 = ptrtoint ptr %thiz6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %thiz6, align 1
  %thold10 = getelementptr inbounds %struct.fsmc_nand_timings, ptr %tims, i32 0, i32 3
  %6 = ptrtoint ptr %thold10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %thold10, align 1
  %twait14 = getelementptr inbounds %struct.fsmc_nand_timings, ptr %tims, i32 0, i32 4
  %8 = ptrtoint ptr %twait14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %twait14, align 1
  %tset18 = getelementptr inbounds %struct.fsmc_nand_timings, ptr %tims, i32 0, i32 5
  %10 = ptrtoint ptr %tset18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tset18, align 1
  %options = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %options, align 8
  %and22 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %spec.select = select i1 %tobool.not, i32 14, i32 30
  %conv19 = zext i8 %11 to i32
  %conv15 = zext i8 %9 to i32
  %shl17 = shl nuw nsw i32 %conv15, 8
  %conv11 = zext i8 %7 to i32
  %shl13 = shl nuw nsw i32 %conv11, 16
  %conv7 = zext i8 %5 to i32
  %shl9 = shl nuw i32 %conv7, 24
  %14 = and i8 %3, 15
  %and4 = zext i8 %14 to i32
  %shl5 = shl nuw nsw i32 %and4, 13
  %15 = and i8 %1, 15
  %and = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %and, 9
  %or23 = or i32 %spec.select, %shl
  %or24 = or i32 %or23, %shl5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or24)
  %regs_va = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 15
  %17 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_va, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !165
  %or25 = or i32 %shl13, %shl9
  %or26 = or i32 %or25, %shl17
  %or27 = or i32 %or26, %conv19
  %19 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %20 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs_va, align 4
  %add.ptr29 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %19) #9, !srcloc !165
  %22 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_va, align 4
  %add.ptr34 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %19) #9, !srcloc !165
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsmc_nand_disable(ptr nocapture noundef readonly %host) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_va = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 15
  %0 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_va, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_va, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !165
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_nand_attach_chip(ptr nocapture noundef %nand) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %ecc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %size, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %pid = getelementptr i8, ptr %nand, i32 -8
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %8 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.not = icmp eq i32 %8, 0
  br i1 %cmp9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 18
  %9 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fsmc_read_page_hwecc, ptr %read_page, align 8
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 14
  %10 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fsmc_read_hwecc_ecc4, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 15
  %11 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fsmc_bch8_correct_data, ptr %correct, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 13, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %13 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %strength, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end8.if.end16_crit_edge
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %16 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20.not = icmp eq i32 %16, 0
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end16
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %17 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobsize, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %18, label %do.end [
    i32 16, label %if.then21.sw.epilog_crit_edge
    i32 64, label %if.then21.sw.epilog_crit_edge103
    i32 128, label %if.then21.sw.epilog_crit_edge104
    i32 224, label %if.then21.sw.epilog_crit_edge105
    i32 256, label %if.then21.sw.epilog_crit_edge106
  ]

if.then21.sw.epilog_crit_edge106:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then21.sw.epilog_crit_edge105:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then21.sw.epilog_crit_edge104:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then21.sw.epilog_crit_edge103:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then21.sw.epilog_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %nand, i32 2172
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.35, i32 noundef %18) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.then21.sw.epilog_crit_edge, %if.then21.sw.epilog_crit_edge103, %if.then21.sw.epilog_crit_edge104, %if.then21.sw.epilog_crit_edge105, %if.then21.sw.epilog_crit_edge106
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %22 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fsmc_ecc4_ooblayout_ops, ptr %ooblayout1.i, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ecc, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %24, label %do.end53 [
    i32 3, label %do.end29
    i32 2, label %sw.bb41
    i32 4, label %if.end23.cleanup_crit_edge
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr i8, ptr %nand, i32 2172
  %26 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.39) #12
  %calculate32 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 14
  %28 = ptrtoint ptr %calculate32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @fsmc_read_hwecc_ecc1, ptr %calculate32, align 8
  %correct34 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 15
  %29 = ptrtoint ptr %correct34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @fsmc_correct_ecc1, ptr %correct34, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 13
  %30 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fsmc_enable_hwecc, ptr %hwctl, align 4
  %bytes37 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %31 = ptrtoint ptr %bytes37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %bytes37, align 4
  %strength39 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %32 = ptrtoint ptr %strength39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %strength39, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 10
  %33 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %options, align 8
  %or = or i32 %34, 4
  store i32 %or, ptr %options, align 8
  br label %sw.epilog55

sw.bb41:                                          ; preds = %if.end23
  %algo = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 2
  %35 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %algo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp43 = icmp eq i32 %36, 2
  br i1 %cmp43, label %do.end47, label %sw.bb41.cleanup_crit_edge

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end47:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  %dev48 = getelementptr i8, ptr %nand, i32 2172
  %37 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.42) #12
  br label %sw.epilog55

do.end53:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dev54 = getelementptr i8, ptr %nand, i32 2172
  %39 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.45) #12
  br label %cleanup

sw.epilog55:                                      ; preds = %do.end47, %do.end29
  %41 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp58 = icmp eq i32 %.pr, 3
  br i1 %cmp58, label %if.then59, label %sw.epilog55.cleanup_crit_edge

sw.epilog55.cleanup_crit_edge:                    ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %sw.epilog55
  %oobsize60 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %42 = ptrtoint ptr %oobsize60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %oobsize60, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %43, label %do.end65 [
    i32 16, label %if.then59.sw.bb61_crit_edge
    i32 64, label %if.then59.sw.bb61_crit_edge107
    i32 128, label %if.then59.sw.bb61_crit_edge108
  ]

if.then59.sw.bb61_crit_edge108:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb61

if.then59.sw.bb61_crit_edge107:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb61

if.then59.sw.bb61_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb61

sw.bb61:                                          ; preds = %if.then59.sw.bb61_crit_edge, %if.then59.sw.bb61_crit_edge107, %if.then59.sw.bb61_crit_edge108
  %ooblayout1.i101 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %45 = ptrtoint ptr %ooblayout1.i101 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @fsmc_ecc1_ooblayout_ops, ptr %ooblayout1.i101, align 8
  br label %cleanup

do.end65:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr i8, ptr %nand, i32 2172
  %46 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev66, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.35, i32 noundef %43) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %sw.bb61, %sw.epilog55.cleanup_crit_edge, %do.end53, %sw.bb41.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ -524, %do.end53 ], [ -22, %do.end65 ], [ 0, %sw.bb61 ], [ 0, %sw.epilog55.cleanup_crit_edge ], [ 0, %sw.bb41.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_exec_op(ptr noundef %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -104
  br i1 %check_only, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsmc_exec_op.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsmc_exec_op, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !168

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %0 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ninstrs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsmc_exec_op.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.53, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %ninstrs8 = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %2 = ptrtoint ptr %ninstrs8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ninstrs8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp101.not = icmp eq i32 %3, 0
  br i1 %cmp101.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %mode27 = getelementptr i8, ptr %chip, i32 2176
  %data_va8.i84 = getelementptr i8, ptr %chip, i32 2256
  %addr_va = getelementptr i8, ptr %chip, i32 2264
  %cmd_va = getelementptr i8, ptr %chip, i32 2260
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %for.body.lr.ph
  %op_id.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc48, %for.inc47.for.body_crit_edge ]
  %ret.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc47.for.body_crit_edge ]
  %4 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103
  tail call fastcc void @nand_op_trace(ptr noundef %arrayidx)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %7, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.cond10.preheader
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 4, label %sw.bb40
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond10.preheader:                             ; preds = %for.body
  %ctx11 = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103, i32 1
  %9 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1299.not = icmp eq i32 %10, 0
  br i1 %cmp1299.not, label %for.cond10.preheader.sw.epilog_crit_edge, label %for.body13.lr.ph

for.cond10.preheader.sw.epilog_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx11, i32 0, i32 1
  br label %for.body13

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ctx = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103, i32 1
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx, align 4
  %13 = ptrtoint ptr %cmd_va to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_va, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #9, !srcloc !169
  br label %sw.epilog

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.0100 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc, %for.body13.for.body13_crit_edge ]
  %15 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addrs, align 4
  %arrayidx15 = getelementptr i8, ptr %16, i32 %i.0100
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %19 = ptrtoint ptr %addr_va to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr_va, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #9, !srcloc !169
  %inc = add nuw i32 %i.0100, 1
  %21 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctx11, align 4
  %cmp12 = icmp ult i32 %inc, %22
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.sw.epilog_crit_edge

for.body13.sw.epilog_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

sw.bb16:                                          ; preds = %for.body
  %23 = ptrtoint ptr %mode27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp17 = icmp eq i32 %24, 1
  %ctx19 = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103, i32 1
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx19, i32 0, i32 1
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %ctx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctx19, align 4
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dma_xfer(ptr noundef %add.ptr.i, ptr noundef %26, i32 noundef %28, i32 noundef 2) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb16
  %29 = ptrtoint ptr %26 to i32
  %30 = or i32 %28, %29
  %31 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.then.i, label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp527.i = icmp sgt i32 %28, 0
  br i1 %cmp527.i, label %for.cond4.preheader.i.for.body6.i_crit_edge, label %for.cond4.preheader.i.sw.epilog_crit_edge

for.cond4.preheader.i.sw.epilog_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp329.i = icmp sgt i32 %28, 3
  br i1 %cmp329.i, label %for.body.lr.ph.i, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %shr33.i = lshr i32 %28, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %data_va8.i84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data_va8.i84, align 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !163
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %arrayidx.i = getelementptr i32, ptr %26, i32 %i.030.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond32.not.i = icmp eq i32 %inc.i, %shr33.i
  br i1 %exitcond32.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %i.128.i = phi i32 [ %inc13.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %38 = ptrtoint ptr %data_va8.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data_va8.i84, align 8
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %39) #9, !srcloc !170
  %arrayidx11.i = getelementptr i8, ptr %26, i32 %i.128.i
  %41 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx11.i, align 1
  %inc13.i = add nuw nsw i32 %i.128.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, %28
  br i1 %exitcond.not.i, label %for.body6.i.sw.epilog_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i

for.body6.i.sw.epilog_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.body
  %42 = ptrtoint ptr %mode27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp28 = icmp eq i32 %43, 1
  %ctx30 = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103, i32 1
  %buf31 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx30, i32 0, i32 1
  %44 = ptrtoint ptr %buf31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf31, align 4
  %46 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctx30, align 4
  br i1 %cmp28, label %if.then29, label %if.else34

if.then29:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dma_xfer(ptr noundef %add.ptr.i, ptr noundef %45, i32 noundef %47, i32 noundef 1) #9
  br label %sw.epilog

if.else34:                                        ; preds = %sw.bb26
  %48 = ptrtoint ptr %45 to i32
  %49 = or i32 %47, %48
  %50 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %if.then.i86, label %for.cond4.preheader.i83

for.cond4.preheader.i83:                          ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp524.i = icmp sgt i32 %47, 0
  br i1 %cmp524.i, label %for.cond4.preheader.i83.for.body6.i93_crit_edge, label %for.cond4.preheader.i83.sw.epilog_crit_edge

for.cond4.preheader.i83.sw.epilog_crit_edge:      ; preds = %for.cond4.preheader.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond4.preheader.i83.for.body6.i93_crit_edge:  ; preds = %for.cond4.preheader.i83
  br label %for.body6.i93

if.then.i86:                                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp326.i = icmp sgt i32 %47, 3
  br i1 %cmp326.i, label %for.body.lr.ph.i88, label %if.then.i86.sw.epilog_crit_edge

if.then.i86.sw.epilog_crit_edge:                  ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i88:                               ; preds = %if.then.i86
  %shr30.i = lshr i32 %47, 2
  br label %for.body.i91

for.body.i91:                                     ; preds = %for.body.i91.for.body.i91_crit_edge, %for.body.lr.ph.i88
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i88 ], [ %inc.i90, %for.body.i91.for.body.i91_crit_edge ]
  %arrayidx.i89 = getelementptr i32, ptr %45, i32 %i.027.i
  %52 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i89, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %55 = ptrtoint ptr %data_va8.i84 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data_va8.i84, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !165
  %inc.i90 = add nuw nsw i32 %i.027.i, 1
  %exitcond29.not.i = icmp eq i32 %inc.i90, %shr30.i
  br i1 %exitcond29.not.i, label %for.body.i91.sw.epilog_crit_edge, label %for.body.i91.for.body.i91_crit_edge

for.body.i91.for.body.i91_crit_edge:              ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i91

for.body.i91.sw.epilog_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body6.i93:                                    ; preds = %for.body6.i93.for.body6.i93_crit_edge, %for.cond4.preheader.i83.for.body6.i93_crit_edge
  %i.125.i = phi i32 [ %inc10.i, %for.body6.i93.for.body6.i93_crit_edge ], [ 0, %for.cond4.preheader.i83.for.body6.i93_crit_edge ]
  %arrayidx7.i = getelementptr i8, ptr %45, i32 %i.125.i
  %57 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx7.i, align 1
  %59 = ptrtoint ptr %data_va8.i84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data_va8.i84, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %60, i8 %58) #9, !srcloc !169
  %inc10.i = add nuw nsw i32 %i.125.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc10.i, %47
  br i1 %exitcond.not.i92, label %for.body6.i93.sw.epilog_crit_edge, label %for.body6.i93.for.body6.i93_crit_edge

for.body6.i93.for.body6.i93_crit_edge:            ; preds = %for.body6.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i93

for.body6.i93.sw.epilog_crit_edge:                ; preds = %for.body6.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ctx41 = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103, i32 1
  %61 = ptrtoint ptr %ctx41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctx41, align 4
  %call42 = tail call i32 @nand_soft_waitrdy(ptr noundef %chip, i32 noundef %62) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %for.body6.i93.sw.epilog_crit_edge, %for.body.i91.sw.epilog_crit_edge, %if.then.i86.sw.epilog_crit_edge, %for.cond4.preheader.i83.sw.epilog_crit_edge, %if.then29, %for.body6.i.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %for.cond4.preheader.i.sw.epilog_crit_edge, %if.then18, %for.body13.sw.epilog_crit_edge, %sw.bb, %for.cond10.preheader.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.0102, %for.body.sw.epilog_crit_edge ], [ %call42, %sw.bb40 ], [ %ret.0102, %if.then29 ], [ %ret.0102, %if.then18 ], [ %ret.0102, %sw.bb ], [ %ret.0102, %for.cond4.preheader.i.sw.epilog_crit_edge ], [ %ret.0102, %if.then.i.sw.epilog_crit_edge ], [ %ret.0102, %for.cond4.preheader.i83.sw.epilog_crit_edge ], [ %ret.0102, %if.then.i86.sw.epilog_crit_edge ], [ %ret.0102, %for.cond10.preheader.sw.epilog_crit_edge ], [ %ret.0102, %for.body13.sw.epilog_crit_edge ], [ %ret.0102, %for.body.i.sw.epilog_crit_edge ], [ %ret.0102, %for.body6.i.sw.epilog_crit_edge ], [ %ret.0102, %for.body.i91.sw.epilog_crit_edge ], [ %ret.0102, %for.body6.i93.sw.epilog_crit_edge ]
  %delay_ns = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0103, i32 2
  %63 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool43.not = icmp eq i32 %64, 0
  br i1 %tobool43.not, label %sw.epilog.for.inc47_crit_edge, label %cond.false8.i

sw.epilog.for.inc47_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

cond.false8.i:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %64, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %div.i) #9
  br label %for.inc47

for.inc47:                                        ; preds = %cond.false8.i, %sw.epilog.for.inc47_crit_edge
  %inc48 = add nuw i32 %op_id.0103, 1
  %66 = ptrtoint ptr %ninstrs8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ninstrs8, align 4
  %cmp = icmp ult i32 %inc48, %67
  br i1 %cmp, label %for.inc47.for.body_crit_edge, label %for.inc47.cleanup_crit_edge

for.inc47.cleanup_crit_edge:                      ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc47.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %ret.1, %for.inc47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_setup_interface(ptr nocapture noundef readonly %nand, i32 noundef %csline, ptr noundef %conf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %2, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk.i = getelementptr i8, ptr %nand, i32 2180
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #9
  %tRC_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %6 = ptrtoint ptr %tRC_min.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tRC_min.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %7)
  %cmp.i16 = icmp ult i32 %7, 30000
  br i1 %cmp.i16, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 1000000000, %call.i
  %add.i = add nsw i32 %div.i, -1
  %tRP_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %8 = ptrtoint ptr %tRP_min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tRP_min.i, align 4
  %tWP_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %10 = ptrtoint ptr %tWP_min.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tWP_min.i, align 8
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11) #9
  %tCEA_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 8
  %13 = ptrtoint ptr %tCEA_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tCEA_max.i, align 8
  %sub109.i = add i32 %14, 12000
  %mul.i = mul i32 %div.i, -1000
  %tCS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 16
  %15 = ptrtoint ptr %tCS_min.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tCS_min.i, align 8
  %sub24.i = sub i32 %16, %11
  %tREA_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %17 = ptrtoint ptr %tREA_max.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tREA_max.i, align 4
  %sub79.i = sub i32 %14, %18
  %19 = tail call i32 @llvm.umax.i32(i32 %sub24.i, i32 %sub79.i) #9
  %div82.i = udiv i32 %19, 1000
  %sub84.i = add nsw i32 %div82.i, %add.i
  %div85.i = udiv i32 %sub84.i, %div.i
  %20 = trunc i32 %div85.i to i8
  %conv87.i = add i8 %20, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv87.i)
  %cmp91.i = icmp eq i8 %conv87.i, 0
  %spec.store.select.i = select i1 %cmp91.i, i8 1, i8 %conv87.i
  %conv106.i = zext i8 %spec.store.select.i to i32
  %add107.i = add nuw nsw i32 %conv106.i, 1
  %mul108.neg.i = mul i32 %mul.i, %add107.i
  %add111.i = add i32 %sub109.i, %mul108.neg.i
  %21 = tail call i32 @llvm.umax.i32(i32 %12, i32 %add111.i) #9
  %div127.i = udiv i32 %21, 1000
  %sub129.i = add nsw i32 %div127.i, %add.i
  %div130.i = udiv i32 %sub129.i, %div.i
  %22 = trunc i32 %div130.i to i8
  %conv132.i = add i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv132.i)
  %cmp136.i = icmp eq i8 %conv132.i, 0
  %spec.store.select231.i = select i1 %cmp136.i, i8 1, i8 %conv132.i
  %tDH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 17
  %23 = ptrtoint ptr %tDH_min.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tDH_min.i, align 4
  %tCH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 10
  %25 = ptrtoint ptr %tCH_min.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tCH_min.i, align 8
  %27 = tail call i32 @llvm.umax.i32(i32 %24, i32 %26) #9
  %tCLH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 12
  %28 = ptrtoint ptr %tCLH_min.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tCLH_min.i, align 8
  %30 = tail call i32 @llvm.umax.i32(i32 %27, i32 %29) #9
  %tWH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %31 = ptrtoint ptr %tWH_min.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tWH_min.i, align 8
  %33 = tail call i32 @llvm.umax.i32(i32 %30, i32 %32) #9
  %tALH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 4
  %34 = ptrtoint ptr %tALH_min.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tALH_min.i, align 8
  %36 = tail call i32 @llvm.umax.i32(i32 %33, i32 %35) #9
  %tREH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %37 = ptrtoint ptr %tREH_min.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tREH_min.i, align 8
  %39 = tail call i32 @llvm.umax.i32(i32 %36, i32 %38) #9
  %div56.i = udiv i32 %39, 1000
  %sub58.i = add nsw i32 %div56.i, %add.i
  %div59.i = udiv i32 %sub58.i, %div.i
  %conv63.i = and i32 %div59.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv63.i)
  %cmp64.i = icmp eq i32 %conv63.i, 0
  %div25.i = udiv i32 %sub24.i, 1000
  %sub27.i = add nsw i32 %div25.i, %add.i
  %div28.i = udiv i32 %sub27.i, %div.i
  %tCLR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 13
  %40 = ptrtoint ptr %tCLR_min.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tCLR_min.i, align 4
  %div11.i = udiv i32 %41, 1000
  %sub13.i = add nsw i32 %div11.i, %add.i
  %div14.i = udiv i32 %sub13.i, %div.i
  %42 = trunc i32 %div14.i to i8
  %conv16.i = add i8 %42, -1
  %43 = tail call i8 @llvm.umin.i8(i8 %conv16.i, i8 15) #9
  %tAR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 7
  %44 = ptrtoint ptr %tAR_min.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tAR_min.i, align 4
  %div1.i = udiv i32 %45, 1000
  %sub.i = add nsw i32 %div1.i, %add.i
  %div2.i = udiv i32 %sub.i, %div.i
  %46 = trunc i32 %div2.i to i8
  %conv.i = add i8 %46, -1
  %47 = tail call i8 @llvm.umin.i8(i8 %conv.i, i8 15) #9
  %options.i = getelementptr i8, ptr %nand, i32 1856
  %48 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %options.i, align 8
  %and22.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i = icmp eq i32 %and22.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 14, i32 30
  %conv15.i = zext i8 %spec.store.select231.i to i32
  %shl17.i = shl nuw nsw i32 %conv15.i, 8
  %50 = shl i32 %div59.i, 16
  %.op = and i32 %50, 16711680
  %shl13.i = select i1 %cmp64.i, i32 65536, i32 %.op
  %conv7.i = shl i32 %div28.i, 24
  %and4.i = zext i8 %47 to i32
  %shl5.i = shl nuw nsw i32 %and4.i, 13
  %and.i = zext i8 %43 to i32
  %shl.i = shl nuw nsw i32 %and.i, 9
  %or23.i = or i32 %spec.select.i, %shl.i
  %or24.i = or i32 %or23.i, %shl5.i
  %51 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #9
  %regs_va.i = getelementptr i8, ptr %nand, i32 2268
  %52 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs_va.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #9, !srcloc !165
  %or25.i = or i32 %shl13.i, %conv7.i
  %or26.i = or i32 %or25.i, %shl17.i
  %or27.i = or i32 %or26.i, %conv106.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %or27.i) #9
  %55 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs_va.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %54) #9, !srcloc !165
  %57 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs_va.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %54) #9, !srcloc !165
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end8 ], [ 0, %if.end6.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_read_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #7 align 64 {
entry:
  %ecc_oob = alloca [7 x i16], align 2
  %oobregion = alloca %struct.mtd_oob_region, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steps, align 4
  %calc_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 11
  %6 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %calc_buf, align 4
  %code_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 12
  %8 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %code_buf, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %ecc_oob) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp116 = icmp sgt i32 %5, 0
  %10 = call ptr @memset(ptr %ecc_oob, i32 255, i32 14)
  br i1 %cmp116, label %for.body.lr.ph, label %entry.cleanup43_crit_edge

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

for.body.lr.ph:                                   ; preds = %entry
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9113 = icmp sgt i32 %3, 0
  %11 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %ecc_stats34 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %add40, %for.inc.for.body_crit_edge ]
  %max_bitflips.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %for.inc.for.body_crit_edge ]
  %group.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %group.1.lcssa, %for.inc.for.body_crit_edge ]
  %p.0118 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr41, %for.inc.for.body_crit_edge ]
  %s.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %s.0117, %1
  %call5 = call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %mul, ptr noundef null, i32 noundef 0) #9
  %12 = ptrtoint ptr %hwctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwctl, align 4
  call void %13(ptr noundef %chip, i32 noundef 0) #9
  %call7 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %p.0118, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.cond8.preheader, label %for.body.cleanup43_crit_edge

for.body.cleanup43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

for.cond8.preheader:                              ; preds = %for.body
  br i1 %cmp9113, label %for.cond8.preheader.for.body10_crit_edge, label %for.cond8.preheader.for.end_crit_edge

for.cond8.preheader.for.end_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.body10:                                       ; preds = %cleanup.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %group.1115 = phi i32 [ %inc, %cleanup.for.body10_crit_edge ], [ %group.0119, %for.cond8.preheader.for.body10_crit_edge ]
  %j.0114 = phi i32 [ %add20, %cleanup.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #9
  %14 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %oobregion, align 4, !annotation !162
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %11, align 4, !annotation !162
  %call11 = call i32 @mtd_ooblayout_ecc(ptr noundef %chip, i32 noundef %group.1115, ptr noundef nonnull %oobregion) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #9
  br label %cleanup43

cleanup:                                          ; preds = %for.body10
  %inc = add i32 %group.1115, 1
  %16 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oobregion, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  %20 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options, align 8
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %add = add i32 %19, 1
  %div = sdiv i32 %add, 2
  %mul17 = shl nsw i32 %div, 1
  %len.0 = select i1 %tobool15.not, i32 %19, i32 %mul17
  %add.ptr = getelementptr i8, ptr %ecc_oob, i32 %j.0114
  %call19 = call i32 @nand_read_oob_op(ptr noundef %chip, i32 noundef %page, i32 noundef %17, ptr noundef %add.ptr, i32 noundef %len.0) #9
  %add20 = add i32 %len.0, %j.0114
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #9
  %cmp9 = icmp slt i32 %add20, %3
  br i1 %cmp9, label %cleanup.for.body10_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body10_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond8.preheader.for.end_crit_edge
  %group.1.lcssa = phi i32 [ %group.0119, %for.cond8.preheader.for.end_crit_edge ], [ %inc, %cleanup.for.end_crit_edge ]
  %arrayidx21 = getelementptr i8, ptr %9, i32 %i.0121
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes, align 4
  %24 = call ptr @memcpy(ptr %arrayidx21, ptr %ecc_oob, i32 %23)
  %25 = ptrtoint ptr %calculate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %calculate, align 8
  %arrayidx25 = getelementptr i8, ptr %7, i32 %i.0121
  %call26 = call i32 %26(ptr noundef %chip, ptr noundef %p.0118, ptr noundef %arrayidx25) #9
  %27 = ptrtoint ptr %correct to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %correct, align 4
  %call30 = call i32 %28(ptr noundef %chip, ptr noundef %p.0118, ptr noundef %arrayidx21, ptr noundef %arrayidx25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %failed, align 4
  %inc33 = add i32 %30, 1
  store i32 %inc33, ptr %failed, align 4
  br label %for.inc

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %ecc_stats34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_stats34, align 4
  %add35 = add i32 %32, %call30
  store i32 %add35, ptr %ecc_stats34, align 4
  %33 = call i32 @llvm.umax.i32(i32 %max_bitflips.0120, i32 %call30)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then32
  %max_bitflips.1 = phi i32 [ %max_bitflips.0120, %if.then32 ], [ %33, %if.else ]
  %inc39 = add nuw nsw i32 %s.0117, 1
  %add40 = add i32 %i.0121, %3
  %add.ptr41 = getelementptr i8, ptr %p.0118, i32 %1
  %exitcond.not = icmp eq i32 %inc39, %5
  br i1 %exitcond.not, label %for.inc.cleanup43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc.cleanup43_crit_edge, %cleanup.thread, %for.body.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.3 = phi i32 [ %call11, %cleanup.thread ], [ 0, %entry.cleanup43_crit_edge ], [ %call7, %for.body.cleanup43_crit_edge ], [ %max_bitflips.1, %for.inc.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %ecc_oob) #9
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_read_hwecc_ecc4(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %ecc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %regs_va = getelementptr i8, ptr %chip, i32 2268
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs_va, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !163
  %4 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %do.body
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 402, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %5, %add
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub4 = sub i32 %6, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4)
  %cmp5 = icmp sgt i32 %sub4, -1
  br i1 %cmp5, label %do.end9, label %if.end10

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %chip, i32 2172
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs_va, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !163
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %ecc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %ecc, align 1
  %shr = lshr i32 %12, 8
  %conv16 = trunc i32 %shr to i8
  %arrayidx17 = getelementptr i8, ptr %ecc, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16, ptr %arrayidx17, align 1
  %shr18 = lshr i32 %12, 16
  %conv19 = trunc i32 %shr18 to i8
  %arrayidx20 = getelementptr i8, ptr %ecc, i32 2
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv19, ptr %arrayidx20, align 1
  %shr21 = lshr i32 %12, 24
  %conv22 = trunc i32 %shr21 to i8
  %arrayidx23 = getelementptr i8, ptr %ecc, i32 3
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv22, ptr %arrayidx23, align 1
  %17 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_va, align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !163
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %conv29 = trunc i32 %20 to i8
  %arrayidx30 = getelementptr i8, ptr %ecc, i32 4
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv29, ptr %arrayidx30, align 1
  %shr31 = lshr i32 %20, 8
  %conv32 = trunc i32 %shr31 to i8
  %arrayidx33 = getelementptr i8, ptr %ecc, i32 5
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv32, ptr %arrayidx33, align 1
  %shr34 = lshr i32 %20, 16
  %conv35 = trunc i32 %shr34 to i8
  %arrayidx36 = getelementptr i8, ptr %ecc, i32 6
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv35, ptr %arrayidx36, align 1
  %shr37 = lshr i32 %20, 24
  %conv38 = trunc i32 %shr37 to i8
  %arrayidx39 = getelementptr i8, ptr %ecc, i32 7
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv38, ptr %arrayidx39, align 1
  %25 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs_va, align 4
  %add.ptr42 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !163
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %conv45 = trunc i32 %28 to i8
  %arrayidx46 = getelementptr i8, ptr %ecc, i32 8
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv45, ptr %arrayidx46, align 1
  %shr47 = lshr i32 %28, 8
  %conv48 = trunc i32 %shr47 to i8
  %arrayidx49 = getelementptr i8, ptr %ecc, i32 9
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv48, ptr %arrayidx49, align 1
  %shr50 = lshr i32 %28, 16
  %conv51 = trunc i32 %shr50 to i8
  %arrayidx52 = getelementptr i8, ptr %ecc, i32 10
  %31 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv51, ptr %arrayidx52, align 1
  %shr53 = lshr i32 %28, 24
  %conv54 = trunc i32 %shr53 to i8
  %arrayidx55 = getelementptr i8, ptr %ecc, i32 11
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv54, ptr %arrayidx55, align 1
  %33 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs_va, align 4
  %add.ptr58 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #9, !srcloc !163
  %36 = lshr i32 %35, 8
  %conv62 = trunc i32 %36 to i8
  %arrayidx63 = getelementptr i8, ptr %ecc, i32 12
  %37 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv62, ptr %arrayidx63, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end9
  %retval.0 = phi i32 [ -110, %do.end9 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_bch8_correct_data(ptr nocapture noundef readonly %chip, ptr nocapture noundef %dat, ptr nocapture noundef readonly %read_ecc, ptr nocapture noundef readnone %calc_ecc) #7 align 64 {
entry:
  %err_idx = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %err_idx) #9
  %0 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %err_idx, i32 0, i32 7
  %regs_va = getelementptr i8, ptr %chip, i32 2268
  %7 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs_va, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !163
  %10 = lshr i32 %9, 18
  %and = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup92_crit_edge, label %if.end, !prof !171

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp3 = icmp ugt i32 %and, 8
  br i1 %cmp3, label %if.then10, label %while.body.preheader, !prof !172

if.then10:                                        ; preds = %if.end
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes, align 4
  %call11 = tail call fastcc i32 @count_written_bits(ptr noundef %read_ecc, i32 noundef %12)
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %call13 = tail call fastcc i32 @count_written_bits(ptr noundef %dat, i32 noundef %14)
  %add = add i32 %call13, %call11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add)
  %cmp14 = icmp slt i32 %add, 9
  br i1 %cmp14, label %if.then15, label %if.then10.cleanup92_crit_edge

if.then10.cleanup92_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %if.then15.cleanup92_crit_edge, label %if.then17

if.then15.cleanup92_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %17 = call ptr @memset(ptr %dat, i32 255, i32 %16)
  br label %cleanup92

while.body.preheader:                             ; preds = %if.end
  %18 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_va, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !163
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs_va, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #9, !srcloc !163
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs_va, align 4
  %add.ptr36 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !163
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs_va, align 4
  %add.ptr41 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !163
  %and45 = and i32 %21, 8191
  %33 = ptrtoint ptr %err_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and45, ptr %err_idx, align 4
  %shr46 = lshr i32 %21, 13
  %and47 = and i32 %shr46, 8191
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and47, ptr %0, align 4
  %and50 = shl i32 %25, 6
  %shl = and i32 %and50, 8128
  %shr51 = lshr i32 %21, 26
  %or = or i32 %shl, %shr51
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or, ptr %1, align 4
  %shr54 = lshr i32 %25, 7
  %and55 = and i32 %shr54, 8191
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and55, ptr %2, align 4
  %and58 = shl i32 %29, 12
  %shl59 = and i32 %and58, 4096
  %shr60 = lshr i32 %25, 20
  %or62 = or i32 %shl59, %shr60
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or62, ptr %3, align 4
  %shr64 = lshr i32 %29, 1
  %and65 = and i32 %shr64, 8191
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and65, ptr %4, align 4
  %shr67 = lshr i32 %29, 14
  %and68 = and i32 %shr67, 8191
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and68, ptr %5, align 4
  %40 = lshr i32 %32, 3
  %shl72 = and i32 %40, 8160
  %shr73 = lshr i32 %29, 27
  %or75 = or i32 %shl72, %shr73
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or75, ptr %6, align 4
  %size81 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %42 = load i32, ptr %err_idx, align 4
  %xor = xor i32 %42, 3
  store i32 %xor, ptr %err_idx, align 4
  %43 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size81, align 8
  %mul = shl i32 %44, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor, i32 %mul)
  %cmp82 = icmp ult i32 %xor, %mul
  br i1 %cmp82, label %if.then83, label %while.body.preheader.if.end91_crit_edge

while.body.preheader.if.end91_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then83:                                        ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %and85 = and i32 %xor, 7
  %shl86 = shl nuw nsw i32 1, %and85
  %shr87 = ashr i32 %42, 3
  %arrayidx88 = getelementptr i8, ptr %dat, i32 %shr87
  %45 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx88, align 1
  %47 = trunc i32 %shl86 to i8
  %conv90 = xor i8 %46, %47
  store i8 %conv90, ptr %arrayidx88, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.then83, %while.body.preheader.if.end91_crit_edge
  %i.1 = phi i32 [ 1, %if.then83 ], [ 0, %while.body.preheader.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %tobool77.not = icmp eq i32 %and, 1
  br i1 %tobool77.not, label %if.end91.cleanup92_crit_edge, label %while.body.1

if.end91.cleanup92_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.1:                                     ; preds = %if.end91
  %arrayidx78.1 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1
  %48 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx78.1, align 4
  %xor.1 = xor i32 %49, 3
  store i32 %xor.1, ptr %arrayidx78.1, align 4
  %50 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size81, align 8
  %mul.1 = shl i32 %51, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.1, i32 %mul.1)
  %cmp82.1 = icmp ult i32 %xor.1, %mul.1
  br i1 %cmp82.1, label %if.then83.1, label %while.body.1.if.end91.1_crit_edge

while.body.1.if.end91.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.1

if.then83.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %and85.1 = and i32 %xor.1, 7
  %shl86.1 = shl nuw nsw i32 1, %and85.1
  %shr87.1 = ashr i32 %49, 3
  %arrayidx88.1 = getelementptr i8, ptr %dat, i32 %shr87.1
  %52 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx88.1, align 1
  %54 = trunc i32 %shl86.1 to i8
  %conv90.1 = xor i8 %53, %54
  store i8 %conv90.1, ptr %arrayidx88.1, align 1
  %inc.1 = add nuw nsw i32 %i.1, 1
  br label %if.end91.1

if.end91.1:                                       ; preds = %if.then83.1, %while.body.1.if.end91.1_crit_edge
  %i.1.1 = phi i32 [ %inc.1, %if.then83.1 ], [ %i.1, %while.body.1.if.end91.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %tobool77.not.1 = icmp eq i32 %and, 2
  br i1 %tobool77.not.1, label %if.end91.1.cleanup92_crit_edge, label %while.body.2

if.end91.1.cleanup92_crit_edge:                   ; preds = %if.end91.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.2:                                     ; preds = %if.end91.1
  %arrayidx78.2 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1.1
  %55 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx78.2, align 4
  %xor.2 = xor i32 %56, 3
  store i32 %xor.2, ptr %arrayidx78.2, align 4
  %57 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size81, align 8
  %mul.2 = shl i32 %58, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.2, i32 %mul.2)
  %cmp82.2 = icmp ult i32 %xor.2, %mul.2
  br i1 %cmp82.2, label %if.then83.2, label %while.body.2.if.end91.2_crit_edge

while.body.2.if.end91.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.2

if.then83.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %and85.2 = and i32 %xor.2, 7
  %shl86.2 = shl nuw nsw i32 1, %and85.2
  %shr87.2 = ashr i32 %56, 3
  %arrayidx88.2 = getelementptr i8, ptr %dat, i32 %shr87.2
  %59 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx88.2, align 1
  %61 = trunc i32 %shl86.2 to i8
  %conv90.2 = xor i8 %60, %61
  store i8 %conv90.2, ptr %arrayidx88.2, align 1
  %inc.2 = add nsw i32 %i.1.1, 1
  br label %if.end91.2

if.end91.2:                                       ; preds = %if.then83.2, %while.body.2.if.end91.2_crit_edge
  %i.1.2 = phi i32 [ %inc.2, %if.then83.2 ], [ %i.1.1, %while.body.2.if.end91.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %tobool77.not.2 = icmp eq i32 %and, 3
  br i1 %tobool77.not.2, label %if.end91.2.cleanup92_crit_edge, label %while.body.3

if.end91.2.cleanup92_crit_edge:                   ; preds = %if.end91.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.3:                                     ; preds = %if.end91.2
  %arrayidx78.3 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1.2
  %62 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx78.3, align 4
  %xor.3 = xor i32 %63, 3
  store i32 %xor.3, ptr %arrayidx78.3, align 4
  %64 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size81, align 8
  %mul.3 = shl i32 %65, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.3, i32 %mul.3)
  %cmp82.3 = icmp ult i32 %xor.3, %mul.3
  br i1 %cmp82.3, label %if.then83.3, label %while.body.3.if.end91.3_crit_edge

while.body.3.if.end91.3_crit_edge:                ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.3

if.then83.3:                                      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %and85.3 = and i32 %xor.3, 7
  %shl86.3 = shl nuw nsw i32 1, %and85.3
  %shr87.3 = ashr i32 %63, 3
  %arrayidx88.3 = getelementptr i8, ptr %dat, i32 %shr87.3
  %66 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx88.3, align 1
  %68 = trunc i32 %shl86.3 to i8
  %conv90.3 = xor i8 %67, %68
  store i8 %conv90.3, ptr %arrayidx88.3, align 1
  %inc.3 = add nsw i32 %i.1.2, 1
  br label %if.end91.3

if.end91.3:                                       ; preds = %if.then83.3, %while.body.3.if.end91.3_crit_edge
  %i.1.3 = phi i32 [ %inc.3, %if.then83.3 ], [ %i.1.2, %while.body.3.if.end91.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %tobool77.not.3 = icmp eq i32 %and, 4
  br i1 %tobool77.not.3, label %if.end91.3.cleanup92_crit_edge, label %while.body.4

if.end91.3.cleanup92_crit_edge:                   ; preds = %if.end91.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.4:                                     ; preds = %if.end91.3
  %arrayidx78.4 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1.3
  %69 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx78.4, align 4
  %xor.4 = xor i32 %70, 3
  store i32 %xor.4, ptr %arrayidx78.4, align 4
  %71 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size81, align 8
  %mul.4 = shl i32 %72, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.4, i32 %mul.4)
  %cmp82.4 = icmp ult i32 %xor.4, %mul.4
  br i1 %cmp82.4, label %if.then83.4, label %while.body.4.if.end91.4_crit_edge

while.body.4.if.end91.4_crit_edge:                ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.4

if.then83.4:                                      ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  %and85.4 = and i32 %xor.4, 7
  %shl86.4 = shl nuw nsw i32 1, %and85.4
  %shr87.4 = ashr i32 %70, 3
  %arrayidx88.4 = getelementptr i8, ptr %dat, i32 %shr87.4
  %73 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx88.4, align 1
  %75 = trunc i32 %shl86.4 to i8
  %conv90.4 = xor i8 %74, %75
  store i8 %conv90.4, ptr %arrayidx88.4, align 1
  %inc.4 = add i32 %i.1.3, 1
  br label %if.end91.4

if.end91.4:                                       ; preds = %if.then83.4, %while.body.4.if.end91.4_crit_edge
  %i.1.4 = phi i32 [ %inc.4, %if.then83.4 ], [ %i.1.3, %while.body.4.if.end91.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %tobool77.not.4 = icmp eq i32 %and, 5
  br i1 %tobool77.not.4, label %if.end91.4.cleanup92_crit_edge, label %while.body.5

if.end91.4.cleanup92_crit_edge:                   ; preds = %if.end91.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.5:                                     ; preds = %if.end91.4
  %arrayidx78.5 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1.4
  %76 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx78.5, align 4
  %xor.5 = xor i32 %77, 3
  store i32 %xor.5, ptr %arrayidx78.5, align 4
  %78 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size81, align 8
  %mul.5 = shl i32 %79, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.5, i32 %mul.5)
  %cmp82.5 = icmp ult i32 %xor.5, %mul.5
  br i1 %cmp82.5, label %if.then83.5, label %while.body.5.if.end91.5_crit_edge

while.body.5.if.end91.5_crit_edge:                ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.5

if.then83.5:                                      ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  %and85.5 = and i32 %xor.5, 7
  %shl86.5 = shl nuw nsw i32 1, %and85.5
  %shr87.5 = ashr i32 %77, 3
  %arrayidx88.5 = getelementptr i8, ptr %dat, i32 %shr87.5
  %80 = ptrtoint ptr %arrayidx88.5 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx88.5, align 1
  %82 = trunc i32 %shl86.5 to i8
  %conv90.5 = xor i8 %81, %82
  store i8 %conv90.5, ptr %arrayidx88.5, align 1
  %inc.5 = add i32 %i.1.4, 1
  br label %if.end91.5

if.end91.5:                                       ; preds = %if.then83.5, %while.body.5.if.end91.5_crit_edge
  %i.1.5 = phi i32 [ %inc.5, %if.then83.5 ], [ %i.1.4, %while.body.5.if.end91.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %tobool77.not.5 = icmp eq i32 %and, 6
  br i1 %tobool77.not.5, label %if.end91.5.cleanup92_crit_edge, label %while.body.6

if.end91.5.cleanup92_crit_edge:                   ; preds = %if.end91.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.6:                                     ; preds = %if.end91.5
  %arrayidx78.6 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1.5
  %83 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx78.6, align 4
  %xor.6 = xor i32 %84, 3
  store i32 %xor.6, ptr %arrayidx78.6, align 4
  %85 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size81, align 8
  %mul.6 = shl i32 %86, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.6, i32 %mul.6)
  %cmp82.6 = icmp ult i32 %xor.6, %mul.6
  br i1 %cmp82.6, label %if.then83.6, label %while.body.6.if.end91.6_crit_edge

while.body.6.if.end91.6_crit_edge:                ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91.6

if.then83.6:                                      ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  %and85.6 = and i32 %xor.6, 7
  %shl86.6 = shl nuw nsw i32 1, %and85.6
  %shr87.6 = ashr i32 %84, 3
  %arrayidx88.6 = getelementptr i8, ptr %dat, i32 %shr87.6
  %87 = ptrtoint ptr %arrayidx88.6 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx88.6, align 1
  %89 = trunc i32 %shl86.6 to i8
  %conv90.6 = xor i8 %88, %89
  store i8 %conv90.6, ptr %arrayidx88.6, align 1
  %inc.6 = add i32 %i.1.5, 1
  br label %if.end91.6

if.end91.6:                                       ; preds = %if.then83.6, %while.body.6.if.end91.6_crit_edge
  %i.1.6 = phi i32 [ %inc.6, %if.then83.6 ], [ %i.1.5, %while.body.6.if.end91.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %tobool77.not.6 = icmp eq i32 %and, 7
  br i1 %tobool77.not.6, label %if.end91.6.cleanup92_crit_edge, label %while.body.7

if.end91.6.cleanup92_crit_edge:                   ; preds = %if.end91.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

while.body.7:                                     ; preds = %if.end91.6
  %arrayidx78.7 = getelementptr [8 x i32], ptr %err_idx, i32 0, i32 %i.1.6
  %90 = ptrtoint ptr %arrayidx78.7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx78.7, align 4
  %xor.7 = xor i32 %91, 3
  store i32 %xor.7, ptr %arrayidx78.7, align 4
  %92 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size81, align 8
  %mul.7 = shl i32 %93, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.7, i32 %mul.7)
  %cmp82.7 = icmp ult i32 %xor.7, %mul.7
  br i1 %cmp82.7, label %if.then83.7, label %while.body.7.cleanup92_crit_edge

while.body.7.cleanup92_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup92

if.then83.7:                                      ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #11
  %and85.7 = and i32 %xor.7, 7
  %shl86.7 = shl nuw nsw i32 1, %and85.7
  %shr87.7 = ashr i32 %91, 3
  %arrayidx88.7 = getelementptr i8, ptr %dat, i32 %shr87.7
  %94 = ptrtoint ptr %arrayidx88.7 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx88.7, align 1
  %96 = trunc i32 %shl86.7 to i8
  %conv90.7 = xor i8 %95, %96
  store i8 %conv90.7, ptr %arrayidx88.7, align 1
  %inc.7 = add i32 %i.1.6, 1
  br label %cleanup92

cleanup92:                                        ; preds = %if.then83.7, %while.body.7.cleanup92_crit_edge, %if.end91.6.cleanup92_crit_edge, %if.end91.5.cleanup92_crit_edge, %if.end91.4.cleanup92_crit_edge, %if.end91.3.cleanup92_crit_edge, %if.end91.2.cleanup92_crit_edge, %if.end91.1.cleanup92_crit_edge, %if.end91.cleanup92_crit_edge, %if.then17, %if.then15.cleanup92_crit_edge, %if.then10.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup92_crit_edge ], [ %call13, %if.then17 ], [ 0, %if.then15.cleanup92_crit_edge ], [ -74, %if.then10.cleanup92_crit_edge ], [ %i.1, %if.end91.cleanup92_crit_edge ], [ %i.1.1, %if.end91.1.cleanup92_crit_edge ], [ %i.1.2, %if.end91.2.cleanup92_crit_edge ], [ %i.1.3, %if.end91.3.cleanup92_crit_edge ], [ %i.1.4, %if.end91.4.cleanup92_crit_edge ], [ %i.1.5, %if.end91.5.cleanup92_crit_edge ], [ %i.1.6, %if.end91.6.cleanup92_crit_edge ], [ %inc.7, %if.then83.7 ], [ %i.1.6, %while.body.7.cleanup92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %err_idx) #9
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_read_hwecc_ecc1(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %ecc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_va = getelementptr i8, ptr %chip, i32 2268
  %0 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_va, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !163
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %ecc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %ecc, align 1
  %shr = lshr i32 %3, 8
  %conv2 = trunc i32 %shr to i8
  %arrayidx3 = getelementptr i8, ptr %ecc, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %arrayidx3, align 1
  %shr4 = lshr i32 %3, 16
  %conv5 = trunc i32 %shr4 to i8
  %arrayidx6 = getelementptr i8, ptr %ecc, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv5, ptr %arrayidx6, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_correct_ecc1(ptr nocapture noundef readonly %chip, ptr noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 10
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %call = tail call i32 @ecc_sw_hamming_correct(ptr noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc, i32 noundef %3, i1 noundef zeroext %tobool) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsmc_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_va = getelementptr i8, ptr %chip, i32 2268
  %0 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_va, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %3 = and i32 %2, 2147483647
  %4 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_va, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #9, !srcloc !165
  %6 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_va, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %9 = and i32 %8, -1073741825
  %10 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_va, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !165
  %12 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_va, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  %15 = or i32 %14, 1073741824
  %16 = ptrtoint ptr %regs_va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs_va, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !165
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @count_written_bits(ptr nocapture noundef readonly %buff, i32 noundef %size) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp2 = icmp sgt i32 %size, 0
  br i1 %cmp2, label %entry.cond.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.cond.false_crit_edge:                       ; preds = %entry
  br label %cond.false

cond.false:                                       ; preds = %cond.false.cond.false_crit_edge, %entry.cond.false_crit_edge
  %written_bits.04 = phi i32 [ %add85, %cond.false.cond.false_crit_edge ], [ 0, %entry.cond.false_crit_edge ]
  %k.03 = phi i32 [ %inc, %cond.false.cond.false_crit_edge ], [ 0, %entry.cond.false_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buff, i32 %k.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %neg = xor i32 %conv, -1
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %neg) #9
  %add85 = add i32 %call.i, %written_bits.04
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add85)
  %cmp86 = icmp sgt i32 %add85, 8
  %inc = add nuw nsw i32 %k.03, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %size)
  %exitcond.not = icmp eq i32 %inc, %size
  %or.cond = select i1 %cmp86, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %cond.false.for.end_crit_edge, label %cond.false.cond.false_crit_edge

cond.false.cond.false_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %entry.for.end_crit_edge
  %written_bits.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add85, %cond.false.for.end_crit_edge ]
  ret i32 %written_bits.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsmc_ecc4_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %6)
  %cmp2 = icmp ult i32 %6, 513
  br i1 %cmp2, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 2
  br label %if.end5

if.end5:                                          ; preds = %if.else, %land.lhs.true.if.end5_crit_edge
  %storemerge = phi i32 [ %add, %if.else ], [ 0, %land.lhs.true.if.end5_crit_edge ]
  %7 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsmc_ecc4_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %add = or i32 %mul, 15
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %oobregion, align 4
  %3 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %steps, align 4
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %section)
  %cmp3 = icmp sgt i32 %sub, %section
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.else

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %5 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize, align 4
  %sub6 = sub i32 %6, %add
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %sub6, %if.else ], [ 3, %if.end.cleanup.sink.split_crit_edge ]
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsmc_ecc1_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %add = or i32 %mul, 2
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsmc_ecc1_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %add = or i32 %mul, 8
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %oobregion, align 4
  %3 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %steps, align 4
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %section)
  %cmp3 = icmp sgt i32 %sub, %section
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.else

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %5 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize, align 4
  %sub6 = sub i32 %6, %add
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %sub6, %if.else ], [ 8, %if.end.cleanup.sink.split_crit_edge ]
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_op_trace(ptr nocapture noundef readonly %instr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %instr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body4
    i32 2, label %do.body27
    i32 3, label %do.body48
    i32 4, label %do.body71
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !168

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctx, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %conv) #9
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then16)) #9
          to label %sw.epilog [label %if.then16], !srcloc !168

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %ctx17 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %5 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx17, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 64)
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addrs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef %6, i32 noundef %7, ptr noundef %9) #9
  br label %sw.epilog

do.body27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then39)) #9
          to label %sw.epilog [label %if.then39], !srcloc !168

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %ctx40 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %10 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx40, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %force_8bit, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool42.not = icmp eq i8 %13, 0
  %cond44 = select i1 %tobool42.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %11, ptr noundef nonnull %cond44) #9
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then60)) #9
          to label %sw.epilog [label %if.then60], !srcloc !168

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %ctx61 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %14 = ptrtoint ptr %ctx61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx61, align 4
  %force_8bit64 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %force_8bit64 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force_8bit64, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool65.not = icmp eq i8 %17, 0
  %cond67 = select i1 %tobool65.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.54, i32 noundef %15, ptr noundef nonnull %cond67) #9
  br label %sw.epilog

do.body71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then83)) #9
          to label %sw.epilog [label %if.then83], !srcloc !168

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %ctx84 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %18 = ptrtoint ptr %ctx84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctx84, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54, i32 noundef %19) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then83, %do.body71, %if.then60, %do.body48, %if.then39, %do.body27, %if.then16, %do.body4, %if.then, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_xfer(ptr noundef %host, ptr noundef %buffer, i32 noundef %len, i32 noundef %direction) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %write_dma_chan = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 8
  %read_dma_chan = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 7
  %chan.0.in = select i1 %cmp, ptr %write_dma_chan, ptr %read_dma_chan
  %0 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %1 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan.0, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buffer) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !171

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %4) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %4, ptr noundef %buffer, i32 noundef %len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %buffer to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %direction, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %data_pa = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 11
  %11 = ptrtoint ptr %data_pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_pa, align 4
  %.retval.0.i = select i1 %cmp, i32 %12, i32 %retval.0.i
  %retval.0.i. = select i1 %cmp, i32 %retval.0.i, i32 %12
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 30
  %13 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_prep_dma_memcpy, align 4
  %call10 = tail call ptr %14(ptr noundef %chan.0, i32 noundef %.retval.0.i, i32 noundef %retval.0.i., i32 noundef %len, i32 noundef 3) #9
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %do.end, label %if.end13

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.64) #12
  br label %unmap_dma

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call10, i32 0, i32 6
  %17 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call10, i32 0, i32 8
  %18 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %host, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call10, i32 0, i32 4
  %19 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_submit, align 4
  %call14 = tail call i32 %20(ptr noundef nonnull %call10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %tobool16.not = icmp sgt i32 %call14, -1
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.67, i32 noundef %call14) #12
  br label %unmap_dma

if.end22:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %26(ptr noundef %chan.0) #9
  %dma_access_complete = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 9
  %call24 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_access_complete, i32 noundef 300) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end22.unmap_dma_crit_edge

if.end22.unmap_dma_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %unmap_dma

if.then26:                                        ; preds = %if.end22
  %27 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan.0, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then26.dmaengine_terminate_all.exit_crit_edge, label %if.then.i2

if.then26.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit

if.then.i2:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %call.i1 = tail call i32 %30(ptr noundef %chan.0) #9
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i2, %if.then26.dmaengine_terminate_all.exit_crit_edge
  %dev31 = getelementptr inbounds %struct.fsmc_nand_data, ptr %host, i32 0, i32 4
  %31 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.70) #12
  br label %unmap_dma

unmap_dma:                                        ; preds = %dmaengine_terminate_all.exit, %if.end22.unmap_dma_crit_edge, %do.end20, %do.end
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %retval.0.i, i32 noundef %len, i32 noundef %direction, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_complete(ptr noundef %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_access_complete = getelementptr inbounds %struct.fsmc_nand_data, ptr %param, i32 0, i32 9
  tail call void @complete(ptr noundef %dma_access_complete) #9
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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_nand_remove(ptr nocapture noundef readonly %pdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then:                                          ; preds = %entry
  %nand = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %nand) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !171

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1177, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand) #9
  %regs_va.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_va.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %5 = and i32 %4, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_va.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #9, !srcloc !165
  %mode = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then24, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %write_dma_chan = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %write_dma_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %11) #9
  %read_dma_chan = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %read_dma_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_dma_chan, align 8
  tail call void @dma_release_channel(ptr noundef %13) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end.if.end25_crit_edge
  %clk = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_nand_suspend(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clk = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsmc_nand_resume(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %dev_timings = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %dev_timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_timings, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %if.then3

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %tar2.i = getelementptr inbounds %struct.fsmc_nand_timings, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %tar2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tar2.i, align 1
  %thiz6.i = getelementptr inbounds %struct.fsmc_nand_timings, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %thiz6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %thiz6.i, align 1
  %thold10.i = getelementptr inbounds %struct.fsmc_nand_timings, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %thold10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %thold10.i, align 1
  %twait14.i = getelementptr inbounds %struct.fsmc_nand_timings, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %twait14.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %twait14.i, align 1
  %tset18.i = getelementptr inbounds %struct.fsmc_nand_timings, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %tset18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tset18.i, align 1
  %options.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options.i, align 8
  %and22.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i12 = icmp eq i32 %and22.i, 0
  %spec.select.i = select i1 %tobool.not.i12, i32 14, i32 30
  %conv19.i = zext i8 %17 to i32
  %conv15.i = zext i8 %15 to i32
  %shl17.i = shl nuw nsw i32 %conv15.i, 8
  %conv11.i = zext i8 %13 to i32
  %shl13.i = shl nuw nsw i32 %conv11.i, 16
  %conv7.i = zext i8 %11 to i32
  %shl9.i = shl nuw i32 %conv7.i, 24
  %20 = and i8 %9, 15
  %and4.i = zext i8 %20 to i32
  %shl5.i = shl nuw nsw i32 %and4.i, 13
  %21 = and i8 %7, 15
  %and.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %and.i, 9
  %or23.i = or i32 %spec.select.i, %shl.i
  %or24.i = or i32 %or23.i, %shl5.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #9
  %regs_va.i = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_va.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !165
  %or25.i = or i32 %shl13.i, %shl9.i
  %or26.i = or i32 %or25.i, %shl17.i
  %or27.i = or i32 %or26.i, %conv19.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %or27.i) #9
  %26 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs_va.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %25) #9, !srcloc !165
  %28 = ptrtoint ptr %regs_va.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs_va.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %25) #9, !srcloc !165
  br label %if.end

if.end:                                           ; preds = %if.then3, %clk_prepare_enable.exit.if.end_crit_edge
  %nand = getelementptr inbounds %struct.fsmc_nand_data, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @nand_reset(ptr noundef %nand, i32 noundef 0) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !64, !65, !67, !69, !70, !72, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_fsmc_nand__312_1235_fsmc_nand_driver_init6, !1, !"__initcall__kmod_fsmc_nand__312_1235_fsmc_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1235, i32 1}
!2 = !{ptr @__exitcall_fsmc_nand_driver_exit, !1, !"__exitcall_fsmc_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file313, !4, !"__UNIQUE_ID_file313", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1237, i32 1}
!5 = !{ptr @__UNIQUE_ID_license314, !4, !"__UNIQUE_ID_license314", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author315, !7, !"__UNIQUE_ID_author315", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1238, i32 1}
!8 = !{ptr @__UNIQUE_ID_description316, !9, !"__UNIQUE_ID_description316", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1239, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1044, i32 59}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1051, i32 59}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1056, i32 59}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1061, i32 59}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1071, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fsmc_nand_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @fsmc_nand_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1089, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fsmc_nand_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsmc_nand_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1112, i32 4}
!33 = !{ptr @fsmc_nand_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @fsmc_nand_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1118, i32 4}
!37 = !{ptr @fsmc_nand_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fsmc_nand_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1140, i32 14}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1146, i32 2}
!43 = !{ptr @fsmc_nand_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @fsmc_nand_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 874, i32 32}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 878, i32 4}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @fsmc_nand_probe_config_dt._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @fsmc_nand_probe_config_dt._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 883, i32 26}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 892, i32 38}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 899, i32 32}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 901, i32 4}
!60 = !{ptr @fsmc_nand_probe_config_dt._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @fsmc_nand_probe_config_dt._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!67 = !{ptr @nand_controller_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @fsmc_nand_controller_ops, !71, !"fsmc_nand_controller_ops", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 998, i32 41}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 937, i32 4}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @fsmc_nand_attach_chip._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @fsmc_nand_attach_chip._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 950, i32 3}
!80 = !{ptr @fsmc_nand_attach_chip._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @fsmc_nand_attach_chip._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 961, i32 4}
!84 = !{ptr @fsmc_nand_attach_chip._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @fsmc_nand_attach_chip._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 971, i32 3}
!88 = !{ptr @fsmc_nand_attach_chip._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @fsmc_nand_attach_chip._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @fsmc_nand_attach_chip._entry.47, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 988, i32 4}
!92 = !{ptr @fsmc_nand_attach_chip._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 406, i32 3}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fsmc_read_hwecc_ecc4._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @fsmc_read_hwecc_ecc4._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @fsmc_ecc4_ooblayout_ops, !99, !"fsmc_ecc4_ooblayout_ops", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 246, i32 39}
!100 = !{ptr @fsmc_ecc1_ooblayout_ops, !101, !"fsmc_ecc1_ooblayout_ops", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 199, i32 39}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 642, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @fsmc_exec_op.__UNIQUE_ID_ddebug309, !103, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 647, i32 17}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/mtd/rawnand.h", i32 1030, i32 3}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug239, !110, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/mtd/rawnand.h", i32 1034, i32 3}
!116 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug240, !115, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/mtd/rawnand.h", i32 1041, i32 3}
!119 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug241, !118, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!120 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/mtd/rawnand.h", i32 1047, i32 3}
!124 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug242, !123, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/mtd/rawnand.h", i32 1053, i32 3}
!127 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug243, !126, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 518, i32 3}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @dma_xfer._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @dma_xfer._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 529, i32 3}
!135 = !{ptr @dma_xfer._entry.66, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dma_xfer._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 540, i32 3}
!139 = !{ptr @dma_xfer._entry.69, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dma_xfer._entry_ptr.71, !138, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!143 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1229, i32 11}
!147 = !{ptr @fsmc_nand_driver, !148, !"fsmc_nand_driver", i1 false, i1 false}
!148 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1226, i32 31}
!149 = !{ptr @fsmc_nand_id_table, !150, !"fsmc_nand_id_table", i1 false, i1 false}
!150 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1219, i32 34}
!151 = !{ptr @fsmc_nand_pm_ops, !152, !"fsmc_nand_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/fsmc_nand.c", i32 1217, i32 8}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{i64 6336009}
!164 = !{i64 2155503319}
!165 = !{i64 6335591}
!166 = !{i64 2155500171}
!167 = !{i64 2155500475}
!168 = !{i64 2148751001, i64 2148751006, i64 2148751019, i64 2148751063, i64 2148751097, i64 2148751118}
!169 = !{i64 6335394}
!170 = !{i64 6335789}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2155466857}
!174 = !{i64 2155468462}
!175 = !{i64 2155470063}
!176 = !{i8 0, i8 2}
