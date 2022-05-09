; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/mtk_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/mtk_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.mtk_nfc_caps = type { ptr, i8, i8, i8, i8, i32 }
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
%struct.mtk_nfc = type { %struct.nand_controller, %struct.mtk_ecc_config, %struct.mtk_nfc_clk, ptr, ptr, ptr, ptr, %struct.completion, %struct.list_head, ptr, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.mtk_ecc_config = type { i32, i32, i32, i32, i32, i32 }
%struct.mtk_nfc_clk = type { ptr, ptr }
%struct.mtk_nfc_nand_chip = type { %struct.list_head, %struct.nand_chip, %struct.mtk_nfc_bad_mark_ctl, %struct.mtk_nfc_fdm, i32, i32, [0 x i8] }
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
%struct.mtk_nfc_bad_mark_ctl = type { ptr, i32, i32 }
%struct.mtk_nfc_fdm = type { i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.mtk_ecc_stats = type { i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_mtk_nand__263_1676_mtk_nfc_driver_init6 = internal global ptr @mtk_nfc_driver_init, section ".initcall6.init", align 4
@mtk_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_nfc_probe, ptr @mtk_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_nfc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_nfc_driver_exit = internal global ptr @mtk_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file264 = internal constant [44 x i8] c"mtk_nand.file=drivers/mtd/nand/raw/mtk_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [30 x i8] c"mtk_nand.license=Dual MIT/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [53 x i8] c"mtk_nand.author=Xiaolei Li <xiaolei.li@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [54 x i8] c"mtk_nand.description=MTK Nand Flash Controller Driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk-nand\00", [23 x i8] zeroinitializer }, align 32
@mtk_nfc_id_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_nfc_caps_mt2701 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_nfc_caps_mt2712 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_nfc_caps_mt7622 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mtk_nfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_nfc_suspend, ptr @mtk_nfc_resume, ptr @mtk_nfc_suspend, ptr @mtk_nfc_resume, ptr @mtk_nfc_suspend, ptr @mtk_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_nfc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @mtk_nfc_attach_chip, ptr null, ptr @mtk_nfc_exec_op, ptr @mtk_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfi_clk\00", [24 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no clk\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_nfc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/nand/raw/mtk_nand.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry_ptr = internal global ptr @mtk_nfc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pad_clk\00", [24 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no pad clk\0A\00", [20 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry_ptr.10 = internal global ptr @mtk_nfc_probe._entry.8, section ".printk_index", align 4
@mtk_nfc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1575, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request nfi irq\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry_ptr.13 = internal global ptr @mtk_nfc_probe._entry.11, section ".printk_index", align 4
@mtk_nfc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set dma mask\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry_ptr.16 = internal global ptr @mtk_nfc_probe._entry.14, section ".printk_index", align 4
@mtk_nfc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init nand chips\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_nfc_probe._entry_ptr.19 = internal global ptr @mtk_nfc_probe._entry.17, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@mtk_nfc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1333, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"16bits buswidth not supported\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_nfc_attach_chip\00", [44 x i8] zeroinitializer }, align 32
@mtk_nfc_attach_chip._entry_ptr = internal global ptr @mtk_nfc_attach_chip._entry, section ".printk_index", align 4
@mtk_nfc_ecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ecc.engine_type not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_nfc_ecc_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_nfc_ecc_init._entry_ptr = internal global ptr @mtk_nfc_ecc_init._entry, section ".printk_index", align 4
@mtk_nfc_ecc_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 1318, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"eccsize %d eccstrength %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_nfc_ecc_init._entry_ptr.28 = internal global ptr @mtk_nfc_ecc_init._entry.25, section ".printk_index", align 4
@mtk_nfc_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 274, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"master active in reset [0x%x] = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_nfc_hw_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_nfc_hw_reset._entry_ptr = internal global ptr @mtk_nfc_hw_reset._entry, section ".printk_index", align 4
@mtk_nfc_hw_runtime_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid page len: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_nfc_hw_runtime_config\00", [38 x i8] zeroinitializer }, align 32
@mtk_nfc_hw_runtime_config._entry_ptr = internal global ptr @mtk_nfc_hw_runtime_config._entry, section ".printk_index", align 4
@mtk_nfc_hw_runtime_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid spare size %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_nfc_hw_runtime_config._entry_ptr.36 = internal global ptr @mtk_nfc_hw_runtime_config._entry.34, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtk_nfc_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 292, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfi core timed out entering command mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_nfc_send_command\00", [43 x i8] zeroinitializer }, align 32
@mtk_nfc_send_command._entry_ptr = internal global ptr @mtk_nfc_send_command._entry, section ".printk_index", align 4
@mtk_nfc_send_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 312, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfi core timed out entering address mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_nfc_send_address\00", [43 x i8] zeroinitializer }, align 32
@mtk_nfc_send_address._entry_ptr = internal global ptr @mtk_nfc_send_address._entry, section ".printk_index", align 4
@mtk_nfc_wait_ioready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data not ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_nfc_wait_ioready\00", [43 x i8] zeroinitializer }, align 32
@mtk_nfc_wait_ioready._entry_ptr = internal global ptr @mtk_nfc_wait_ioready._entry, section ".printk_index", align 4
@mtk_nfc_enable_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable nfi clk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_nfc_enable_clk\00", [45 x i8] zeroinitializer }, align 32
@mtk_nfc_enable_clk._entry_ptr = internal global ptr @mtk_nfc_enable_clk._entry, section ".printk_index", align 4
@mtk_nfc_enable_clk._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 1134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable pad clk\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_nfc_enable_clk._entry_ptr.47 = internal global ptr @mtk_nfc_enable_clk._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 1382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid reg property size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_nfc_nand_chip_init\00", [41 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry_ptr = internal global ptr @mtk_nfc_nand_chip_init._entry, section ".printk_index", align 4
@mtk_nfc_nand_chip_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 1395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg property failure : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry_ptr.53 = internal global ptr @mtk_nfc_nand_chip_init._entry.51, section ".printk_index", align 4
@mtk_nfc_nand_chip_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.4, i32 1400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid CS: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry_ptr.56 = internal global ptr @mtk_nfc_nand_chip_init._entry.54, section ".printk_index", align 4
@mtk_nfc_nand_chip_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.4, i32 1405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %u already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry_ptr.59 = internal global ptr @mtk_nfc_nand_chip_init._entry.57, section ".printk_index", align 4
@mtk_nfc_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @mtk_nfc_ooblayout_ecc, ptr @mtk_nfc_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.4, i32 1449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtd parse partition error\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_nfc_nand_chip_init._entry_ptr.62 = internal global ptr @mtk_nfc_nand_chip_init._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@mtk_nfc_do_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 787, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_nfc_do_write_page\00", [42 x i8] zeroinitializer }, align 32
@mtk_nfc_do_write_page._entry_ptr = internal global ptr @mtk_nfc_do_write_page._entry, section ".printk_index", align 4
@mtk_nfc_do_write_page._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"program ahb done timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_nfc_do_write_page._entry_ptr.68 = internal global ptr @mtk_nfc_do_write_page._entry.66, section ".printk_index", align 4
@mtk_nfc_do_write_page._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.4, i32 816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwecc write timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@mtk_nfc_do_write_page._entry_ptr.71 = internal global ptr @mtk_nfc_do_write_page._entry.69, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mtk_nfc_read_subpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.75, ptr @.str.4, i32 969, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_nfc_read_subpage\00", [43 x i8] zeroinitializer }, align 32
@mtk_nfc_read_subpage._entry_ptr = internal global ptr @mtk_nfc_read_subpage._entry, section ".printk_index", align 4
@mtk_nfc_read_subpage._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecc enable\0A\00", [20 x i8] zeroinitializer }, align 32
@mtk_nfc_read_subpage._entry_ptr.78 = internal global ptr @mtk_nfc_read_subpage._entry.76, section ".printk_index", align 4
@mtk_nfc_read_subpage._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.4, i32 1009, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"read ahb/dma done timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_nfc_read_subpage._entry_ptr.81 = internal global ptr @mtk_nfc_read_subpage._entry.79, section ".printk_index", align 4
@mtk_nfc_read_subpage._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.4, i32 1015, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subpage done timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_nfc_read_subpage._entry_ptr.84 = internal global ptr @mtk_nfc_read_subpage._entry.82, section ".printk_index", align 4
@mtk_nfc_caps_mt2701 = internal constant { %struct.mtk_nfc_caps, [20 x i8] } { %struct.mtk_nfc_caps { ptr @spare_size_mt2701, i8 16, i8 4, i8 1, i8 16, i32 1024 }, [20 x i8] zeroinitializer }, align 32
@mtk_nfc_caps_mt2712 = internal constant { %struct.mtk_nfc_caps, [20 x i8] } { %struct.mtk_nfc_caps { ptr @spare_size_mt2712, i8 19, i8 16, i8 2, i8 16, i32 1024 }, [20 x i8] zeroinitializer }, align 32
@mtk_nfc_caps_mt7622 = internal constant { %struct.mtk_nfc_caps, [20 x i8] } { %struct.mtk_nfc_caps { ptr @spare_size_mt7622, i8 4, i8 4, i8 1, i8 8, i32 512 }, [20 x i8] zeroinitializer }, align 32
@spare_size_mt2701 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\10\1A\1B\1C $(,01234>?@", [16 x i8] zeroinitializer }, align 32
@spare_size_mt2712 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\10\1A\1B\1C $(,01234>=?@CJ", [45 x i8] zeroinitializer }, align 32
@spare_size_mt7622 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\10\1A\1B\1C", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 2048, i64 4096, i64 8192, i64 16384]
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"mtk_nfc_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1664, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1668, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"mtk_nfc_id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1503, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"mtk_nfc_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1661, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"mtk_nfc_controller_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1360, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1549, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1551, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1556, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1558, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1575, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1581, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1589, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1105, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1333, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1264, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1317, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 273, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 357, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 374, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 292, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 312, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 398, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1128, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1134, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1377, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1382, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1395, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1400, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1405, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [22 x i8] c"mtk_nfc_ooblayout_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1184, i32 39 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1449, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 464, i32 31 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 787, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 806, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 816, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 326, i32 6 }
@___asan_gen_.320 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 87, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 969, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 985, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1009, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1015, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c"mtk_nfc_caps_mt2701\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1476, i32 34 }
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c"mtk_nfc_caps_mt2712\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1485, i32 34 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c"mtk_nfc_caps_mt7622\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1494, i32 34 }
@___asan_gen_.359 = private unnamed_addr constant [18 x i8] c"spare_size_mt2701\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 166, i32 17 }
@___asan_gen_.362 = private unnamed_addr constant [18 x i8] c"spare_size_mt2712\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 170, i32 17 }
@___asan_gen_.365 = private unnamed_addr constant [18 x i8] c"spare_size_mt7622\00", align 1
@___asan_gen_.366 = private constant [35 x i8] c"../drivers/mtd/nand/raw/mtk_nand.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 175, i32 17 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_mtk_nfc_driver_exit, ptr @__initcall__kmod_mtk_nand__263_1676_mtk_nfc_driver_init6, ptr @mtk_nfc_attach_chip._entry, ptr @mtk_nfc_attach_chip._entry_ptr, ptr @mtk_nfc_do_write_page._entry, ptr @mtk_nfc_do_write_page._entry.66, ptr @mtk_nfc_do_write_page._entry.69, ptr @mtk_nfc_do_write_page._entry_ptr, ptr @mtk_nfc_do_write_page._entry_ptr.68, ptr @mtk_nfc_do_write_page._entry_ptr.71, ptr @mtk_nfc_driver_exit, ptr @mtk_nfc_ecc_init._entry, ptr @mtk_nfc_ecc_init._entry.25, ptr @mtk_nfc_ecc_init._entry_ptr, ptr @mtk_nfc_ecc_init._entry_ptr.28, ptr @mtk_nfc_enable_clk._entry, ptr @mtk_nfc_enable_clk._entry.45, ptr @mtk_nfc_enable_clk._entry_ptr, ptr @mtk_nfc_enable_clk._entry_ptr.47, ptr @mtk_nfc_hw_reset._entry, ptr @mtk_nfc_hw_reset._entry_ptr, ptr @mtk_nfc_hw_runtime_config._entry, ptr @mtk_nfc_hw_runtime_config._entry.34, ptr @mtk_nfc_hw_runtime_config._entry_ptr, ptr @mtk_nfc_hw_runtime_config._entry_ptr.36, ptr @mtk_nfc_nand_chip_init._entry, ptr @mtk_nfc_nand_chip_init._entry.51, ptr @mtk_nfc_nand_chip_init._entry.54, ptr @mtk_nfc_nand_chip_init._entry.57, ptr @mtk_nfc_nand_chip_init._entry.60, ptr @mtk_nfc_nand_chip_init._entry_ptr, ptr @mtk_nfc_nand_chip_init._entry_ptr.53, ptr @mtk_nfc_nand_chip_init._entry_ptr.56, ptr @mtk_nfc_nand_chip_init._entry_ptr.59, ptr @mtk_nfc_nand_chip_init._entry_ptr.62, ptr @mtk_nfc_probe._entry, ptr @mtk_nfc_probe._entry.11, ptr @mtk_nfc_probe._entry.14, ptr @mtk_nfc_probe._entry.17, ptr @mtk_nfc_probe._entry.8, ptr @mtk_nfc_probe._entry_ptr, ptr @mtk_nfc_probe._entry_ptr.10, ptr @mtk_nfc_probe._entry_ptr.13, ptr @mtk_nfc_probe._entry_ptr.16, ptr @mtk_nfc_probe._entry_ptr.19, ptr @mtk_nfc_read_subpage._entry, ptr @mtk_nfc_read_subpage._entry.76, ptr @mtk_nfc_read_subpage._entry.79, ptr @mtk_nfc_read_subpage._entry.82, ptr @mtk_nfc_read_subpage._entry_ptr, ptr @mtk_nfc_read_subpage._entry_ptr.78, ptr @mtk_nfc_read_subpage._entry_ptr.81, ptr @mtk_nfc_read_subpage._entry_ptr.84, ptr @mtk_nfc_send_address._entry, ptr @mtk_nfc_send_address._entry_ptr, ptr @mtk_nfc_send_command._entry, ptr @mtk_nfc_send_command._entry_ptr, ptr @mtk_nfc_wait_ioready._entry, ptr @mtk_nfc_wait_ioready._entry_ptr, ptr @mtk_nfc_driver, ptr @.str, ptr @mtk_nfc_id_table, ptr @mtk_nfc_pm_ops, ptr @mtk_nfc_controller_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @nand_controller_init.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @mtk_nfc_ooblayout_ops, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @init_completion.__key, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @mtk_nfc_caps_mt2701, ptr @mtk_nfc_caps_mt2712, ptr @mtk_nfc_caps_mt7622, ptr @spare_size_mt2701, ptr @spare_size_mt2712, ptr @spare_size_mt7622], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_id_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_ecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_ecc_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_hw_runtime_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_hw_runtime_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_send_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_wait_ioready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_enable_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_enable_clk._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_nand_chip_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_nand_chip_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_nand_chip_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_nand_chip_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_do_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_do_write_page._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_do_write_page._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_read_subpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_read_subpage._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_read_subpage._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_read_subpage._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_caps_mt2701 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_caps_mt2712 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nfc_caps_mt7622 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_size_mt2701 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_size_mt2712 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare_size_mt7622 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_nfc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_nfc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 216, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @nand_controller_init.__key) #9
  %chips = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chips, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mtk_nfc_controller_ops, ptr %ops, align 4
  %call3 = tail call ptr @of_mtk_ecc_get(ptr noundef %1) #9
  %ecc = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %ecc, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool10.not = icmp eq ptr %call3, null
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.else
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %caps = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %caps, align 4
  %dev15 = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev15, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %regs, align 4
  %cmp.i126 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call16 to i32
  br label %release_ecc

if.end22:                                         ; preds = %if.end13
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %clk = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %clk, align 4
  %cmp.i127 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end, label %if.end31

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %release_ecc

if.end31:                                         ; preds = %if.end22
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %pad_clk = getelementptr inbounds %struct.mtk_nfc, ptr %call.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %pad_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32, ptr %pad_clk, align 4
  %cmp.i128 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  %16 = ptrtoint ptr %pad_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pad_clk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %release_ecc

if.end44:                                         ; preds = %if.end31
  %call46 = tail call fastcc i32 @mtk_nfc_enable_clk(ptr noundef %dev1, ptr noundef %clk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.release_ecc_crit_edge

if.end44.release_ecc_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_ecc

if.end49:                                         ; preds = %if.end44
  %call50 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp = icmp slt i32 %call50, 0
  br i1 %cmp, label %if.end49.clk_disable_crit_edge, label %if.end52

if.end49.clk_disable_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable

if.end52:                                         ; preds = %if.end49
  %call.i129 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @mtk_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool54.not = icmp eq i32 %call.i129, 0
  br i1 %tobool54.not, label %if.end59, label %if.end52.clk_disable.sink.split_crit_edge

if.end52.clk_disable.sink.split_crit_edge:        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable.sink.split

if.end59:                                         ; preds = %if.end52
  %call60 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end66, label %if.end59.clk_disable.sink.split_crit_edge

if.end59.clk_disable.sink.split_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable.sink.split

if.end66:                                         ; preds = %if.end59
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call67 = tail call fastcc i32 @mtk_nfc_nand_chips_init(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.end66.clk_disable.sink.split_crit_edge

if.end66.clk_disable.sink.split_crit_edge:        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable.sink.split

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

clk_disable.sink.split:                           ; preds = %if.end66.clk_disable.sink.split_crit_edge, %if.end59.clk_disable.sink.split_crit_edge, %if.end52.clk_disable.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.12, %if.end52.clk_disable.sink.split_crit_edge ], [ @.str.15, %if.end59.clk_disable.sink.split_crit_edge ], [ @.str.18, %if.end66.clk_disable.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i129, %if.end52.clk_disable.sink.split_crit_edge ], [ %call60, %if.end59.clk_disable.sink.split_crit_edge ], [ %call67, %if.end66.clk_disable.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.18.sink) #12
  br label %clk_disable

clk_disable:                                      ; preds = %clk_disable.sink.split, %if.end49.clk_disable_crit_edge
  %ret.0 = phi i32 [ -22, %if.end49.clk_disable_crit_edge ], [ %ret.0.ph, %clk_disable.sink.split ]
  tail call fastcc void @mtk_nfc_disable_clk(ptr noundef %clk)
  br label %release_ecc

release_ecc:                                      ; preds = %clk_disable, %if.end44.release_ecc_crit_edge, %do.end40, %do.end, %if.then19
  %ret.1 = phi i32 [ %10, %if.then19 ], [ %14, %do.end ], [ %18, %do.end40 ], [ %call46, %if.end44.release_ecc_crit_edge ], [ %ret.0, %clk_disable ]
  %20 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ecc, align 4
  tail call void @mtk_ecc_release(ptr noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %release_ecc, %if.end66.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ %ret.1, %release_ecc ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %chips, align 4
  %cmp.i.not33 = icmp eq ptr %3, %chips
  br i1 %cmp.i.not33, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %nand = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %4, i32 0, i32 1
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %nand) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.body.if.end_crit_edge, label %do.end, !prof !189

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1616, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %chips, align 4
  %cmp.i.not = icmp eq ptr %14, %chips
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %ecc = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ecc, align 4
  tail call void @mtk_ecc_release(ptr noundef %16) #9
  %clk = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #9
  tail call void @clk_unprepare(ptr noundef %18) #9
  %pad_clk.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %pad_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pad_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mtk_ecc_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nfc_enable_clk(ptr noundef %dev, ptr nocapture noundef readonly %clk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pad_clk = getelementptr inbounds %struct.mtk_nfc_clk, ptr %clk, i32 0, i32 1
  %2 = ptrtoint ptr %pad_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad_clk, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i20, %if.end.do.end6_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end.do.end6_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #12
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.i19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i21.ph, %do.end6 ], [ 0, %if.end.i19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_irq(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !190
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #9
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16) #9, !srcloc !190
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  %and14 = and i16 %7, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and14)
  %tobool.not = icmp eq i16 %and14, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i16 %3, -1
  %and5 = and i16 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %8 = tail call i16 @llvm.bswap.i16(i16 %and5) #9
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i18, i16 %8) #9, !srcloc !192
  %done = getelementptr inbounds %struct.mtk_nfc, ptr %id, i32 0, i32 7
  tail call void @complete(ptr noundef %done) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nfc_nand_chips_init(ptr noundef %dev, ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  %nsels.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %cmp.not32 = icmp eq ptr %call, null
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %assigned_cs.i = getelementptr inbounds %struct.mtk_nfc, ptr %nfc, i32 0, i32 10
  %regs.i.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %nfc, i32 0, i32 6
  %chips.i = getelementptr inbounds %struct.mtk_nfc, ptr %nfc, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %nfc, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nand_np.033 = phi ptr [ %call, %for.body.lr.ph ], [ %call2, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsels.i) #9
  %2 = ptrtoint ptr %nsels.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nsels.i, align 4, !annotation !193
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !193
  %call.i = call ptr @of_get_property(ptr noundef nonnull %nand_np.033, ptr noundef nonnull @.str.48, ptr noundef nonnull %nsels.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsels.i, align 4
  %div107.i = lshr i32 %5, 2
  store i32 %div107.i, ptr %nsels.i, align 4
  %6 = add i32 %5, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %6)
  %7 = icmp ult i32 %6, -8
  br i1 %7, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %div107.i) #12
  br label %if.then

if.end3.i:                                        ; preds = %if.end.i
  %add.i = add nuw nsw i32 %div107.i, 2208
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add.i, i32 noundef 3520) #9
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end3.i.if.then_crit_edge, label %if.end7.i

if.end3.i.if.then_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end7.i:                                        ; preds = %if.end3.i
  %8 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsels.i, align 4
  %nsels8.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %nsels8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nsels8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9113.i = icmp sgt i32 %9, 0
  br i1 %cmp9113.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %i.0114.i = phi i32 [ %inc.i, %if.end29.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %call10.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.033, ptr noundef nonnull @.str.48, i32 noundef %i.0114.i, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end16.i, label %do.end15.i

do.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call10.i) #12
  br label %if.then

if.end16.i:                                       ; preds = %for.body.i
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17.i = icmp ugt i32 %12, 1
  br i1 %cmp17.i, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %12) #12
  br label %if.then

if.end22.i:                                       ; preds = %if.end16.i
  %call23.i = call i32 @_test_and_set_bit(i32 noundef %12, ptr noundef %assigned_cs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.i, align 4
  br i1 %tobool24.not.i, label %if.end29.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %14) #12
  br label %if.then

if.end29.i:                                       ; preds = %if.end22.i
  %conv.i = trunc i32 %14 to i8
  %arrayidx.i = getelementptr %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 6, i32 %i.0114.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.0114.i, 1
  %16 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nsels.i, align 4
  %cmp9.i = icmp slt i32 %inc.i, %17
  br i1 %cmp9.i, label %if.end29.i.for.body.i_crit_edge, label %if.end29.i.for.end.i_crit_edge

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end29.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %nand30.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1
  %controller31.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 32
  %18 = ptrtoint ptr %controller31.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %nfc, ptr %controller31.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %19 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %nand_np.033, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %20 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.end.i.nand_set_flash_node.exit.i_crit_edge

for.end.i.nand_set_flash_node.exit.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.033, ptr noundef nonnull @.str.63, ptr noundef %name.i.i.i) #9
  br label %nand_set_flash_node.exit.i

nand_set_flash_node.exit.i:                       ; preds = %if.then.i.i.i, %for.end.i.nand_set_flash_node.exit.i_crit_edge
  %priv1.i.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 34
  %22 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %nfc, ptr %priv1.i.i, align 8
  %options.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %options.i, align 8
  %or.i = or i32 %24, 1052672
  store i32 %or.i, ptr %options.i, align 8
  %ecc.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33
  %25 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %ecc.i, align 8
  %write_subpage.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 20
  %26 = ptrtoint ptr %write_subpage.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mtk_nfc_write_subpage_hwecc, ptr %write_subpage.i, align 8
  %write_page_raw.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 17
  %27 = ptrtoint ptr %write_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mtk_nfc_write_page_raw, ptr %write_page_raw.i, align 4
  %write_page.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 21
  %28 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mtk_nfc_write_page_hwecc, ptr %write_page.i, align 4
  %write_oob_raw.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 22
  %29 = ptrtoint ptr %write_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mtk_nfc_write_oob_std, ptr %write_oob_raw.i, align 8
  %write_oob.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 25
  %30 = ptrtoint ptr %write_oob.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mtk_nfc_write_oob_std, ptr %write_oob.i, align 4
  %read_subpage.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 19
  %31 = ptrtoint ptr %read_subpage.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mtk_nfc_read_subpage_hwecc, ptr %read_subpage.i, align 4
  %read_page_raw.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 16
  %32 = ptrtoint ptr %read_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mtk_nfc_read_page_raw, ptr %read_page_raw.i, align 8
  %read_page.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 18
  %33 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mtk_nfc_read_page_hwecc, ptr %read_page.i, align 8
  %read_oob_raw.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 23
  %34 = ptrtoint ptr %read_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mtk_nfc_read_oob_std, ptr %read_oob_raw.i, align 4
  %read_oob.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33, i32 24
  %35 = ptrtoint ptr %read_oob.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mtk_nfc_read_oob_std, ptr %read_oob.i, align 8
  %owner.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 55
  %36 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %owner.i, align 4
  %parent.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %parent.i, align 8
  %38 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str, ptr %name.i.i.i, align 8
  %ooblayout1.i.i = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 15
  %39 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mtk_nfc_ooblayout_ops, ptr %ooblayout1.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 68
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -3840) #9, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %43, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 50331648) #9, !srcloc !195
  call fastcc void @mtk_nfc_hw_reset(ptr noundef %nfc) #9
  %44 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %45, i32 20
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #9, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %48, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 0) #9, !srcloc !195
  %49 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nsels.i, align 4
  %call.i108.i = call i32 @nand_scan_with_ids(ptr noundef %nand30.i, i32 noundef %50, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool45.not.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %nand_set_flash_node.exit.i.if.then_crit_edge

nand_set_flash_node.exit.i.if.then_crit_edge:     ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end47.i:                                       ; preds = %nand_set_flash_node.exit.i
  %call48.i = call i32 @mtd_device_parse_register(ptr noundef %nand30.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end54.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #12
  call void @nand_cleanup(ptr noundef %nand30.i) #9
  br label %if.then

if.end54.i:                                       ; preds = %if.end47.i
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %call.i.i109.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %52, ptr noundef %chips.i) #9
  br i1 %call.i.i109.i, label %if.end.i.i.i, label %if.end54.i.for.inc_crit_edge

if.end54.i.for.inc_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %chips.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call.i.i, ptr %52, align 4
  br label %for.inc

if.then:                                          ; preds = %do.end53.i, %nand_set_flash_node.exit.i.if.then_crit_edge, %do.end28.i, %do.end21.i, %do.end15.i, %if.end3.i.if.then_crit_edge, %do.end.i, %for.body.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call48.i, %do.end53.i ], [ -22, %do.end28.i ], [ -22, %do.end21.i ], [ %call10.i, %do.end15.i ], [ -22, %do.end.i ], [ %call.i108.i, %nand_set_flash_node.exit.i.if.then_crit_edge ], [ -12, %if.end3.i.if.then_crit_edge ], [ -19, %for.body.if.then_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsels.i) #9
  call void @of_node_put(ptr noundef nonnull %nand_np.033) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i.i, %if.end54.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsels.i) #9
  %call2 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %nand_np.033) #9
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_nfc_disable_clk(ptr nocapture noundef readonly %clk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  %pad_clk = getelementptr inbounds %struct.mtk_nfc_clk, ptr %clk, i32 0, i32 1
  %2 = ptrtoint ptr %pad_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ecc_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %6 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bbt_options, align 8
  %and4 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %7, 262144
  %8 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %ecc.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %9 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 3
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %13 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not.i = icmp eq i32 %14, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.if.end12_crit_edge

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %strength7.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %15 = ptrtoint ptr %strength7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %strength7.i, align 4
  %strength9.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %17 = ptrtoint ptr %strength9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %strength9.i, align 4
  %step_size.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %18 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %step_size.i, align 4
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %19)
  %cmp14.i = icmp slt i32 %19, 1024
  br i1 %cmp14.i, label %if.then15.i, label %if.else26.i

if.then15.i:                                      ; preds = %if.then6.i
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %21 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %22)
  %cmp16.i = icmp ugt i32 %22, 512
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.then15.i.if.else.i_crit_edge

if.then15.i.if.else.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then15.i
  %caps.i = getelementptr inbounds %struct.mtk_nfc, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %caps.i, align 4
  %max_sector_size.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %max_sector_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %26)
  %cmp17.i = icmp ugt i32 %26, 512
  br i1 %cmp17.i, label %if.then18.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1024, ptr %size.i, align 8
  %shl.i = shl i32 %16, 1
  %28 = ptrtoint ptr %strength9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.i, ptr %strength9.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then15.i.if.else.i_crit_edge
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 512, ptr %size.i, align 8
  br label %if.end29.i

if.else26.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1024, ptr %size.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else26.i, %if.else.i, %if.then18.i
  %cmp.i.i = phi i32 [ 1, %if.then18.i ], [ 0, %if.else.i ], [ 1, %if.else26.i ]
  %31 = phi i32 [ 1024, %if.then18.i ], [ 512, %if.else.i ], [ 1024, %if.else26.i ]
  %caps.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %3, i32 0, i32 5
  %32 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caps.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %36 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize.i.i, align 4
  %div.i.i = udiv i32 %37, %31
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %38 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oobsize.i.i, align 4
  %div2.i.i = udiv i32 %39, %div.i.i
  %spec.select106.i = lshr i32 %div2.i.i, %cmp.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select106.i)
  %cmp5.i.i = icmp ult i32 %spec.select106.i, 16
  br i1 %cmp5.i.i, label %if.end29.i.cleanup_crit_edge, label %for.cond.preheader.i.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %if.end29.i
  %num_spare_size.i.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %num_spare_size.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_spare_size.i.i, align 4
  %conv.i.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp963.not.i.i = icmp eq i8 %41, 0
  br i1 %cmp963.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %closest_spare.066.i.i = phi i32 [ %closest_spare.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.064.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %35, i32 %i.064.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1
  %conv11.i.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select106.i, i32 %conv11.i.i)
  %cmp12.not.i.i = icmp ult i32 %spec.select106.i, %conv11.i.i
  br i1 %cmp12.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx16.i.i = getelementptr i8, ptr %35, i32 %closest_spare.066.i.i
  %44 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx16.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp18.not.i.i = icmp ult i8 %43, %45
  br i1 %cmp18.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then20.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select106.i, i32 %conv11.i.i)
  %cmp23.i.i = icmp eq i32 %spec.select106.i, %conv11.i.i
  br i1 %cmp23.i.i, label %if.then20.i.i.for.end.i.i_crit_edge, label %if.then20.i.i.for.inc.i.i_crit_edge

if.then20.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then20.i.i.for.end.i.i_crit_edge:              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.then20.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %closest_spare.1.i.i = phi i32 [ %i.064.i.i, %if.then20.i.i.for.inc.i.i_crit_edge ], [ %closest_spare.066.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %closest_spare.066.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then20.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %closest_spare.2.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %i.064.i.i, %if.then20.i.i.for.end.i.i_crit_edge ], [ %closest_spare.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %arrayidx28.i.i = getelementptr i8, ptr %35, i32 %closest_spare.2.i.i
  %46 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %47 to i32
  %spec.select107.i = shl nuw nsw i32 %conv29.i.i, %cmp.i.i
  %48 = ptrtoint ptr %strength9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %strength9.i, align 4
  %ecc36.i = getelementptr inbounds %struct.mtk_nfc, ptr %3, i32 0, i32 3
  %50 = ptrtoint ptr %ecc36.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ecc36.i, align 4
  %call37.i = tail call i32 @mtk_ecc_get_parity_bits(ptr noundef %51) #9
  %mul.i = mul i32 %call37.i, %49
  %add.i = add i32 %mul.i, 7
  %shr.i = lshr i32 %add.i, 3
  %sub.i = sub nsw i32 %spec.select107.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp38.i = icmp sgt i32 %sub.i, 8
  br i1 %cmp38.i, label %for.end.i.i.if.end58.sink.split.i_crit_edge, label %if.else46.i

for.end.i.i.if.end58.sink.split.i_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.sink.split.i

if.else46.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp47.i = icmp slt i32 %sub.i, 0
  br i1 %cmp47.i, label %if.else46.i.if.end58.sink.split.i_crit_edge, label %if.else46.i.if.end12_crit_edge

if.else46.i.if.end12_crit_edge:                   ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else46.i.if.end58.sink.split.i_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.else46.i.if.end58.sink.split.i_crit_edge, %for.end.i.i.if.end58.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -64, %for.end.i.i.if.end58.sink.split.i_crit_edge ], [ -8, %if.else46.i.if.end58.sink.split.i_crit_edge ]
  %sub40.i = shl nuw nsw i32 %spec.select107.i, 3
  %shl41.i = add nsw i32 %.sink.i, %sub40.i
  %52 = ptrtoint ptr %ecc36.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ecc36.i, align 4
  %call43.i = tail call i32 @mtk_ecc_get_parity_bits(ptr noundef %53) #9
  %div.i = udiv i32 %shl41.i, %call43.i
  %54 = ptrtoint ptr %strength9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div.i, ptr %strength9.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end58.sink.split.i, %if.else46.i.if.end12_crit_edge, %lor.lhs.false.i.if.end12_crit_edge
  %ecc59.i = getelementptr inbounds %struct.mtk_nfc, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %ecc59.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ecc59.i, align 4
  %strength61.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  tail call void @mtk_ecc_adjust_strength(ptr noundef %56, ptr noundef %strength61.i) #9
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 8
  %59 = ptrtoint ptr %strength61.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %strength61.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %58, i32 noundef %60) #12
  %spare_per_sector = getelementptr i8, ptr %chip, i32 2188
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i, align 8
  %caps.i47 = getelementptr inbounds %struct.mtk_nfc, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %caps.i47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %caps.i47, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %writesize.i48 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %67 = ptrtoint ptr %writesize.i48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %writesize.i48, align 4
  %69 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i, align 8
  %div.i50 = udiv i32 %68, %70
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %71 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %oobsize.i, align 4
  %div2.i = udiv i32 %72, %div.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %70)
  %cmp.i = icmp eq i32 %70, 1024
  %shr.i51 = zext i1 %cmp.i to i32
  %spec.select = lshr i32 %div2.i, %shr.i51
  %73 = ptrtoint ptr %spare_per_sector to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.select, ptr %spare_per_sector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select)
  %cmp5.i = icmp ult i32 %spec.select, 16
  br i1 %cmp5.i, label %if.end12.cleanup_crit_edge, label %for.cond.preheader.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end12
  %74 = ptrtoint ptr %caps.i47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps.i47, align 4
  %num_spare_size.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %num_spare_size.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_spare_size.i, align 4
  %conv.i = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp963.not.i = icmp eq i8 %77, 0
  br i1 %cmp963.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %closest_spare.066.i = phi i32 [ %closest_spare.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.064.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %66, i32 %i.064.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv11.i)
  %cmp12.not.i = icmp ult i32 %spec.select, %conv11.i
  br i1 %cmp12.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i53

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i53:                                ; preds = %for.body.i
  %arrayidx16.i = getelementptr i8, ptr %66, i32 %closest_spare.066.i
  %80 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %81)
  %cmp18.not.i = icmp ult i8 %79, %81
  br i1 %cmp18.not.i, label %land.lhs.true.i53.for.inc.i_crit_edge, label %if.then20.i

land.lhs.true.i53.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then20.i:                                      ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv11.i)
  %cmp23.i = icmp eq i32 %spec.select, %conv11.i
  br i1 %cmp23.i, label %if.then20.i.for.end.i_crit_edge, label %if.then20.i.for.inc.i_crit_edge

if.then20.i.for.inc.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then20.i.for.inc.i_crit_edge, %land.lhs.true.i53.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %closest_spare.1.i = phi i32 [ %i.064.i, %if.then20.i.for.inc.i_crit_edge ], [ %closest_spare.066.i, %land.lhs.true.i53.for.inc.i_crit_edge ], [ %closest_spare.066.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then20.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %closest_spare.2.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %closest_spare.1.i, %for.inc.i.for.end.i_crit_edge ], [ %i.064.i, %if.then20.i.for.end.i_crit_edge ]
  %arrayidx28.i = getelementptr i8, ptr %66, i32 %closest_spare.2.i
  %82 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %83 to i32
  %spec.select71 = shl nuw nsw i32 %conv29.i, %shr.i51
  %84 = ptrtoint ptr %spare_per_sector to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %spec.select71, ptr %spare_per_sector, align 4
  %fdm = getelementptr i8, ptr %chip, i32 2180
  %85 = ptrtoint ptr %strength61.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %strength61.i, align 4
  %ecc3.i = getelementptr inbounds %struct.mtk_nfc, ptr %62, i32 0, i32 3
  %87 = ptrtoint ptr %ecc3.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ecc3.i, align 4
  %call4.i = tail call i32 @mtk_ecc_get_parity_bits(ptr noundef %88) #9
  %mul.i58 = mul i32 %call4.i, %86
  %sub.i59 = add i32 %mul.i58, 7
  %div13.i = lshr i32 %sub.i59, 3
  %89 = ptrtoint ptr %spare_per_sector to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %spare_per_sector, align 4
  %sub5.i = sub i32 %90, %div13.i
  %91 = tail call i32 @llvm.umin.i32(i32 %sub5.i, i32 8) #9
  %92 = ptrtoint ptr %fdm to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %fdm, align 4
  %ecc_size.i = getelementptr i8, ptr %chip, i32 2184
  %93 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %ecc_size.i, align 4
  %bad_mark = getelementptr i8, ptr %chip, i32 2168
  %94 = ptrtoint ptr %writesize.i48 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %writesize.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %95)
  %cmp.i61 = icmp eq i32 %95, 512
  br i1 %cmp.i61, label %if.then.i62, label %if.else.i64

if.then.i62:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %bad_mark to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @mtk_nfc_no_bad_mark_swap, ptr %bad_mark, align 4
  br label %mtk_nfc_set_bad_mark_ctl.exit

if.else.i64:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %bad_mark to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @mtk_nfc_bad_mark_swap, ptr %bad_mark, align 4
  %98 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size.i, align 8
  %add.i.i = add i32 %99, %90
  %.frozen = freeze i32 %95
  %add.i.i.frozen = freeze i32 %add.i.i
  %div.i63 = udiv i32 %.frozen, %add.i.i.frozen
  %sec.i = getelementptr i8, ptr %chip, i32 2172
  %100 = ptrtoint ptr %sec.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %div.i63, ptr %sec.i, align 4
  %101 = mul i32 %div.i63, %add.i.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %101
  %pos.i = getelementptr i8, ptr %chip, i32 2176
  %102 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %rem.i.decomposed, ptr %pos.i, align 4
  br label %mtk_nfc_set_bad_mark_ctl.exit

mtk_nfc_set_bad_mark_ctl.exit:                    ; preds = %if.else.i64, %if.then.i62
  %103 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %oobsize.i, align 4
  %add = add i32 %104, %95
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %add, i32 noundef 3520) #9
  %buffer = getelementptr inbounds %struct.mtk_nfc, ptr %3, i32 0, i32 9
  %105 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i, ptr %buffer, align 4
  %tobool19.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool19.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %mtk_nfc_set_bad_mark_ctl.exit, %if.end12.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %do.end.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %mtk_nfc_set_bad_mark_ctl.exit ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call fastcc void @mtk_nfc_hw_reset(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 96) #9, !srcloc !192
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op, align 4
  tail call fastcc void @mtk_nfc_select_target(ptr noundef %chip, i32 noundef %5)
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %6 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.not = icmp eq i32 %7, 0
  br i1 %cmp23.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %for.body.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb14.i
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %for.body
  %ctx3.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1
  %15 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp138.not.i = icmp eq i32 %16, 0
  br i1 %cmp138.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1, i32 0, i32 1
  %dev1.i75.i = getelementptr inbounds %struct.mtk_nfc, ptr %11, i32 0, i32 4
  %regs.i.i76.i = getelementptr inbounds %struct.mtk_nfc, ptr %11, i32 0, i32 6
  br label %for.body.i

sw.bb.i:                                          ; preds = %for.body
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1
  %17 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ctx.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i.i, align 4
  %conv.i.i = zext i8 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %21 = shl nuw i32 %conv.i.i, 24
  %regs.i.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %21) #9, !srcloc !195
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 500000000
  %24 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %25, i32 96
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not4.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not4.i.i, label %sw.bb.i.for.inc_crit_edge, label %sw.bb.i.land.lhs.true.i.i_crit_edge

sw.bb.i.land.lhs.true.i.i_crit_edge:              ; preds = %sw.bb.i
  br label %land.lhs.true.i.i

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %sw.bb.i.land.lhs.true.i.i_crit_edge
  %call6.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call6.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #9
  %29 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 96
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  %32 = and i32 %31, 16777216
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i.for.inc_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

cond.false.i.i.for.inc_crit_edge:                 ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %33 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %34, i32 96
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool28.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool28.not.i.i, label %for.end.i.i.for.inc_crit_edge, label %do.end.i.i

for.end.i.i.for.inc_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.37) #12
  br label %for.inc

for.body.i:                                       ; preds = %mtk_nfc_send_address.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0139.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %mtk_nfc_send_address.exit.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %38, i32 %i.0139.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %dev1.i75.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i75.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %43 = shl nuw i32 %conv.i, 24
  %44 = ptrtoint ptr %regs.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i76.i, align 4
  %add.ptr.i.i77.i = getelementptr i8, ptr %45, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77.i, i32 %43) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %regs.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i76.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %47, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 0) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %regs.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i76.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %49, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i.i, i16 256) #9, !srcloc !192
  %call.i78.i = tail call i64 @ktime_get() #9
  %add.i.i79.i = add i64 %call.i78.i, 500000000
  %50 = ptrtoint ptr %regs.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i76.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %51, i32 96
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  %53 = and i32 %52, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not8.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not8.i.i, label %for.body.i.mtk_nfc_send_address.exit.i_crit_edge, label %for.body.i.land.lhs.true.i82.i_crit_edge

for.body.i.land.lhs.true.i82.i_crit_edge:         ; preds = %for.body.i
  br label %land.lhs.true.i82.i

for.body.i.mtk_nfc_send_address.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_send_address.exit.i

land.lhs.true.i82.i:                              ; preds = %cond.false.i85.i.land.lhs.true.i82.i_crit_edge, %for.body.i.land.lhs.true.i82.i_crit_edge
  %call6.i80.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i80.i, i64 %add.i.i79.i)
  %cmp3.i.i81.i = icmp sgt i64 %call6.i80.i, %add.i.i79.i
  br i1 %cmp3.i.i81.i, label %for.end.i86.i, label %cond.false.i85.i

cond.false.i85.i:                                 ; preds = %land.lhs.true.i82.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #9
  %55 = ptrtoint ptr %regs.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i76.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %56, i32 96
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  %58 = and i32 %57, 33554432
  %tobool.not.i84.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i84.i, label %cond.false.i85.i.mtk_nfc_send_address.exit.i_crit_edge, label %cond.false.i85.i.land.lhs.true.i82.i_crit_edge

cond.false.i85.i.land.lhs.true.i82.i_crit_edge:   ; preds = %cond.false.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i82.i

cond.false.i85.i.mtk_nfc_send_address.exit.i_crit_edge: ; preds = %cond.false.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_send_address.exit.i

for.end.i86.i:                                    ; preds = %land.lhs.true.i82.i
  %59 = ptrtoint ptr %regs.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i76.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %60, i32 96
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  %62 = and i32 %61, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool26.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool26.not.i.i, label %for.end.i86.i.mtk_nfc_send_address.exit.i_crit_edge, label %do.end.i87.i

for.end.i86.i.mtk_nfc_send_address.exit.i_crit_edge: ; preds = %for.end.i86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_send_address.exit.i

do.end.i87.i:                                     ; preds = %for.end.i86.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.39) #12
  br label %mtk_nfc_send_address.exit.i

mtk_nfc_send_address.exit.i:                      ; preds = %do.end.i87.i, %for.end.i86.i.mtk_nfc_send_address.exit.i_crit_edge, %cond.false.i85.i.mtk_nfc_send_address.exit.i_crit_edge, %for.body.i.mtk_nfc_send_address.exit.i_crit_edge
  %inc.i = add nuw i32 %i.0139.i, 1
  %63 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ctx3.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %64
  br i1 %cmp.i, label %mtk_nfc_send_address.exit.i.for.body.i_crit_edge, label %mtk_nfc_send_address.exit.i.for.inc_crit_edge

mtk_nfc_send_address.exit.i.for.inc_crit_edge:    ; preds = %mtk_nfc_send_address.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

mtk_nfc_send_address.exit.i.for.body.i_crit_edge: ; preds = %mtk_nfc_send_address.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sw.bb6.i:                                         ; preds = %for.body
  %ctx7.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf.i, align 4
  %67 = ptrtoint ptr %ctx7.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ctx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp3.i.i = icmp sgt i32 %68, 0
  br i1 %cmp3.i.i, label %sw.bb6.i.for.body.i.i_crit_edge, label %sw.bb6.i.for.inc_crit_edge

sw.bb6.i.for.inc_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb6.i.for.body.i.i_crit_edge:                  ; preds = %sw.bb6.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mtk_nfc_read_byte.exit.i.i.for.body.i.i_crit_edge, %sw.bb6.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %mtk_nfc_read_byte.exit.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb6.i.for.body.i.i_crit_edge ]
  %69 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv.i, align 8
  %regs.i.i.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %72, i32 96
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !196
  %74 = and i32 %73, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %74)
  %cmp.not.i.i.i = icmp eq i32 %74, 3584
  br i1 %cmp.not.i.i.i, label %for.body.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.if.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i.i.i, align 4
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %76) #9, !srcloc !190
  %78 = or i16 %77, 16896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %78) #9, !srcloc !192
  %caps.i.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %70, i32 0, i32 5
  %81 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %caps.i.i.i, align 4
  %max_sector.i.i.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %max_sector.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %max_sector.i.i.i, align 1
  %conv4.i.i.i = zext i8 %84 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv4.i.i.i, 12
  %or5.i.i.i = or i32 %shl.i.i.i, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i.i) #9
  %86 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i20.i.i.i = getelementptr i8, ptr %87, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i.i, i32 %85) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i22.i.i.i = getelementptr i8, ptr %89, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i.i.i, i16 256) #9, !srcloc !192
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.if.end.i.i.i_crit_edge
  %call.i.i.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i.i.i = add i64 %call.i.i.i.i, 500000000
  %90 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr43.i.i.i.i = getelementptr i8, ptr %91, i32 88
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43.i.i.i.i) #9, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not44.i.i.i.i = icmp eq i8 %93, 0
  br i1 %tobool.not44.i.i.i.i, label %if.end.i.i.i.land.lhs.true.i.i.i.i_crit_edge, label %if.end.i.i.i.for.end.i.i.i.i_crit_edge

if.end.i.i.i.for.end.i.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

if.end.i.i.i.land.lhs.true.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i
  br label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %cond.false.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %if.end.i.i.i.land.lhs.true.i.i.i.i_crit_edge
  %call5.i.i.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i.i.i.i, i64 %add.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp sgt i64 %call5.i.i.i.i, %add.i.i.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %if.then8.i.i.i.i, label %cond.false.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr12.i.i.i.i = getelementptr i8, ptr %95, i32 88
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i.i.i.i) #9, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  br label %for.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 2147480) #9
  %98 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i24.i.i.i = getelementptr i8, ptr %99, i32 88
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24.i.i.i) #9, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %101 = and i8 %100, 1
  %tobool.not.i.i.i.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, label %cond.false.i.i.i.i.for.end.i.i.i.i_crit_edge

cond.false.i.i.i.i.for.end.i.i.i.i_crit_edge:     ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

cond.false.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %cond.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %cond.false.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.then8.i.i.i.i, %if.end.i.i.i.for.end.i.i.i.i_crit_edge
  %val.0.i.i.i.i = phi i8 [ %96, %if.then8.i.i.i.i ], [ %92, %if.end.i.i.i.for.end.i.i.i.i_crit_edge ], [ %100, %cond.false.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %102 = and i8 %val.0.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool28.not.i.i.i.i = icmp eq i8 %102, 0
  br i1 %tobool28.not.i.i.i.i, label %do.end.i.i.i.i, label %for.end.i.i.i.i.mtk_nfc_read_byte.exit.i.i_crit_edge

for.end.i.i.i.i.mtk_nfc_read_byte.exit.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_read_byte.exit.i.i

do.end.i.i.i.i:                                   ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %70, i32 0, i32 4
  %103 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.41) #12
  br label %mtk_nfc_read_byte.exit.i.i

mtk_nfc_read_byte.exit.i.i:                       ; preds = %do.end.i.i.i.i, %for.end.i.i.i.i.mtk_nfc_read_byte.exit.i.i_crit_edge
  %105 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i26.i.i.i = getelementptr i8, ptr %106, i32 84
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i26.i.i.i) #9, !srcloc !201
  %arrayidx.i.i = getelementptr i8, ptr %66, i32 %i.04.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %68
  br i1 %exitcond.not.i.i, label %mtk_nfc_read_byte.exit.i.i.for.inc_crit_edge, label %mtk_nfc_read_byte.exit.i.i.for.body.i.i_crit_edge

mtk_nfc_read_byte.exit.i.i.for.body.i.i_crit_edge: ; preds = %mtk_nfc_read_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mtk_nfc_read_byte.exit.i.i.for.inc_crit_edge:     ; preds = %mtk_nfc_read_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb9.i:                                         ; preds = %for.body
  %ctx10.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1
  %buf11.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %buf11.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buf11.i, align 4
  %111 = ptrtoint ptr %ctx10.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ctx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp3.i89.i = icmp sgt i32 %112, 0
  br i1 %cmp3.i89.i, label %sw.bb9.i.for.body.i97.i_crit_edge, label %sw.bb9.i.for.inc_crit_edge

sw.bb9.i.for.inc_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb9.i.for.body.i97.i_crit_edge:                ; preds = %sw.bb9.i
  br label %for.body.i97.i

for.body.i97.i:                                   ; preds = %mtk_nfc_write_byte.exit.i.i.for.body.i97.i_crit_edge, %sw.bb9.i.for.body.i97.i_crit_edge
  %i.04.i92.i = phi i32 [ %inc.i124.i, %mtk_nfc_write_byte.exit.i.i.for.body.i97.i_crit_edge ], [ 0, %sw.bb9.i.for.body.i97.i_crit_edge ]
  %arrayidx.i93.i = getelementptr i8, ptr %110, i32 %i.04.i92.i
  %113 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i93.i, align 1
  %115 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv.i, align 8
  %regs.i.i.i94.i = getelementptr inbounds %struct.mtk_nfc, ptr %116, i32 0, i32 6
  %117 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr.i.i.i95.i = getelementptr i8, ptr %118, i32 96
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i95.i) #9, !srcloc !196
  %120 = and i32 %119, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %120)
  %cmp.not.i.i96.i = icmp eq i32 %120, 3584
  br i1 %cmp.not.i.i96.i, label %for.body.i97.i.if.end.i.i109.i_crit_edge, label %if.then.i.i104.i

for.body.i97.i.if.end.i.i109.i_crit_edge:         ; preds = %for.body.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i109.i

if.then.i.i104.i:                                 ; preds = %for.body.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i.i.i94.i, align 4
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %122) #9, !srcloc !190
  %124 = or i16 %123, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i.i.i94.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %126, i16 %124) #9, !srcloc !192
  %caps.i.i98.i = getelementptr inbounds %struct.mtk_nfc, ptr %116, i32 0, i32 5
  %127 = ptrtoint ptr %caps.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %caps.i.i98.i, align 4
  %max_sector.i.i99.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %max_sector.i.i99.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %max_sector.i.i99.i, align 1
  %conv4.i.i100.i = zext i8 %130 to i32
  %shl.i.i101.i = shl nuw nsw i32 %conv4.i.i100.i, 12
  %or5.i.i102.i = or i32 %shl.i.i101.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %131 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i102.i) #9
  %132 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr.i18.i.i.i = getelementptr i8, ptr %133, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i.i, i32 %131) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr.i20.i.i103.i = getelementptr i8, ptr %135, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i20.i.i103.i, i16 256) #9, !srcloc !192
  br label %if.end.i.i109.i

if.end.i.i109.i:                                  ; preds = %if.then.i.i104.i, %for.body.i97.i.if.end.i.i109.i_crit_edge
  %call.i.i.i105.i = tail call i64 @ktime_get() #9
  %add.i.i.i.i106.i = add i64 %call.i.i.i105.i, 500000000
  %136 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr43.i.i.i107.i = getelementptr i8, ptr %137, i32 88
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43.i.i.i107.i) #9, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %139 = and i8 %138, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not44.i.i.i108.i = icmp eq i8 %139, 0
  br i1 %tobool.not44.i.i.i108.i, label %if.end.i.i109.i.land.lhs.true.i.i.i112.i_crit_edge, label %if.end.i.i109.i.for.end.i.i.i120.i_crit_edge

if.end.i.i109.i.for.end.i.i.i120.i_crit_edge:     ; preds = %if.end.i.i109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i120.i

if.end.i.i109.i.land.lhs.true.i.i.i112.i_crit_edge: ; preds = %if.end.i.i109.i
  br label %land.lhs.true.i.i.i112.i

land.lhs.true.i.i.i112.i:                         ; preds = %cond.false.i.i.i117.i.land.lhs.true.i.i.i112.i_crit_edge, %if.end.i.i109.i.land.lhs.true.i.i.i112.i_crit_edge
  %call5.i.i.i110.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i.i.i110.i, i64 %add.i.i.i.i106.i)
  %cmp3.i.i.i.i111.i = icmp sgt i64 %call5.i.i.i110.i, %add.i.i.i.i106.i
  br i1 %cmp3.i.i.i.i111.i, label %if.then8.i.i.i114.i, label %cond.false.i.i.i117.i

if.then8.i.i.i114.i:                              ; preds = %land.lhs.true.i.i.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr12.i.i.i113.i = getelementptr i8, ptr %141, i32 88
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i.i.i113.i) #9, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  br label %for.end.i.i.i120.i

cond.false.i.i.i117.i:                            ; preds = %land.lhs.true.i.i.i112.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 2147480) #9
  %144 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr.i22.i.i115.i = getelementptr i8, ptr %145, i32 88
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i22.i.i115.i) #9, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %147 = and i8 %146, 1
  %tobool.not.i.i.i116.i = icmp eq i8 %147, 0
  br i1 %tobool.not.i.i.i116.i, label %cond.false.i.i.i117.i.land.lhs.true.i.i.i112.i_crit_edge, label %cond.false.i.i.i117.i.for.end.i.i.i120.i_crit_edge

cond.false.i.i.i117.i.for.end.i.i.i120.i_crit_edge: ; preds = %cond.false.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i120.i

cond.false.i.i.i117.i.land.lhs.true.i.i.i112.i_crit_edge: ; preds = %cond.false.i.i.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i112.i

for.end.i.i.i120.i:                               ; preds = %cond.false.i.i.i117.i.for.end.i.i.i120.i_crit_edge, %if.then8.i.i.i114.i, %if.end.i.i109.i.for.end.i.i.i120.i_crit_edge
  %val.0.i.i.i118.i = phi i8 [ %142, %if.then8.i.i.i114.i ], [ %138, %if.end.i.i109.i.for.end.i.i.i120.i_crit_edge ], [ %146, %cond.false.i.i.i117.i.for.end.i.i.i120.i_crit_edge ]
  %148 = and i8 %val.0.i.i.i118.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool28.not.i.i.i119.i = icmp eq i8 %148, 0
  br i1 %tobool28.not.i.i.i119.i, label %do.end.i.i.i122.i, label %for.end.i.i.i120.i.mtk_nfc_write_byte.exit.i.i_crit_edge

for.end.i.i.i120.i.mtk_nfc_write_byte.exit.i.i_crit_edge: ; preds = %for.end.i.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_write_byte.exit.i.i

do.end.i.i.i122.i:                                ; preds = %for.end.i.i.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i121.i = getelementptr inbounds %struct.mtk_nfc, ptr %116, i32 0, i32 4
  %149 = ptrtoint ptr %dev.i.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i.i.i121.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.41) #12
  br label %mtk_nfc_write_byte.exit.i.i

mtk_nfc_write_byte.exit.i.i:                      ; preds = %do.end.i.i.i122.i, %for.end.i.i.i120.i.mtk_nfc_write_byte.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %151 = ptrtoint ptr %regs.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i.i94.i, align 4
  %add.ptr.i24.i.i123.i = getelementptr i8, ptr %152, i32 80
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24.i.i123.i, i8 %114) #9, !srcloc !205
  %inc.i124.i = add nuw nsw i32 %i.04.i92.i, 1
  %exitcond.not.i125.i = icmp eq i32 %inc.i124.i, %112
  br i1 %exitcond.not.i125.i, label %mtk_nfc_write_byte.exit.i.i.for.inc_crit_edge, label %mtk_nfc_write_byte.exit.i.i.for.body.i97.i_crit_edge

mtk_nfc_write_byte.exit.i.i.for.body.i97.i_crit_edge: ; preds = %mtk_nfc_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i97.i

mtk_nfc_write_byte.exit.i.i.for.inc_crit_edge:    ; preds = %mtk_nfc_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb14.i:                                        ; preds = %for.body
  %ctx15.i = getelementptr %struct.nand_op_instr, ptr %9, i32 %i.024, i32 1
  %153 = ptrtoint ptr %ctx15.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ctx15.i, align 4
  %mul.i = mul i32 %154, 1000
  %conv16.i = zext i32 %mul.i to i64
  %call17.i = tail call i64 @ktime_get() #9
  %mul.i.i = mul nuw nsw i64 %conv16.i, 1000
  %add.i.i = add i64 %mul.i.i, %call17.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 492) #9
  %regs.i15 = getelementptr inbounds %struct.mtk_nfc, ptr %11, i32 0, i32 6
  %155 = ptrtoint ptr %regs.i15 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i15, align 4
  %add.ptr135.i = getelementptr i8, ptr %156, i32 96
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %158 = and i32 %157, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not137.i = icmp eq i32 %158, 0
  br i1 %tobool.not137.i, label %sw.bb14.i.for.inc_crit_edge, label %if.end31.lr.ph.i

sw.bb14.i.for.inc_crit_edge:                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end31.lr.ph.i:                                 ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool32.not.i = icmp eq i32 %mul.i, 0
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then47.i.if.end31.i_crit_edge, %if.end31.lr.ph.i
  br i1 %tobool32.not.i, label %if.end31.i.if.then47.i_crit_edge, label %land.lhs.true.i

if.end31.i.if.then47.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i

land.lhs.true.i:                                  ; preds = %if.end31.i
  %call33.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call33.i, i64 %add.i.i)
  %cmp3.i127.i = icmp sgt i64 %call33.i, %add.i.i
  br i1 %cmp3.i127.i, label %for.end49.i, label %land.lhs.true.i.if.then47.i_crit_edge

land.lhs.true.i.if.then47.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i

if.then47.i:                                      ; preds = %land.lhs.true.i.if.then47.i_crit_edge, %if.end31.i.if.then47.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #9
  %159 = ptrtoint ptr %regs.i15 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i15, align 4
  %add.ptr.i = getelementptr i8, ptr %160, i32 96
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %162 = and i32 %161, 65536
  %tobool.not.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i, label %if.then47.i.for.inc_crit_edge, label %if.then47.i.if.end31.i_crit_edge

if.then47.i.if.end31.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then47.i.for.inc_crit_edge:                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.end49.i:                                      ; preds = %land.lhs.true.i
  %163 = ptrtoint ptr %regs.i15 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i15, align 4
  %add.ptr41.i = getelementptr i8, ptr %164, i32 96
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  %166 = and i32 %165, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool52.not.i = icmp eq i32 %166, 0
  br i1 %tobool52.not.i, label %for.end49.i.for.inc_crit_edge, label %for.end49.i.cleanup_crit_edge

for.end49.i.cleanup_crit_edge:                    ; preds = %for.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end49.i.for.inc_crit_edge:                    ; preds = %for.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %for.end49.i.for.inc_crit_edge, %if.then47.i.for.inc_crit_edge, %sw.bb14.i.for.inc_crit_edge, %mtk_nfc_write_byte.exit.i.i.for.inc_crit_edge, %sw.bb9.i.for.inc_crit_edge, %mtk_nfc_read_byte.exit.i.i.for.inc_crit_edge, %sw.bb6.i.for.inc_crit_edge, %mtk_nfc_send_address.exit.i.for.inc_crit_edge, %do.end.i.i, %for.end.i.i.for.inc_crit_edge, %cond.false.i.i.for.inc_crit_edge, %sw.bb.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %167 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %168
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.end49.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -110, %for.end49.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_setup_interface(ptr nocapture noundef readonly %chip, i32 noundef %csline, ptr noundef readonly %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %clk = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_get_rate(ptr noundef %6) #9
  %caps = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 4
  %nfi_clk_div = getelementptr inbounds %struct.mtk_nfc_caps, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %nfi_clk_div to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nfi_clk_div, align 2
  %conv = zext i8 %10 to i32
  %div = udiv i32 %call5, %conv
  %div6 = udiv i32 %div, 1000
  %tALH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 4
  %11 = ptrtoint ptr %tALH_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tALH_min, align 8
  %tCLH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 12
  %13 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tCLH_min, align 8
  %15 = tail call i32 @llvm.umax.i32(i32 %12, i32 %14)
  %div9 = udiv i32 %15, 1000
  %mul = mul i32 %div9, %div6
  %sub = add i32 %mul, 999999
  %div10 = udiv i32 %sub, 1000000
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 14
  %16 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tCLS_min, align 8
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 6
  %18 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tALS_min, align 8
  %20 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19)
  %div18 = udiv i32 %20, 1000
  %mul19 = mul i32 %div18, %div6
  %sub21 = add i32 %mul19, 999999
  %div22 = udiv i32 %sub21, 1000000
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %21 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tWHR_min, align 4
  %div24 = udiv i32 %22, 1000
  %mul25 = mul i32 %div24, %div6
  %sub27 = add i32 %mul25, 999999
  %div32 = udiv i32 %sub27, 2000000
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %23 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tREH_min, align 8
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %25 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tWH_min, align 8
  %27 = tail call i32 @llvm.umax.i32(i32 %24, i32 %26)
  %div41 = udiv i32 %27, 1000
  %mul42 = mul i32 %div41, %div6
  %sub44 = add i32 %mul42, 999999
  %div45 = udiv i32 %sub44, 1000000
  %sub46 = add nuw nsw i32 %div45, 15
  %and47 = and i32 %sub46, 15
  %28 = mul nuw nsw i32 %and47, 1000000
  %mul49 = add nuw nsw i32 %28, 1000000
  %div50 = udiv i32 %mul49, %div6
  %mul51 = mul i32 %div50, 1000
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %29 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tWC_min, align 4
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %mul51)
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %32 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tWP_min, align 8
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %31)
  %div65 = udiv i32 %34, 1000
  %mul66 = mul i32 %div65, %div6
  %sub68 = add i32 %mul66, 999999
  %div69 = udiv i32 %sub68, 1000000
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %35 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tRC_min, align 8
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %mul51)
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %38 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tRP_min, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %37, i32 %39)
  %div85 = udiv i32 %40, 1000
  %mul86 = mul i32 %div85, %div6
  %sub88 = add i32 %mul86, 999999
  %div89 = udiv i32 %sub88, 1000000
  %sub90 = add nuw nsw i32 %div89, 15
  %and91 = and i32 %sub90, 15
  %add92 = add nuw nsw i32 %and91, 1
  %mul93 = mul nuw nsw i32 %add92, 1000000
  %div94 = udiv i32 %mul93, %div6
  %mul95 = mul i32 %div94, 1000
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %41 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tREA_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul95, i32 %42)
  %cmp96 = icmp ult i32 %mul95, %42
  br i1 %cmp96, label %if.then98, label %if.end4.if.end113_crit_edge

if.end4.if.end113_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then98:                                        ; preds = %if.end4
  %div100 = udiv i32 %42, 1000
  %mul101 = mul i32 %div100, %div6
  %sub103 = add i32 %mul101, 999999
  %div104 = udiv i32 %sub103, 1000000
  %sub106 = sub nsw i32 %div104, %add92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub106)
  %cmp107 = icmp ugt i32 %sub106, 3
  br i1 %cmp107, label %if.then109, label %if.then98.if.end113_crit_edge

if.then98.if.end113_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then109:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %sub110 = add nsw i32 %and91, -3
  %add111 = add nsw i32 %sub110, %sub106
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.then98.if.end113_crit_edge, %if.end4.if.end113_crit_edge
  %trlt.1 = phi i32 [ %add111, %if.then109 ], [ %and91, %if.then98.if.end113_crit_edge ], [ %and91, %if.end4.if.end113_crit_edge ]
  %tsel.0 = phi i32 [ 3, %if.then109 ], [ %sub106, %if.then98.if.end113_crit_edge ], [ 0, %if.end4.if.end113_crit_edge ]
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 544
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !196
  %46 = and i32 %45, -402653185
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %shl = shl nuw nsw i32 %tsel.0, 3
  %or = or i32 %47, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %50, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %48) #9, !srcloc !195
  %shl116 = shl i32 %div10, 28
  %and23 = shl i32 %div22, 22
  %shl117 = and i32 %and23, 264241152
  %or118 = or i32 %shl117, %shl116
  %and33 = shl nuw nsw i32 %div32, 12
  %shl121 = and i32 %and33, 61440
  %or122 = or i32 %or118, %shl121
  %shl123 = shl nuw nsw i32 %and47, 8
  %or124 = or i32 %shl123, %or122
  %sub70 = shl nuw nsw i32 %div69, 4
  %and71 = add nuw nsw i32 %sub70, 240
  %shl125 = and i32 %and71, 240
  %or126 = or i32 %shl125, %or124
  %or127 = or i32 %trlt.1, %or126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %or127) #9
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i224 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %51) #9, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end113 ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ecc_get_parity_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ecc_adjust_strength(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_nfc_no_bad_mark_swap(ptr nocapture noundef %a, ptr nocapture noundef %b, i32 noundef %c) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_nfc_bad_mark_swap(ptr nocapture noundef readonly %mtd, ptr nocapture noundef %buf, i32 noundef %raw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr i8, ptr %mtd, i32 2176
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not = icmp eq i32 %raw, 0
  %sec5 = getelementptr i8, ptr %mtd, i32 2172
  %2 = ptrtoint ptr %sec5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sec5, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spare_per_sector.i = getelementptr i8, ptr %mtd, i32 2188
  %6 = ptrtoint ptr %spare_per_sector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spare_per_sector.i, align 4
  %add.i = add i32 %7, %5
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %add.i.sink = phi i32 [ %add.i, %if.then ], [ %5, %entry.do.body_crit_edge ]
  %mul = mul i32 %add.i.sink, %3
  %bad_pos.0 = add i32 %mul, %1
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 23
  %8 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oob_poi, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %arrayidx8 = getelementptr i8, ptr %buf, i32 %bad_pos.0
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  store i8 %13, ptr %9, align 1
  store i8 %11, ptr %arrayidx8, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_nfc_hw_reset(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mtk_nfc, ptr %nfc, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %nfc, i32 0, i32 6
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #9, !srcloc !195
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 271) #9
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr54 = getelementptr i8, ptr %5, i32 548
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %7 = and i32 %6, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not56 = icmp eq i32 %7, 0
  br i1 %tobool.not56, label %entry.if.end37_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 548
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %11 = and i32 %10, -15794176
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then27.if.end37_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.end:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 548
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !196
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  %.pre = and i32 %15, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool31.not = icmp eq i32 %.pre, 0
  br i1 %tobool31.not, label %for.end.if.end37_crit_edge, label %do.end36

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 548, i32 noundef %15) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %for.end.if.end37_crit_edge, %if.then27.if.end37_crit_edge, %entry.if.end37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 50331648) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i52, i16 0) #9, !srcloc !192
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_nfc_select_target(ptr nocapture noundef readonly %nand, i32 noundef %cs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %2 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.mtk_nfc_hw_runtime_config.exit_crit_edge, label %if.end.i

entry.mtk_nfc_hw_runtime_config.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_hw_runtime_config.exit

if.end.i:                                         ; preds = %entry
  %spare_per_sector.i = getelementptr i8, ptr %nand, i32 2188
  %4 = ptrtoint ptr %spare_per_sector.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spare_per_sector.i, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %do.end.i [
    i32 512, label %if.end.i.sw.epilog.i_crit_edge
    i32 2048, label %sw.bb4.i
    i32 4096, label %sw.bb7.i
    i32 8192, label %sw.bb14.i
    i32 16384, label %sw.bb21.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %cmp.i = icmp eq i32 %8, 512
  %..i = select i1 %cmp.i, i32 5, i32 0
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %size9.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %9 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %10)
  %cmp10.i = icmp eq i32 %10, 512
  %.1.i = select i1 %cmp10.i, i32 6, i32 1
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %size16.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %11 = ptrtoint ptr %size16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %cmp17.i = icmp eq i32 %12, 512
  %.2.i = select i1 %cmp17.i, i32 7, i32 2
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.32, i32 noundef %3) #12
  br label %mtk_nfc_hw_runtime_config.exit

sw.epilog.i:                                      ; preds = %sw.bb21.i, %sw.bb14.i, %sw.bb7.i, %sw.bb4.i, %if.end.i.sw.epilog.i_crit_edge
  %fmt.0.i = phi i32 [ 3, %sw.bb21.i ], [ 4, %if.end.i.sw.epilog.i_crit_edge ], [ %..i, %sw.bb4.i ], [ %.1.i, %sw.bb7.i ], [ %.2.i, %sw.bb14.i ]
  %size24.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %15 = ptrtoint ptr %size24.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %16)
  %cmp25.i = icmp eq i32 %16, 1024
  %shr.i = zext i1 %cmp25.i to i32
  %spec.select.i = lshr i32 %5, %shr.i
  %caps.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i, align 4
  %num_spare_size.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %num_spare_size.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_spare_size.i, align 4
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp285.not.i = icmp eq i8 %20, 0
  br i1 %cmp285.not.i, label %sw.epilog.i.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.epilog.i
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %22, i32 %i.06.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %conv31.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv31.i)
  %cmp32.i = icmp eq i32 %spec.select.i, %conv31.i
  br i1 %cmp32.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end44.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end44.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.epilog.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.epilog.i.for.end.i_crit_edge ], [ %i.06.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp39.i = icmp eq i32 %i.0.lcssa.i, %conv.i
  br i1 %cmp39.i, label %for.end.i.do.end44.i_crit_edge, label %if.end46.i

for.end.i.do.end44.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

do.end44.i:                                       ; preds = %for.end.i.do.end44.i_crit_edge, %for.inc.i.do.end44.i_crit_edge
  %dev45.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev45.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i) #12
  br label %mtk_nfc_hw_runtime_config.exit

if.end46.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pageformat_spare_shift.i = getelementptr inbounds %struct.mtk_nfc_caps, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %pageformat_spare_shift.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pageformat_spare_shift.i, align 1
  %conv48.i = zext i8 %28 to i32
  %shl.i = shl i32 %i.0.lcssa.i, %conv48.i
  %or.i = or i32 %shl.i, %fmt.0.i
  %fdm.i = getelementptr i8, ptr %nand, i32 2180
  %29 = ptrtoint ptr %fdm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fdm.i, align 4
  %shl49.i = shl i32 %30, 8
  %or50.i = or i32 %or.i, %shl49.i
  %ecc_size.i = getelementptr i8, ptr %nand, i32 2184
  %31 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_size.i, align 4
  %shl52.i = shl i32 %32, 12
  %or53.i = or i32 %or50.i, %shl52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %or53.i) #9
  %regs.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %33) #9, !srcloc !195
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %36 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %strength.i, align 4
  %strength55.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %strength55.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %strength55.i, align 4
  %39 = ptrtoint ptr %size24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size24.i, align 8
  %41 = ptrtoint ptr %ecc_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ecc_size.i, align 4
  %add.i = add i32 %42, %40
  %len.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i, ptr %len.i, align 4
  br label %mtk_nfc_hw_runtime_config.exit

mtk_nfc_hw_runtime_config.exit:                   ; preds = %if.end46.i, %do.end44.i, %do.end.i, %entry.mtk_nfc_hw_runtime_config.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %nand, i32 -8
  %arrayidx = getelementptr %struct.mtk_nfc_nand_chip, ptr %add.ptr.i, i32 0, i32 6, i32 %cs
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %45 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %46 = shl nuw i32 %conv, 24
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %48, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %46) #9, !srcloc !195
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_write_subpage_hwecc(ptr noundef %chip, i32 noundef %offset, i32 noundef %data_len, ptr nocapture noundef readonly %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fdm3.i = getelementptr i8, ptr %chip, i32 2180
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 8
  %div.i = udiv i32 %offset, %3
  %add.i = add i32 %offset, -1
  %add6.i = add i32 %add.i, %data_len
  %sub.i = add i32 %add6.i, %3
  %div9.i = udiv i32 %sub.i, %3
  %buffer.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oobsize.i, align 4
  %add10.i = add i32 %9, %7
  %10 = call ptr @memset(ptr %5, i32 255, i32 %add10.i)
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %11 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp85.i = icmp sgt i32 %12, 0
  br i1 %cmp85.i, label %for.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %spare_per_sector.i.i.i = getelementptr i8, ptr %chip, i32 2188
  %sec.i = getelementptr i8, ptr %chip, i32 2172
  %bad_mark.i = getelementptr i8, ptr %chip, i32 2168
  %oob_poi5.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.086.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %buffer.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer.i.i, align 4
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 8
  %19 = ptrtoint ptr %spare_per_sector.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %spare_per_sector.i.i.i, align 4
  %add.i.i.i = add i32 %20, %18
  %mul.i.i = mul i32 %add.i.i.i, %i.086.i
  %add.ptr.i66.i = getelementptr i8, ptr %16, i32 %mul.i.i
  %mul.i67.i = mul i32 %18, %i.086.i
  %add.ptr.i68.i = getelementptr i8, ptr %buf, i32 %mul.i67.i
  %21 = call ptr @memcpy(ptr %add.ptr.i66.i, ptr %add.ptr.i68.i, i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %i.086.i)
  %cmp16.i = icmp ule i32 %div.i, %i.086.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086.i, i32 %div9.i)
  %cmp17.not.i = icmp ult i32 %i.086.i, %div9.i
  %or.cond.i = select i1 %cmp16.i, i1 %cmp17.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %22 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086.i, i32 %23)
  %cmp18.i = icmp eq i32 %i.086.i, %23
  br i1 %cmp18.i, label %if.then19.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %bad_mark.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bad_mark.i, align 8
  %26 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer.i, align 4
  tail call void %25(ptr noundef %chip, ptr noundef %27, i32 noundef 1) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end.i.if.end22.i_crit_edge
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  %buffer.i70.i = getelementptr inbounds %struct.mtk_nfc, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %buffer.i70.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer.i70.i, align 4
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 8
  %34 = ptrtoint ptr %spare_per_sector.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %spare_per_sector.i.i.i, align 4
  %add.i.i73.i = add i32 %35, %33
  %mul.i74.i = mul i32 %add.i.i73.i, %i.086.i
  %add.ptr.i75.i = getelementptr i8, ptr %31, i32 %mul.i74.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i75.i, i32 %33
  %36 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %i.086.i)
  %cmp.i.i = icmp ugt i32 %37, %i.086.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi5.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.086.i, 1
  br label %if.end12.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %i.086.i)
  %cmp3.i.i = icmp eq i32 %37, %i.086.i
  %40 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %oob_poi5.i.i, align 4
  br i1 %cmp3.i.i, label %if.else.i.i.oob_ptr.exit.i_crit_edge, label %if.else.i.i.if.end12.sink.split.i.i_crit_edge

if.else.i.i.if.end12.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i.i

if.else.i.i.oob_ptr.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_ptr.exit.i

if.end12.sink.split.i.i:                          ; preds = %if.else.i.i.if.end12.sink.split.i.i_crit_edge, %if.then.i.i
  %i.sink.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %i.086.i, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi ptr [ %39, %if.then.i.i ], [ %41, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %42 = ptrtoint ptr %fdm3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fdm3.i, align 4
  %mul10.i.i = mul i32 %43, %i.sink.i.i
  %add.ptr11.i.i = getelementptr i8, ptr %.sink.i.i, i32 %mul10.i.i
  br label %oob_ptr.exit.i

oob_ptr.exit.i:                                   ; preds = %if.end12.sink.split.i.i, %if.else.i.i.oob_ptr.exit.i_crit_edge
  %poi.0.i.i = phi ptr [ %41, %if.else.i.i.oob_ptr.exit.i_crit_edge ], [ %add.ptr11.i.i, %if.end12.sink.split.i.i ]
  %44 = ptrtoint ptr %fdm3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fdm3.i, align 4
  %46 = call ptr @memcpy(ptr %add.ptr2.i.i, ptr %poi.0.i.i, i32 %45)
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %buffer.i77.i = getelementptr inbounds %struct.mtk_nfc, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %buffer.i77.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer.i77.i, align 4
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 8
  %53 = ptrtoint ptr %spare_per_sector.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %spare_per_sector.i.i.i, align 4
  %add.i.i80.i = add i32 %54, %52
  %mul.i81.i = mul i32 %add.i.i80.i, %i.086.i
  %add.ptr.i82.i = getelementptr i8, ptr %50, i32 %mul.i81.i
  %55 = load i32, ptr %fdm3.i, align 4
  %add.i84.i = add i32 %55, %52
  %ecc_cfg.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %48, i32 0, i32 1
  %mode.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %48, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mode.i.i, align 4
  %57 = ptrtoint ptr %ecc_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %ecc_cfg.i.i, align 4
  %ecc4.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %48, i32 0, i32 3
  %58 = ptrtoint ptr %ecc4.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ecc4.i.i, align 4
  %call6.i.i = tail call i32 @mtk_ecc_encode(ptr noundef %59, ptr noundef %ecc_cfg.i.i, ptr noundef %add.ptr.i82.i, i32 noundef %add.i84.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp27.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp27.i, label %oob_ptr.exit.i.cleanup_crit_edge, label %oob_ptr.exit.i.for.inc.i_crit_edge

oob_ptr.exit.i.for.inc.i_crit_edge:               ; preds = %oob_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

oob_ptr.exit.i.cleanup_crit_edge:                 ; preds = %oob_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %oob_ptr.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %60 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %61
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %62 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer.i, align 4
  %call3 = tail call fastcc i32 @mtk_nfc_write_page(ptr noundef %chip, ptr noundef %chip, ptr noundef %63, i32 noundef %page, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %oob_ptr.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call6.i.i, %oob_ptr.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_write_page_raw(ptr noundef %chip, ptr noundef readonly %buf, i32 noundef %oob_on, i32 noundef %pg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fdm3.i = getelementptr i8, ptr %chip, i32 2180
  %buffer.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize.i, align 4
  %add.i = add i32 %7, %5
  %8 = call ptr @memset(ptr %3, i32 255, i32 %add.i)
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44.not.i = icmp eq i32 %10, 0
  br i1 %cmp44.not.i, label %entry.mtk_nfc_format_page.exit_crit_edge, label %for.body.lr.ph.i

entry.mtk_nfc_format_page.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_format_page.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %buf, null
  %size.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %spare_per_sector.i.i.i = getelementptr i8, ptr %chip, i32 2188
  %sec.i = getelementptr i8, ptr %chip, i32 2172
  %bad_mark.i = getelementptr i8, ptr %chip, i32 2168
  %oob_poi5.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %oob_ptr.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %oob_ptr.exit.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %buffer.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.i.i, align 4
  %15 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i.i.i, align 8
  %17 = ptrtoint ptr %spare_per_sector.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %spare_per_sector.i.i.i, align 4
  %add.i.i.i = add i32 %18, %16
  %mul.i.i = mul i32 %add.i.i.i, %i.045.i
  %add.ptr.i34.i = getelementptr i8, ptr %14, i32 %mul.i.i
  %mul.i35.i = mul i32 %16, %i.045.i
  %add.ptr.i36.i = getelementptr i8, ptr %buf, i32 %mul.i35.i
  %19 = call ptr @memcpy(ptr %add.ptr.i34.i, ptr %add.ptr.i36.i, i32 %16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %20 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.045.i, i32 %21)
  %cmp7.i = icmp eq i32 %i.045.i, %21
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %bad_mark.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bad_mark.i, align 8
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i, align 4
  tail call void %23(ptr noundef %chip, ptr noundef %25, i32 noundef 1) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 8
  %buffer.i38.i = getelementptr inbounds %struct.mtk_nfc, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %buffer.i38.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer.i38.i, align 4
  %30 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i.i, align 8
  %32 = ptrtoint ptr %spare_per_sector.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %spare_per_sector.i.i.i, align 4
  %add.i.i41.i = add i32 %33, %31
  %mul.i42.i = mul i32 %add.i.i41.i, %i.045.i
  %add.ptr.i43.i = getelementptr i8, ptr %29, i32 %mul.i42.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i43.i, i32 %31
  %34 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.045.i)
  %cmp.i.i = icmp ugt i32 %35, %i.045.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %oob_poi5.i.i, align 4
  %add.i.i = add nuw i32 %i.045.i, 1
  br label %if.end12.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.045.i)
  %cmp3.i.i = icmp eq i32 %35, %i.045.i
  %38 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi5.i.i, align 4
  br i1 %cmp3.i.i, label %if.else.i.i.oob_ptr.exit.i_crit_edge, label %if.else.i.i.if.end12.sink.split.i.i_crit_edge

if.else.i.i.if.end12.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i.i

if.else.i.i.oob_ptr.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_ptr.exit.i

if.end12.sink.split.i.i:                          ; preds = %if.else.i.i.if.end12.sink.split.i.i_crit_edge, %if.then.i.i
  %i.sink.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %i.045.i, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi ptr [ %37, %if.then.i.i ], [ %39, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %40 = ptrtoint ptr %fdm3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fdm3.i, align 4
  %mul10.i.i = mul i32 %41, %i.sink.i.i
  %add.ptr11.i.i = getelementptr i8, ptr %.sink.i.i, i32 %mul10.i.i
  br label %oob_ptr.exit.i

oob_ptr.exit.i:                                   ; preds = %if.end12.sink.split.i.i, %if.else.i.i.oob_ptr.exit.i_crit_edge
  %poi.0.i.i = phi ptr [ %39, %if.else.i.i.oob_ptr.exit.i_crit_edge ], [ %add.ptr11.i.i, %if.end12.sink.split.i.i ]
  %42 = ptrtoint ptr %fdm3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fdm3.i, align 4
  %44 = call ptr @memcpy(ptr %add.ptr2.i.i, ptr %poi.0.i.i, i32 %43)
  %inc.i = add nuw i32 %i.045.i, 1
  %45 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %46
  br i1 %cmp.i, label %oob_ptr.exit.i.for.body.i_crit_edge, label %oob_ptr.exit.i.mtk_nfc_format_page.exit_crit_edge

oob_ptr.exit.i.mtk_nfc_format_page.exit_crit_edge: ; preds = %oob_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_format_page.exit

oob_ptr.exit.i.for.body.i_crit_edge:              ; preds = %oob_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mtk_nfc_format_page.exit:                         ; preds = %oob_ptr.exit.i.mtk_nfc_format_page.exit_crit_edge, %entry.mtk_nfc_format_page.exit_crit_edge
  %47 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer.i, align 4
  %call2 = tail call fastcc i32 @mtk_nfc_write_page(ptr noundef %chip, ptr noundef %chip, ptr noundef %48, i32 noundef %pg, i32 noundef 1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_write_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @mtk_nfc_write_page(ptr noundef %chip, ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_write_oob_std(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %fdm3.i.i = getelementptr i8, ptr %chip, i32 2180
  %buffer.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer.i.i, align 4
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize.i.i, align 4
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize.i.i, align 4
  %add.i.i = add i32 %7, %5
  %8 = call ptr @memset(ptr %3, i32 255, i32 %add.i.i)
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp44.not.i.i, label %entry.mtk_nfc_write_page_raw.exit_crit_edge, label %for.body.lr.ph.i.i

entry.mtk_nfc_write_page_raw.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_write_page_raw.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %size.i.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %spare_per_sector.i.i.i.i = getelementptr i8, ptr %chip, i32 2188
  %sec.i.i = getelementptr i8, ptr %chip, i32 2172
  %bad_mark.i.i = getelementptr i8, ptr %chip, i32 2168
  %oob_poi5.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %oob_ptr.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.045.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %oob_ptr.exit.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %sec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sec.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.045.i.i, i32 %12)
  %cmp7.i.i = icmp eq i32 %i.045.i.i, %12
  br i1 %cmp7.i.i, label %if.then8.i.i, label %for.body.i.i.if.end11.i.i_crit_edge

for.body.i.i.if.end11.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %bad_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bad_mark.i.i, align 8
  %15 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer.i.i, align 4
  tail call void %14(ptr noundef %chip, ptr noundef %16, i32 noundef 1) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %for.body.i.i.if.end11.i.i_crit_edge
  %17 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i.i, align 8
  %buffer.i38.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %buffer.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer.i38.i.i, align 4
  %21 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i.i.i, align 8
  %23 = ptrtoint ptr %spare_per_sector.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spare_per_sector.i.i.i.i, align 4
  %add.i.i41.i.i = add i32 %24, %22
  %mul.i42.i.i = mul i32 %add.i.i41.i.i, %i.045.i.i
  %add.ptr.i43.i.i = getelementptr i8, ptr %20, i32 %mul.i42.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i43.i.i, i32 %22
  %25 = ptrtoint ptr %sec.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sec.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %i.045.i.i)
  %cmp.i.i.i = icmp ugt i32 %26, %i.045.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %oob_poi5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oob_poi5.i.i.i, align 4
  %add.i.i.i = add nuw i32 %i.045.i.i, 1
  br label %if.end12.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %i.045.i.i)
  %cmp3.i.i.i = icmp eq i32 %26, %i.045.i.i
  %29 = ptrtoint ptr %oob_poi5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oob_poi5.i.i.i, align 4
  br i1 %cmp3.i.i.i, label %if.else.i.i.i.oob_ptr.exit.i.i_crit_edge, label %if.else.i.i.i.if.end12.sink.split.i.i.i_crit_edge

if.else.i.i.i.if.end12.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i.i.i

if.else.i.i.i.oob_ptr.exit.i.i_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_ptr.exit.i.i

if.end12.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end12.sink.split.i.i.i_crit_edge, %if.then.i.i.i
  %i.sink.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %i.045.i.i, %if.else.i.i.i.if.end12.sink.split.i.i.i_crit_edge ]
  %.sink.i.i.i = phi ptr [ %28, %if.then.i.i.i ], [ %30, %if.else.i.i.i.if.end12.sink.split.i.i.i_crit_edge ]
  %31 = ptrtoint ptr %fdm3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fdm3.i.i, align 4
  %mul10.i.i.i = mul i32 %32, %i.sink.i.i.i
  %add.ptr11.i.i.i = getelementptr i8, ptr %.sink.i.i.i, i32 %mul10.i.i.i
  br label %oob_ptr.exit.i.i

oob_ptr.exit.i.i:                                 ; preds = %if.end12.sink.split.i.i.i, %if.else.i.i.i.oob_ptr.exit.i.i_crit_edge
  %poi.0.i.i.i = phi ptr [ %30, %if.else.i.i.i.oob_ptr.exit.i.i_crit_edge ], [ %add.ptr11.i.i.i, %if.end12.sink.split.i.i.i ]
  %33 = ptrtoint ptr %fdm3.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fdm3.i.i, align 4
  %35 = call ptr @memcpy(ptr %add.ptr2.i.i.i, ptr %poi.0.i.i.i, i32 %34)
  %inc.i.i = add nuw i32 %i.045.i.i, 1
  %36 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %steps.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %37
  br i1 %cmp.i.i, label %oob_ptr.exit.i.i.for.body.i.i_crit_edge, label %oob_ptr.exit.i.i.mtk_nfc_write_page_raw.exit_crit_edge

oob_ptr.exit.i.i.mtk_nfc_write_page_raw.exit_crit_edge: ; preds = %oob_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_write_page_raw.exit

oob_ptr.exit.i.i.for.body.i.i_crit_edge:          ; preds = %oob_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mtk_nfc_write_page_raw.exit:                      ; preds = %oob_ptr.exit.i.i.mtk_nfc_write_page_raw.exit_crit_edge, %entry.mtk_nfc_write_page_raw.exit_crit_edge
  %38 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer.i.i, align 4
  %call2.i = tail call fastcc i32 @mtk_nfc_write_page(ptr noundef %chip, ptr noundef %chip, ptr noundef %39, i32 noundef %page, i32 noundef 1) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_read_subpage_hwecc(ptr noundef %chip, i32 noundef %off, i32 noundef %len, ptr noundef %p, i32 noundef %pg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @mtk_nfc_read_subpage(ptr noundef %chip, ptr noundef %chip, i32 noundef %off, i32 noundef %len, ptr noundef %p, i32 noundef %pg, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_read_page_raw(ptr noundef %chip, ptr noundef writeonly %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fdm3 = getelementptr i8, ptr %chip, i32 2180
  %buffer = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  %add = add i32 %7, %5
  %8 = call ptr @memset(ptr %3, i32 255, i32 %add)
  %9 = load i32, ptr %writesize, align 4
  %10 = load ptr, ptr %buffer, align 4
  %call6 = tail call fastcc i32 @mtk_nfc_read_subpage(ptr noundef %chip, ptr noundef %chip, i32 noundef 0, i32 noundef %9, ptr noundef %10, i32 noundef %page, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %11 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp761 = icmp sgt i32 %12, 0
  br i1 %cmp761, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sec.i = getelementptr i8, ptr %chip, i32 2172
  %oob_poi5.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %size.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %spare_per_sector.i.i = getelementptr i8, ptr %chip, i32 2188
  %bad_mark = getelementptr i8, ptr %chip, i32 2168
  %tobool.not = icmp eq ptr %buf, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %i.062)
  %cmp.i = icmp ugt i32 %14, %i.062
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %oob_poi5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oob_poi5.i, align 4
  %add.i = add nuw nsw i32 %i.062, 1
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %i.062)
  %cmp3.i = icmp eq i32 %14, %i.062
  %17 = ptrtoint ptr %oob_poi5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oob_poi5.i, align 4
  br i1 %cmp3.i, label %if.else.i.oob_ptr.exit_crit_edge, label %if.else.i.if.end12.sink.split.i_crit_edge

if.else.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i

if.else.i.oob_ptr.exit_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_ptr.exit

if.end12.sink.split.i:                            ; preds = %if.else.i.if.end12.sink.split.i_crit_edge, %if.then.i
  %i.sink.i = phi i32 [ %add.i, %if.then.i ], [ %i.062, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %.sink.i = phi ptr [ %16, %if.then.i ], [ %18, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %fdm3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fdm3, align 4
  %mul10.i = mul i32 %20, %i.sink.i
  %add.ptr11.i = getelementptr i8, ptr %.sink.i, i32 %mul10.i
  br label %oob_ptr.exit

oob_ptr.exit:                                     ; preds = %if.end12.sink.split.i, %if.else.i.oob_ptr.exit_crit_edge
  %poi.0.i = phi ptr [ %18, %if.else.i.oob_ptr.exit_crit_edge ], [ %add.ptr11.i, %if.end12.sink.split.i ]
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %buffer.i = getelementptr inbounds %struct.mtk_nfc, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer.i, align 4
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i, align 8
  %27 = ptrtoint ptr %spare_per_sector.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %spare_per_sector.i.i, align 4
  %add.i.i = add i32 %28, %26
  %mul.i = mul i32 %add.i.i, %i.062
  %add.ptr.i51 = getelementptr i8, ptr %24, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i51, i32 %26
  %29 = ptrtoint ptr %fdm3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fdm3, align 4
  %31 = call ptr @memcpy(ptr %poi.0.i, ptr %add.ptr2.i, i32 %30)
  %32 = ptrtoint ptr %sec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %33)
  %cmp10 = icmp eq i32 %i.062, %33
  br i1 %cmp10, label %if.then11, label %oob_ptr.exit.if.end14_crit_edge

oob_ptr.exit.if.end14_crit_edge:                  ; preds = %oob_ptr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %oob_ptr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %bad_mark to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bad_mark, align 8
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  tail call void %35(ptr noundef %chip, ptr noundef %37, i32 noundef 1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %oob_ptr.exit.if.end14_crit_edge
  br i1 %tobool.not, label %if.end14.for.inc_crit_edge, label %if.then15

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i.i, align 8
  %mul.i52 = mul i32 %39, %i.062
  %add.ptr.i53 = getelementptr i8, ptr %buf, i32 %mul.i52
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 8
  %buffer.i55 = getelementptr inbounds %struct.mtk_nfc, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %buffer.i55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer.i55, align 4
  %44 = ptrtoint ptr %spare_per_sector.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %spare_per_sector.i.i, align 4
  %add.i.i58 = add i32 %45, %39
  %mul.i59 = mul i32 %add.i.i58, %i.062
  %add.ptr.i60 = getelementptr i8, ptr %43, i32 %mul.i59
  %46 = call ptr @memcpy(ptr %add.ptr.i53, ptr %add.ptr.i60, i32 %39)
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end14.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %47 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %steps, align 4
  %cmp7 = icmp slt i32 %inc, %48
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_read_page_hwecc(ptr noundef %chip, ptr noundef %p, i32 noundef %oob_on, i32 noundef %pg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %call1 = tail call fastcc i32 @mtk_nfc_read_subpage(ptr noundef %chip, ptr noundef %chip, i32 noundef 0, i32 noundef %1, ptr noundef %p, i32 noundef %pg, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_read_oob_std(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_nfc_read_page_raw(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nfc_write_page(ptr noundef %mtd, ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i32 noundef %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @mtk_nfc_select_target(ptr noundef %chip, i32 noundef %3)
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not = icmp eq i32 %raw, 0
  br i1 %tobool.not, label %if.then, label %cond.true

if.then:                                          ; preds = %entry
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #9, !srcloc !190
  %7 = or i16 %6, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %7) #9, !srcloc !192
  %ecc_cfg = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ecc_cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ecc_cfg, align 4
  %mode = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %mode, align 4
  %ecc = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ecc, align 4
  %call8 = tail call i32 @mtk_ecc_enable(ptr noundef %13, ptr noundef %ecc_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #9, !srcloc !190
  %17 = and i16 %16, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #9, !srcloc !192
  br label %cleanup

if.end:                                           ; preds = %if.then
  %buffer = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %22 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writesize, align 4
  %24 = call ptr @memcpy(ptr %21, ptr %buf, i32 %23)
  %bad_mark = getelementptr i8, ptr %chip, i32 2168
  %25 = ptrtoint ptr %bad_mark to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bad_mark, align 8
  %27 = load ptr, ptr %buffer, align 4
  tail call void %26(ptr noundef %mtd, ptr noundef %27, i32 noundef 0) #9
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %fdm2.i = getelementptr i8, ptr %chip, i32 2180
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %30 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp56.i = icmp sgt i32 %31, 0
  br i1 %cmp56.i, label %for.body.lr.ph.i, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.body.lr.ph.i:                                 ; preds = %if.end
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  %sec.i.i = getelementptr i8, ptr %chip, i32 2172
  %oob_poi5.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %regs.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %33, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc27.i, %for.inc.7.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %sec.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sec.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.057.i)
  %cmp.i.i = icmp ugt i32 %35, %i.057.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %oob_poi5.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.057.i, 1
  br label %if.end12.sink.split.i.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %i.057.i)
  %cmp3.i.i = icmp eq i32 %35, %i.057.i
  %38 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi5.i.i, align 4
  br i1 %cmp3.i.i, label %if.thenthread-pre-split.i, label %if.else.i.i.if.end12.sink.split.i.i_crit_edge

if.else.i.i.if.end12.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i.i

if.end12.sink.split.i.i:                          ; preds = %if.else.i.i.if.end12.sink.split.i.i_crit_edge, %if.then.i.i
  %i.sink.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %i.057.i, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi ptr [ %37, %if.then.i.i ], [ %39, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %40 = ptrtoint ptr %fdm2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fdm2.i, align 4
  %mul10.i.i = mul i32 %41, %i.sink.i.i
  %add.ptr11.i.i = getelementptr i8, ptr %.sink.i.i, i32 %mul10.i.i
  br label %if.then.i

if.thenthread-pre-split.i:                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %fdm2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %fdm2.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.thenthread-pre-split.i, %if.end12.sink.split.i.i
  %43 = phi i32 [ %.pr.i, %if.thenthread-pre-split.i ], [ %41, %if.end12.sink.split.i.i ]
  %poi.0.i.i = phi ptr [ %39, %if.thenthread-pre-split.i ], [ %add.ptr11.i.i, %if.end12.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp8.not.i = icmp eq i32 %43, 0
  br i1 %cmp8.not.i, label %if.then.i.if.then.1.i_crit_edge, label %cond.true.i

if.then.i.if.then.1.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.1.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %poi.0.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %poi.0.i.i, align 1
  %conv.i = zext i8 %45 to i32
  br label %if.then.1.i

if.then.1.i:                                      ; preds = %cond.true.i, %if.then.i.if.then.1.i_crit_edge
  %vall.1.i = phi i32 [ %conv.i, %cond.true.i ], [ 255, %if.then.i.if.then.1.i_crit_edge ]
  %46 = ptrtoint ptr %fdm2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fdm2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp8.1.i = icmp ugt i32 %47, 1
  br i1 %cmp8.1.i, label %if.then.2.i, label %if.then.2.thread.i

if.then.2.thread.i:                               ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.163.i = or i32 %vall.1.i, 65280
  br label %if.else.4.i.thread

if.then.2.i:                                      ; preds = %if.then.1.i
  %arrayidx.1.i = getelementptr i8, ptr %poi.0.i.i, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %49 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 8
  %or.1.i = or i32 %shl.1.i, %vall.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp8.2.i.not = icmp eq i32 %47, 2
  br i1 %cmp8.2.i.not, label %if.then.2.i.if.else.4.i.thread_crit_edge, label %if.then.3.i

if.then.2.i.if.else.4.i.thread_crit_edge:         ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.4.i.thread

if.else.4.i.thread:                               ; preds = %if.then.2.i.if.else.4.i.thread_crit_edge, %if.then.2.thread.i
  %or.165.ph.i = phi i32 [ %or.163.i, %if.then.2.thread.i ], [ %or.1.i, %if.then.2.i.if.else.4.i.thread_crit_edge ]
  %or.3.i79 = or i32 %or.165.ph.i, -65536
  br label %if.else.7.i.thread

if.then.3.i:                                      ; preds = %if.then.2.i
  %arrayidx.2.i = getelementptr i8, ptr %poi.0.i.i, i32 2
  %50 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %51 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 16
  %or.2.i = or i32 %shl.2.i, %or.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp8.3.i = icmp ugt i32 %47, 3
  br i1 %cmp8.3.i, label %if.else.4.i, label %if.else.5.i.thread

if.else.5.i.thread:                               ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.377.i = or i32 %or.2.i, -16777216
  br label %if.else.7.i.thread

if.else.4.i:                                      ; preds = %if.then.3.i
  %arrayidx.3.i = getelementptr i8, ptr %poi.0.i.i, i32 3
  %52 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %53 to i32
  %shl.3.i = shl nuw i32 %conv.3.i, 24
  %or.3.i = or i32 %shl.3.i, %or.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp10.4.i.not = icmp eq i32 %47, 4
  br i1 %cmp10.4.i.not, label %if.else.4.i.if.else.7.i.thread_crit_edge, label %if.else.5.i

if.else.4.i.if.else.7.i.thread_crit_edge:         ; preds = %if.else.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.7.i.thread

if.else.5.i:                                      ; preds = %if.else.4.i
  %arrayidx13.4.i = getelementptr i8, ptr %poi.0.i.i, i32 4
  %54 = ptrtoint ptr %arrayidx13.4.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx13.4.i, align 1
  %conv14.4.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp10.5.i = icmp ugt i32 %47, 5
  br i1 %cmp10.5.i, label %if.else.6.i, label %if.else.5.i.if.else.7.i.thread_crit_edge

if.else.5.i.if.else.7.i.thread_crit_edge:         ; preds = %if.else.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.7.i.thread

if.else.7.i.thread:                               ; preds = %if.else.5.i.if.else.7.i.thread_crit_edge, %if.else.4.i.if.else.7.i.thread_crit_edge, %if.else.5.i.thread, %if.else.4.i.thread
  %valm.1.487.ph.i = phi i32 [ %conv14.4.i, %if.else.5.i.if.else.7.i.thread_crit_edge ], [ 255, %if.else.4.i.if.else.7.i.thread_crit_edge ], [ 255, %if.else.4.i.thread ], [ 255, %if.else.5.i.thread ]
  %or.37986.ph.i = phi i32 [ %or.3.i, %if.else.5.i.if.else.7.i.thread_crit_edge ], [ %or.3.i, %if.else.4.i.if.else.7.i.thread_crit_edge ], [ %or.3.i79, %if.else.4.i.thread ], [ %or.377.i, %if.else.5.i.thread ]
  %or20.6.i88 = or i32 %valm.1.487.ph.i, 16776960
  br label %for.inc.7.i

if.else.6.i:                                      ; preds = %if.else.5.i
  %arrayidx13.5.i = getelementptr i8, ptr %poi.0.i.i, i32 5
  %56 = ptrtoint ptr %arrayidx13.5.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx13.5.i, align 1
  %conv14.5.i = zext i8 %57 to i32
  %shl19.5.i = shl nuw nsw i32 %conv14.5.i, 8
  %or20.5.i = or i32 %shl19.5.i, %conv14.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %cmp10.6.i.not = icmp eq i32 %47, 6
  br i1 %cmp10.6.i.not, label %if.else.7.thread.i, label %if.else.7.i

if.else.7.thread.i:                               ; preds = %if.else.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %or20.6103.i = or i32 %or20.5.i, 16711680
  br label %for.inc.7.i

if.else.7.i:                                      ; preds = %if.else.6.i
  %arrayidx13.6.i = getelementptr i8, ptr %poi.0.i.i, i32 6
  %58 = ptrtoint ptr %arrayidx13.6.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx13.6.i, align 1
  %conv14.6.i = zext i8 %59 to i32
  %shl19.6.i = shl nuw nsw i32 %conv14.6.i, 16
  %or20.6.i = or i32 %shl19.6.i, %or20.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp10.7.i = icmp ugt i32 %47, 7
  br i1 %cmp10.7.i, label %cond.true12.7.i, label %if.else.7.i.for.inc.7.i_crit_edge

if.else.7.i.for.inc.7.i_crit_edge:                ; preds = %if.else.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7.i

cond.true12.7.i:                                  ; preds = %if.else.7.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.7.i = getelementptr i8, ptr %poi.0.i.i, i32 7
  %60 = ptrtoint ptr %arrayidx13.7.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx13.7.i, align 1
  %conv14.7.i = zext i8 %61 to i32
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %cond.true12.7.i, %if.else.7.i.for.inc.7.i_crit_edge, %if.else.7.thread.i, %if.else.7.i.thread
  %or20.6107.i = phi i32 [ %or20.6.i, %cond.true12.7.i ], [ %or20.6.i, %if.else.7.i.for.inc.7.i_crit_edge ], [ %or20.6103.i, %if.else.7.thread.i ], [ %or20.6.i88, %if.else.7.i.thread ]
  %or.3798696106.i = phi i32 [ %or.3.i, %cond.true12.7.i ], [ %or.3.i, %if.else.7.i.for.inc.7.i_crit_edge ], [ %or.3.i, %if.else.7.thread.i ], [ %or.37986.ph.i, %if.else.7.i.thread ]
  %cond17.7.i = phi i32 [ %conv14.7.i, %cond.true12.7.i ], [ 255, %if.else.7.i.for.inc.7.i_crit_edge ], [ 255, %if.else.7.thread.i ], [ 255, %if.else.7.i.thread ]
  %shl19.7.i = shl nuw i32 %cond17.7.i, 24
  %or20.7.i = or i32 %shl19.7.i, %or20.6107.i
  %mul22.i = shl i32 %i.057.i, 3
  %add.i = add i32 %mul22.i, 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.3798696106.i) #9
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %64, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %62) #9, !srcloc !195
  %add25.i = add i32 %mul22.i, 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %65 = tail call i32 @llvm.bswap.i32(i32 %or20.7.i) #9
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %67, i32 %add25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %65) #9, !srcloc !195
  %inc27.i = add nuw nsw i32 %i.057.i, 1
  %68 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %inc27.i, %69
  br i1 %cmp.i, label %for.inc.7.i.for.body.i_crit_edge, label %for.inc.7.i.cond.end_crit_edge

for.inc.7.i.cond.end_crit_edge:                   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.inc.7.i.for.body.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %writesize1795 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %70 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %oobsize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.inc.7.i.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %.in = phi ptr [ %writesize1795, %cond.true ], [ %writesize, %if.end.cond.end_crit_edge ], [ %writesize, %for.inc.7.i.cond.end_crit_edge ]
  %bufpoi.092 = phi ptr [ %buf, %cond.true ], [ %29, %if.end.cond.end_crit_edge ], [ %29, %for.inc.7.i.cond.end_crit_edge ]
  %cond = phi i32 [ %71, %cond.true ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %for.inc.7.i.cond.end_crit_edge ]
  %72 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %.in, align 4
  %add = add i32 %cond, %73
  %74 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv.i, align 8
  %dev1.i = getelementptr inbounds %struct.mtk_nfc, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %bufpoi.092) #9
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %cond.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i69, !prof !189

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i69:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %77) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i69.dev_name.exit.i.i_crit_edge

if.then.i.i69.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i69.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %81, %if.end.i.i.i ], [ %79, %if.then.i.i69.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %82 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %83, i32 noundef -1) #9
  br label %do.end.i

dma_map_single_attrs.exit.i:                      ; preds = %cond.end
  tail call void @debug_dma_map_single(ptr noundef %77, ptr noundef %bufpoi.092, i32 noundef %add) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %84 = load ptr, ptr @mem_map, align 4
  %85 = ptrtoint ptr %bufpoi.092 to i32
  %sub.i.i = add i32 %85, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %84, i32 %shr.i.i
  %and.i.i = and i32 %85, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %77, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add, i32 noundef 1, i32 noundef 0) #9
  %86 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev1.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %87, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i70 = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i70, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %88 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.64) #12
  br label %mtk_nfc_do_write_page.exit

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %regs.i.i71 = getelementptr inbounds %struct.mtk_nfc, ptr %75, i32 0, i32 6
  %90 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i71, align 4
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %91) #9, !srcloc !190
  %93 = or i16 %92, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %94 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i71, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %95, i16 %93) #9, !srcloc !192
  %steps.i72 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %96 = ptrtoint ptr %steps.i72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %steps.i72, align 4
  %shl.i = shl i32 %97, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %98 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %99 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %98) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %101 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #9
  %102 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %103, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %101) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %105, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7.i, i16 16384) #9, !srcloc !192
  %done.i = getelementptr inbounds %struct.mtk_nfc, ptr %75, i32 0, i32 7
  %106 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %75, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #9
  %107 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %108, i32 8
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #9, !srcloc !196
  %110 = or i32 %109, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %111 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %112, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %110) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %113 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %114, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13.i, i16 256) #9, !srcloc !192
  %call13.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end19.i

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.67) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %115 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %116, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i15.i, i16 0) #9, !srcloc !192
  br label %timeout.i

if.end19.i:                                       ; preds = %if.end.i
  %call20.i = tail call i64 @ktime_get() #9
  %add.i.i73 = add i64 %call20.i, 500000000
  %117 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr29.i = getelementptr i8, ptr %118, i32 112
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #9, !srcloc !196
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %and2430.i = lshr i32 %120, 12
  %shr31.i = and i32 %and2430.i, 31
  %121 = ptrtoint ptr %steps.i72 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %steps.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr31.i, i32 %122)
  %cmp.not32.i = icmp ult i32 %shr31.i, %122
  br i1 %cmp.not32.i, label %if.end19.i.land.lhs.true.i_crit_edge, label %if.end19.i.for.end.i_crit_edge

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end19.i.land.lhs.true.i_crit_edge:             ; preds = %if.end19.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end19.i.land.lhs.true.i_crit_edge
  %call31.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call31.i, i64 %add.i.i73)
  %cmp3.i.i74 = icmp sgt i64 %call31.i, %add.i.i73
  br i1 %cmp3.i.i74, label %if.then35.i, label %cond.false.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr39.i = getelementptr i8, ptr %124, i32 112
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #9, !srcloc !196
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  %.pre.i = lshr i32 %126, 12
  %.pre33.i = and i32 %.pre.i, 31
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 2147480) #9
  %128 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i75 = getelementptr i8, ptr %129, i32 112
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #9, !srcloc !196
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  %and24.i = lshr i32 %131, 12
  %shr.i = and i32 %and24.i, 31
  %132 = ptrtoint ptr %steps.i72 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %steps.i72, align 4
  %cmp.not.i = icmp ult i32 %shr.i, %133
  br i1 %cmp.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then35.i, %if.end19.i.for.end.i_crit_edge
  %shr54.pre-phi.i = phi i32 [ %shr31.i, %if.end19.i.for.end.i_crit_edge ], [ %.pre33.i, %if.then35.i ], [ %shr.i, %cond.false.i.for.end.i_crit_edge ]
  %134 = ptrtoint ptr %steps.i72 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %steps.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr54.pre-phi.i, i32 %135)
  %cmp57.not.i = icmp ult i32 %shr54.pre-phi.i, %135
  br i1 %cmp57.not.i, label %do.end63.i, label %for.end.i.timeout.i_crit_edge

for.end.i.timeout.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timeout.i

do.end63.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.70) #12
  br label %timeout.i

timeout.i:                                        ; preds = %do.end63.i, %for.end.i.timeout.i_crit_edge, %do.end18.i
  %ret.0.i = phi i32 [ -110, %do.end63.i ], [ 0, %for.end.i.timeout.i_crit_edge ], [ -110, %do.end18.i ]
  %136 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev1.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %137, i32 noundef %call41.i.i, i32 noundef %add, i32 noundef 1, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %138 = ptrtoint ptr %regs.i.i71 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i71, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %139, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #9, !srcloc !195
  br label %mtk_nfc_do_write_page.exit

mtk_nfc_do_write_page.exit:                       ; preds = %timeout.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %ret.0.i, %timeout.i ]
  br i1 %tobool.not, label %if.then21, label %mtk_nfc_do_write_page.exit.if.end23_crit_edge

mtk_nfc_do_write_page.exit.if.end23_crit_edge:    ; preds = %mtk_nfc_do_write_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %mtk_nfc_do_write_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ecc22 = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 3
  %140 = ptrtoint ptr %ecc22 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ecc22, align 4
  tail call void @mtk_ecc_disable(ptr noundef %141) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %mtk_nfc_do_write_page.exit.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool24.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ %call8, %if.then10 ], [ %retval.0.i, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ecc_encode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ecc_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ecc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nfc_read_subpage(ptr noundef %mtd, ptr noundef %chip, i32 noundef %data_offs, i32 noundef %readlen, ptr noundef %bufpoi, i32 noundef %page, i32 noundef %raw) unnamed_addr #2 align 64 {
entry:
  %stats.i = alloca %struct.mtk_ecc_stats, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spare_per_sector = getelementptr i8, ptr %chip, i32 2188
  %2 = ptrtoint ptr %spare_per_sector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spare_per_sector, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @mtk_nfc_select_target(ptr noundef %chip, i32 noundef %5)
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %div = udiv i32 %data_offs, %7
  %add = add i32 %data_offs, -1
  %add4 = add i32 %add, %readlen
  %sub = add i32 %add4, %7
  %div7 = udiv i32 %sub, %7
  %sub8 = sub i32 %div7, %div
  %add11 = add i32 %7, %3
  %mul = mul i32 %div, %add11
  %mul14 = mul i32 %sub8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not = icmp eq i32 %raw, 0
  %mul15 = mul i32 %sub8, %3
  %spec.select = select i1 %tobool.not, i32 0, i32 %mul15
  %add16 = add i32 %spec.select, %mul14
  %mul19 = mul i32 %div, %7
  %add.ptr = getelementptr i8, ptr %bufpoi, i32 %mul19
  %call20 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %mul, ptr noundef null, i32 noundef 0) #9
  %dev = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !189

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %add.ptr, i32 noundef %add16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i254 = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i254, i32 noundef %and.i, i32 noundef %add16, i32 noundef 2, i32 noundef 0) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.64) #12
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %regs.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #9, !srcloc !190
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  br i1 %tobool.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end
  %26 = or i16 %25, 775
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %27) #9, !srcloc !192
  %ecc_cfg = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1
  %mode = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %mode, align 4
  %sectors32 = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %sectors32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub8, ptr %sectors32, align 4
  %32 = ptrtoint ptr %ecc_cfg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %ecc_cfg, align 4
  %ecc34 = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %ecc34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ecc34, align 4
  %call36 = tail call i32 @mtk_ecc_enable(ptr noundef %34, ptr noundef %ecc_cfg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then28.if.end47_crit_edge, label %do.end41

if.then28.if.end47_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end41:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.77) #12
  %and = and i16 %25, -776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %37 = tail call i16 @llvm.bswap.i16(i16 %and) #9
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %37) #9, !srcloc !192
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %41, i32 noundef %call41.i, i32 noundef %add16, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %42 = or i16 %25, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %43) #9, !srcloc !192
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then28.if.end47_crit_edge
  %shl = shl i32 %sub8, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i259 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 %46) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i261, i16 16384) #9, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #9
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %53, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 %51) #9, !srcloc !195
  %done = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_completion.__key) #9
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %56, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #9, !srcloc !196
  %58 = or i32 %57, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %58) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %62, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i269, i16 256) #9, !srcloc !192
  %call53 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end58, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.80) #12
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end47.if.end60_crit_edge
  %call61 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call61, 500000000
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr63311 = getelementptr i8, ptr %66, i32 132
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63311) #9, !srcloc !196
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and66312 = lshr i32 %68, 12
  %shr313 = and i32 %and66312, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %shr313, i32 %sub8)
  %cmp.not314 = icmp ult i32 %shr313, %sub8
  br i1 %cmp.not314, label %if.end60.land.lhs.true_crit_edge, label %if.end60.for.end_crit_edge

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end60.land.lhs.true_crit_edge:                 ; preds = %if.end60
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false90.land.lhs.true_crit_edge, %if.end60.land.lhs.true_crit_edge
  %call71 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call71, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call71, %add.i
  br i1 %cmp3.i, label %if.then75, label %cond.false90

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr79 = getelementptr i8, ptr %70, i32 132
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !196
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  %.pre = lshr i32 %72, 12
  %.pre315 = and i32 %.pre, 31
  br label %for.end

cond.false90:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 2147480) #9
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr63 = getelementptr i8, ptr %75, i32 132
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #9, !srcloc !196
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and66 = lshr i32 %77, 12
  %shr = and i32 %and66, 31
  %cmp.not = icmp ult i32 %shr, %sub8
  br i1 %cmp.not, label %cond.false90.land.lhs.true_crit_edge, label %cond.false90.for.end_crit_edge

cond.false90.for.end_crit_edge:                   ; preds = %cond.false90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false90.land.lhs.true_crit_edge:             ; preds = %cond.false90
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false90.for.end_crit_edge, %if.then75, %if.end60.for.end_crit_edge
  %shr98.pre-phi = phi i32 [ %shr313, %if.end60.for.end_crit_edge ], [ %.pre315, %if.then75 ], [ %shr, %cond.false90.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr98.pre-phi, i32 %sub8)
  %cmp99.not = icmp ult i32 %shr98.pre-phi, %sub8
  br i1 %cmp99.not, label %do.end107, label %if.else109

do.end107:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.83) #12
  br label %if.end122

if.else109:                                       ; preds = %for.end
  br i1 %tobool.not, label %if.then111, label %if.end122.thread

if.end122.thread:                                 ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %call41.i, i32 noundef %add16, i32 noundef 2, i32 noundef 0) #9
  br label %done149

if.then111:                                       ; preds = %if.else109
  %ecc112 = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %ecc112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ecc112, align 4
  %call113 = tail call i32 @mtk_ecc_wait_done(ptr noundef %83, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then111.cond.end119_crit_edge, label %cond.false117

if.then111.cond.end119_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end119

cond.false117:                                    ; preds = %if.then111
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %84 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stats.i) #9
  %86 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %stats.i, align 4, !annotation !193
  %87 = getelementptr inbounds %struct.mtk_ecc_stats, ptr %stats.i, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %87, align 4, !annotation !193
  %89 = getelementptr inbounds %struct.mtk_ecc_stats, ptr %stats.i, i32 0, i32 2
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %89, align 4, !annotation !193
  %fdm.i = getelementptr i8, ptr %mtd, i32 2180
  %91 = ptrtoint ptr %fdm.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fdm.i, align 4
  %regs.i.i = getelementptr inbounds %struct.mtk_nfc, ptr %85, i32 0, i32 6
  %93 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %94, i32 96
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #9, !srcloc !196
  %96 = and i32 %95, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i273

if.then.i273:                                     ; preds = %cond.false117
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 4
  %97 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %size.i, align 8
  %mul.i = mul i32 %98, %sub8
  %99 = call ptr @memset(ptr %add.ptr, i32 255, i32 %mul.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %div)
  %cmp29.not.i = icmp eq i32 %div7, %div
  br i1 %cmp29.not.i, label %if.then.i273.mtk_nfc_update_ecc_stats.exit_crit_edge, label %for.body.lr.ph.i

if.then.i273.mtk_nfc_update_ecc_stats.exit_crit_edge: ; preds = %if.then.i273
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_update_ecc_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i273
  %sec.i.i = getelementptr i8, ptr %mtd, i32 2172
  %oob_poi5.i.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %oob_ptr.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %oob_ptr.exit.i.for.body.i_crit_edge ]
  %add.i274 = add i32 %i.030.i, %div
  %100 = ptrtoint ptr %sec.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sec.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add.i274)
  %cmp.i.i = icmp ugt i32 %101, %add.i274
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %oob_poi5.i.i, align 4
  %add.i.i = add nuw i32 %add.i274, 1
  br label %if.end12.sink.split.i.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add.i274)
  %cmp3.i.i = icmp eq i32 %101, %add.i274
  %104 = ptrtoint ptr %oob_poi5.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %oob_poi5.i.i, align 4
  br i1 %cmp3.i.i, label %if.else.i.i.oob_ptr.exit.i_crit_edge, label %if.else.i.i.if.end12.sink.split.i.i_crit_edge

if.else.i.i.if.end12.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i.i

if.else.i.i.oob_ptr.exit.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_ptr.exit.i

if.end12.sink.split.i.i:                          ; preds = %if.else.i.i.if.end12.sink.split.i.i_crit_edge, %if.then.i.i
  %i.sink.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add.i274, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi ptr [ %103, %if.then.i.i ], [ %105, %if.else.i.i.if.end12.sink.split.i.i_crit_edge ]
  %106 = ptrtoint ptr %fdm.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fdm.i, align 4
  %mul10.i.i = mul i32 %107, %i.sink.i.i
  %add.ptr11.i.i = getelementptr i8, ptr %.sink.i.i, i32 %mul10.i.i
  br label %oob_ptr.exit.i

oob_ptr.exit.i:                                   ; preds = %if.end12.sink.split.i.i, %if.else.i.i.oob_ptr.exit.i_crit_edge
  %poi.0.i.i = phi ptr [ %105, %if.else.i.i.oob_ptr.exit.i_crit_edge ], [ %add.ptr11.i.i, %if.end12.sink.split.i.i ]
  %108 = call ptr @memset(ptr %poi.0.i.i, i32 255, i32 %92)
  %inc.i = add nuw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub8
  br i1 %exitcond.not.i, label %oob_ptr.exit.i.mtk_nfc_update_ecc_stats.exit_crit_edge, label %oob_ptr.exit.i.for.body.i_crit_edge

oob_ptr.exit.i.for.body.i_crit_edge:              ; preds = %oob_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

oob_ptr.exit.i.mtk_nfc_update_ecc_stats.exit_crit_edge: ; preds = %oob_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nfc_update_ecc_stats.exit

if.end.i:                                         ; preds = %cond.false117
  call void @__sanitizer_cov_trace_pc() #11
  %ecc6.i = getelementptr inbounds %struct.mtk_nfc, ptr %85, i32 0, i32 3
  %109 = ptrtoint ptr %ecc6.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ecc6.i, align 4
  call void @mtk_ecc_get_stats(ptr noundef %110, ptr noundef nonnull %stats.i, i32 noundef %sub8) #9
  %111 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %stats.i, align 4
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %113 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ecc_stats.i, align 4
  %add8.i = add i32 %114, %112
  store i32 %add8.i, ptr %ecc_stats.i, align 4
  %115 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %89, align 4
  %failed10.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %117 = ptrtoint ptr %failed10.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %failed10.i, align 4
  %add11.i = add i32 %118, %116
  store i32 %add11.i, ptr %failed10.i, align 4
  %119 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %87, align 4
  br label %mtk_nfc_update_ecc_stats.exit

mtk_nfc_update_ecc_stats.exit:                    ; preds = %if.end.i, %oob_ptr.exit.i.mtk_nfc_update_ecc_stats.exit_crit_edge, %if.then.i273.mtk_nfc_update_ecc_stats.exit_crit_edge
  %retval.0.i275 = phi i32 [ %120, %if.end.i ], [ 0, %if.then.i273.mtk_nfc_update_ecc_stats.exit_crit_edge ], [ 0, %oob_ptr.exit.i.mtk_nfc_update_ecc_stats.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stats.i) #9
  br label %cond.end119

cond.end119:                                      ; preds = %mtk_nfc_update_ecc_stats.exit, %if.then111.cond.end119_crit_edge
  %cond120 = phi i32 [ %retval.0.i275, %mtk_nfc_update_ecc_stats.exit ], [ -110, %if.then111.cond.end119_crit_edge ]
  %fdm2.i = getelementptr i8, ptr %chip, i32 2180
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %div)
  %cmp35.not.i = icmp eq i32 %div7, %div
  br i1 %cmp35.not.i, label %cond.end119.if.end122_crit_edge, label %for.body.lr.ph.i280

cond.end119.if.end122_crit_edge:                  ; preds = %cond.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

for.body.lr.ph.i280:                              ; preds = %cond.end119
  %121 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv.i, align 8
  %sec.i.i277 = getelementptr i8, ptr %chip, i32 2172
  %oob_poi5.i.i278 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %regs.i.i279 = getelementptr inbounds %struct.mtk_nfc, ptr %122, i32 0, i32 6
  br label %for.body.i283

for.body.i283:                                    ; preds = %for.inc16.i.for.body.i283_crit_edge, %for.body.lr.ph.i280
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i280 ], [ %inc17.i, %for.inc16.i.for.body.i283_crit_edge ]
  %add.i281 = add i32 %i.036.i, %div
  %123 = ptrtoint ptr %sec.i.i277 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sec.i.i277, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %add.i281)
  %cmp.i.i282 = icmp ugt i32 %124, %add.i281
  br i1 %cmp.i.i282, label %if.then.i.i285, label %if.else.i.i287

if.then.i.i285:                                   ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %oob_poi5.i.i278 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %oob_poi5.i.i278, align 4
  %add.i.i284 = add nuw i32 %add.i281, 1
  br label %if.end12.sink.split.i.i292

if.else.i.i287:                                   ; preds = %for.body.i283
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %add.i281)
  %cmp3.i.i286 = icmp eq i32 %124, %add.i281
  %127 = ptrtoint ptr %oob_poi5.i.i278 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %oob_poi5.i.i278, align 4
  br i1 %cmp3.i.i286, label %if.else.i.i287.oob_ptr.exit.i294_crit_edge, label %if.else.i.i287.if.end12.sink.split.i.i292_crit_edge

if.else.i.i287.if.end12.sink.split.i.i292_crit_edge: ; preds = %if.else.i.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split.i.i292

if.else.i.i287.oob_ptr.exit.i294_crit_edge:       ; preds = %if.else.i.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_ptr.exit.i294

if.end12.sink.split.i.i292:                       ; preds = %if.else.i.i287.if.end12.sink.split.i.i292_crit_edge, %if.then.i.i285
  %i.sink.i.i288 = phi i32 [ %add.i.i284, %if.then.i.i285 ], [ %add.i281, %if.else.i.i287.if.end12.sink.split.i.i292_crit_edge ]
  %.sink.i.i289 = phi ptr [ %126, %if.then.i.i285 ], [ %128, %if.else.i.i287.if.end12.sink.split.i.i292_crit_edge ]
  %129 = ptrtoint ptr %fdm2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fdm2.i, align 4
  %mul10.i.i290 = mul i32 %130, %i.sink.i.i288
  %add.ptr11.i.i291 = getelementptr i8, ptr %.sink.i.i289, i32 %mul10.i.i290
  br label %oob_ptr.exit.i294

oob_ptr.exit.i294:                                ; preds = %if.end12.sink.split.i.i292, %if.else.i.i287.oob_ptr.exit.i294_crit_edge
  %poi.0.i.i293 = phi ptr [ %128, %if.else.i.i287.oob_ptr.exit.i294_crit_edge ], [ %add.ptr11.i.i291, %if.end12.sink.split.i.i292 ]
  %mul4.i = shl i32 %i.036.i, 3
  %add5.i = add i32 %mul4.i, 160
  %131 = ptrtoint ptr %regs.i.i279 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i.i279, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %132, i32 %add5.i
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #9, !srcloc !196
  %134 = call i32 @llvm.bswap.i32(i32 %133) #9
  %add9.i = add i32 %mul4.i, 164
  %135 = ptrtoint ptr %regs.i.i279 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i.i279, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %136, i32 %add9.i
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #9, !srcloc !196
  %138 = call i32 @llvm.bswap.i32(i32 %137) #9
  %139 = ptrtoint ptr %fdm2.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fdm2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp1233.not.i = icmp eq i32 %140, 0
  br i1 %cmp1233.not.i, label %oob_ptr.exit.i294.for.inc16.i_crit_edge, label %oob_ptr.exit.i294.for.body13.i_crit_edge

oob_ptr.exit.i294.for.body13.i_crit_edge:         ; preds = %oob_ptr.exit.i294
  br label %for.body13.i

oob_ptr.exit.i294.for.inc16.i_crit_edge:          ; preds = %oob_ptr.exit.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc16.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %oob_ptr.exit.i294.for.body13.i_crit_edge
  %j.034.i = phi i32 [ %inc.i296, %for.body13.i.for.body13.i_crit_edge ], [ 0, %oob_ptr.exit.i294.for.body13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.034.i)
  %cmp14.i = icmp sgt i32 %j.034.i, 3
  %call10.call6.i = select i1 %cmp14.i, i32 %138, i32 %134
  %rem.i = srem i32 %j.034.i, 4
  %mul15.i = shl nsw i32 %rem.i, 3
  %shr.i295 = lshr i32 %call10.call6.i, %mul15.i
  %conv.i = trunc i32 %shr.i295 to i8
  %arrayidx.i = getelementptr i8, ptr %poi.0.i.i293, i32 %j.034.i
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i296 = add nuw i32 %j.034.i, 1
  %142 = ptrtoint ptr %fdm2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fdm2.i, align 4
  %cmp12.i = icmp ult i32 %inc.i296, %143
  br i1 %cmp12.i, label %for.body13.i.for.body13.i_crit_edge, label %for.body13.i.for.inc16.i_crit_edge

for.body13.i.for.inc16.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc16.i

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.i

for.inc16.i:                                      ; preds = %for.body13.i.for.inc16.i_crit_edge, %oob_ptr.exit.i294.for.inc16.i_crit_edge
  %inc17.i = add nuw i32 %i.036.i, 1
  %exitcond.not.i297 = icmp eq i32 %inc17.i, %sub8
  br i1 %exitcond.not.i297, label %for.inc16.i.if.end122_crit_edge, label %for.inc16.i.for.body.i283_crit_edge

for.inc16.i.for.body.i283_crit_edge:              ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i283

for.inc16.i.if.end122_crit_edge:                  ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.end122:                                        ; preds = %for.inc16.i.if.end122_crit_edge, %cond.end119.if.end122_crit_edge, %do.end107
  %bitflips.0 = phi i32 [ -5, %do.end107 ], [ %cond120, %cond.end119.if.end122_crit_edge ], [ %cond120, %for.inc16.i.if.end122_crit_edge ]
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 4
  call void @dma_unmap_page_attrs(ptr noundef %145, i32 noundef %call41.i, i32 noundef %add16, i32 noundef 2, i32 noundef 0) #9
  br i1 %tobool.not, label %if.end126, label %if.end122.done149_crit_edge

if.end122.done149_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %done149

if.end126:                                        ; preds = %if.end122
  %ecc127 = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 3
  %146 = ptrtoint ptr %ecc127 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ecc127, align 4
  call void @mtk_ecc_disable(ptr noundef %147) #9
  %sec = getelementptr i8, ptr %chip, i32 2172
  %148 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sec, align 4
  %150 = call i32 @llvm.umax.i32(i32 %149, i32 %div)
  %151 = call i32 @llvm.umin.i32(i32 %150, i32 %div7)
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %149)
  %cmp144 = icmp eq i32 %151, %149
  br i1 %cmp144, label %if.then146, label %if.end126.done149_crit_edge

if.end126.done149_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %done149

if.then146:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %bad_mark = getelementptr i8, ptr %chip, i32 2168
  %152 = ptrtoint ptr %bad_mark to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bad_mark, align 8
  call void %153(ptr noundef %mtd, ptr noundef %bufpoi, i32 noundef 0) #9
  br label %done149

done149:                                          ; preds = %if.then146, %if.end126.done149_crit_edge, %if.end122.done149_crit_edge, %if.end122.thread
  %bitflips.0309 = phi i32 [ 0, %if.end122.thread ], [ %bitflips.0, %if.end126.done149_crit_edge ], [ %bitflips.0, %if.then146 ], [ %bitflips.0, %if.end122.done149_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  call void @arm_heavy_mb() #9
  %154 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %155, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 0) #9, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %done149, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %bitflips.0309, %done149 ], [ %call36, %do.end41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ecc_wait_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ecc_get_stats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_nfc_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oob_region) #8 align 64 {
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
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %div = udiv i32 %1, %3
  %fdm = getelementptr i8, ptr %mtd, i32 2180
  %4 = ptrtoint ptr %fdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fdm, align 4
  %mul = mul i32 %5, %div
  %6 = ptrtoint ptr %oob_region to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %oob_region, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %8, %mul
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oob_region, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_nfc_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oob_region) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %section)
  %cmp.not = icmp ugt i32 %div, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fdm2 = getelementptr i8, ptr %mtd, i32 2180
  %4 = ptrtoint ptr %fdm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fdm2, align 4
  %ecc_size = getelementptr i8, ptr %mtd, i32 2184
  %6 = ptrtoint ptr %ecc_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_size, align 4
  %sub = sub i32 %5, %7
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oob_region, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %length, align 4
  %9 = load i32, ptr %fdm2, align 4
  %mul = mul i32 %9, %section
  %10 = load i32, ptr %ecc_size, align 4
  %add = add i32 %mul, %10
  %11 = ptrtoint ptr %oob_region to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %oob_region, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %pad_clk.i = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pad_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pad_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nfc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #9
  %clk = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 2
  %call1 = tail call fastcc i32 @mtk_nfc_enable_clk(ptr noundef %dev, ptr noundef %clk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %chips = getelementptr inbounds %struct.mtk_nfc, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %3)
  %chip.030 = load ptr, ptr %chips, align 4
  %cmp.not31 = icmp eq ptr %chip.030, %chips
  br i1 %cmp.not31, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.body6.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %4 = ptrtoint ptr %chip.032 to i32
  call void @__asan_load4_noabort(i32 %4)
  %chip.0 = load ptr, ptr %chip.032, align 4
  %cmp.not = icmp eq ptr %chip.0, %chips
  br i1 %cmp.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %chip.032 = phi ptr [ %chip.0, %for.cond.loopexit.for.body_crit_edge ], [ %chip.030, %if.end.for.body_crit_edge ]
  %nand3 = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %chip.032, i32 0, i32 1
  %nsels = getelementptr inbounds %struct.mtk_nfc_nand_chip, ptr %chip.032, i32 0, i32 5
  %5 = ptrtoint ptr %nsels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nsels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp528.not = icmp eq i32 %6, 0
  br i1 %cmp528.not, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.029 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %call7 = tail call i32 @nand_reset(ptr noundef %nand3, i32 noundef %i.029) #9
  %inc = add nuw i32 %i.029, 1
  %7 = ptrtoint ptr %nsels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsels, align 8
  %cmp5 = icmp ult i32 %inc, %8
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.cond.loopexit_crit_edge

for.body6.for.cond.loopexit_crit_edge:            ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

cleanup:                                          ; preds = %for.cond.loopexit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_mtk_nand__263_1676_mtk_nfc_driver_init6, !1, !"__initcall__kmod_mtk_nand__263_1676_mtk_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1676, i32 1}
!2 = !{ptr @__exitcall_mtk_nfc_driver_exit, !1, !"__exitcall_mtk_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file264, !4, !"__UNIQUE_ID_file264", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1678, i32 1}
!5 = !{ptr @__UNIQUE_ID_license265, !4, !"__UNIQUE_ID_license265", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author266, !7, !"__UNIQUE_ID_author266", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1679, i32 1}
!8 = !{ptr @__UNIQUE_ID_description267, !9, !"__UNIQUE_ID_description267", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1680, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1668, i32 12}
!12 = !{ptr @mtk_nfc_driver, !13, !"mtk_nfc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1664, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1549, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1551, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_nfc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_nfc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1556, i32 39}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1558, i32 3}
!28 = !{ptr @mtk_nfc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_nfc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1575, i32 3}
!32 = !{ptr @mtk_nfc_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_nfc_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1581, i32 3}
!36 = !{ptr @mtk_nfc_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_nfc_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1589, i32 3}
!40 = !{ptr @mtk_nfc_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_nfc_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @nand_controller_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtk_nfc_controller_ops, !46, !"mtk_nfc_controller_ops", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1360, i32 41}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1333, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mtk_nfc_attach_chip._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtk_nfc_attach_chip._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1264, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mtk_nfc_ecc_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mtk_nfc_ecc_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1317, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mtk_nfc_ecc_init._entry.25, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtk_nfc_ecc_init._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 273, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mtk_nfc_hw_reset._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_nfc_hw_reset._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 357, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mtk_nfc_hw_runtime_config._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_nfc_hw_runtime_config._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 374, i32 3}
!75 = !{ptr @mtk_nfc_hw_runtime_config._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtk_nfc_hw_runtime_config._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 292, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mtk_nfc_send_command._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @mtk_nfc_send_command._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 312, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mtk_nfc_send_address._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mtk_nfc_send_address._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 398, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mtk_nfc_wait_ioready._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mtk_nfc_wait_ioready._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1128, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mtk_nfc_enable_clk._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @mtk_nfc_enable_clk._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1134, i32 3}
!99 = !{ptr @mtk_nfc_enable_clk._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mtk_nfc_enable_clk._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1377, i32 27}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1382, i32 3}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mtk_nfc_nand_chip_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mtk_nfc_nand_chip_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1395, i32 4}
!110 = !{ptr @mtk_nfc_nand_chip_init._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mtk_nfc_nand_chip_init._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1400, i32 4}
!114 = !{ptr @mtk_nfc_nand_chip_init._entry.54, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mtk_nfc_nand_chip_init._entry_ptr.56, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1405, i32 4}
!118 = !{ptr @mtk_nfc_nand_chip_init._entry.57, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mtk_nfc_nand_chip_init._entry_ptr.59, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1449, i32 3}
!122 = !{ptr @mtk_nfc_nand_chip_init._entry.60, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mtk_nfc_nand_chip_init._entry_ptr.62, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 787, i32 3}
!128 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mtk_nfc_do_write_page._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mtk_nfc_do_write_page._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 806, i32 3}
!133 = !{ptr @mtk_nfc_do_write_page._entry.66, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @mtk_nfc_do_write_page._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 816, i32 3}
!137 = !{ptr @mtk_nfc_do_write_page._entry.69, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @mtk_nfc_do_write_page._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!141 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @init_completion.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../include/linux/completion.h", i32 87, i32 2}
!145 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 969, i32 3}
!148 = !{ptr @mtk_nfc_read_subpage._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mtk_nfc_read_subpage._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 985, i32 4}
!152 = !{ptr @mtk_nfc_read_subpage._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mtk_nfc_read_subpage._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1009, i32 3}
!156 = !{ptr @mtk_nfc_read_subpage._entry.79, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mtk_nfc_read_subpage._entry_ptr.81, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1015, i32 3}
!160 = !{ptr @mtk_nfc_read_subpage._entry.82, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mtk_nfc_read_subpage._entry_ptr.84, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @mtk_nfc_ooblayout_ops, !163, !"mtk_nfc_ooblayout_ops", i1 false, i1 false}
!163 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1184, i32 39}
!164 = !{ptr @mtk_nfc_id_table, !165, !"mtk_nfc_id_table", i1 false, i1 false}
!165 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1503, i32 34}
!166 = !{ptr @mtk_nfc_caps_mt2701, !167, !"mtk_nfc_caps_mt2701", i1 false, i1 false}
!167 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1476, i32 34}
!168 = !{ptr @spare_size_mt2701, !169, !"spare_size_mt2701", i1 false, i1 false}
!169 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 166, i32 17}
!170 = !{ptr @mtk_nfc_caps_mt2712, !171, !"mtk_nfc_caps_mt2712", i1 false, i1 false}
!171 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1485, i32 34}
!172 = !{ptr @spare_size_mt2712, !173, !"spare_size_mt2712", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 170, i32 17}
!174 = !{ptr @mtk_nfc_caps_mt7622, !175, !"mtk_nfc_caps_mt7622", i1 false, i1 false}
!175 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1494, i32 34}
!176 = !{ptr @spare_size_mt7622, !177, !"spare_size_mt7622", i1 false, i1 false}
!177 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 175, i32 17}
!178 = !{ptr @mtk_nfc_pm_ops, !179, !"mtk_nfc_pm_ops", i1 false, i1 false}
!179 = !{!"../drivers/mtd/nand/raw/mtk_nand.c", i32 1661, i32 8}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i64 6269739}
!191 = !{i64 2154622530}
!192 = !{i64 6269539}
!193 = !{!"auto-init"}
!194 = !{i64 2154621976}
!195 = !{i64 6270159}
!196 = !{i64 6270577}
!197 = !{i64 2154630706}
!198 = !{i64 2154631196}
!199 = !{i64 2154635669}
!200 = !{i64 2154636159}
!201 = !{i64 6270357}
!202 = !{i64 2154644005}
!203 = !{i64 2154644239}
!204 = !{i64 2154623084}
!205 = !{i64 6269962}
!206 = !{i64 2154648963}
!207 = !{i64 2154649453}
!208 = !{i64 2154626151}
!209 = !{i64 2154626645}
!210 = !{i64 2154666949}
!211 = !{i64 2154667439}
!212 = !{i64 2154680069}
!213 = !{i64 2154680559}
