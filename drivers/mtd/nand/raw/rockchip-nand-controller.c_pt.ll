; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/rockchip-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/rockchip-nand-controller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.82 }
%union.anon.82 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nfc_cfg = type { i32, [4 x i8], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ecc_cnt_status, %struct.ecc_cnt_status }
%struct.ecc_cnt_status = type { i8, i8, i8, i8, i8, i8 }
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
%struct.rk_nfc = type { %struct.nand_controller, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.completion, %struct.list_head, ptr, ptr, i32, i32, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.rk_nfc_nand_chip = type { %struct.list_head, %struct.nand_chip, i16, i16, i32, i32, i8, [0 x i8] }
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
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_rockchip_nand_controller__256_1490_rk_nfc_driver_init6 = internal global ptr @rk_nfc_driver_init, section ".initcall6.init", align 4
@rk_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk_nfc_probe, ptr @rk_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk_nfc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk_nfc_driver_exit = internal global ptr @rk_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file257 = internal constant [76 x i8] c"rockchip_nand_controller.file=drivers/mtd/nand/raw/rockchip-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [46 x i8] c"rockchip_nand_controller.license=Dual MIT/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [73 x i8] c"rockchip_nand_controller.author=Yifeng Zhao <yifeng.zhao@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [75 x i8] c"rockchip_nand_controller.description=Rockchip Nand Flash Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias261 = internal constant [65 x i8] c"rockchip_nand_controller.alias=platform:rockchip-nand-controller\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-nfc\00", [19 x i8] zeroinitializer }, align 32
@rk_nfc_id_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nfc_v9_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk2928-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nfc_v6_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nfc_v8_cfg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@rk_nfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rk_nfc_suspend, ptr @rk_nfc_resume, ptr @rk_nfc_suspend, ptr @rk_nfc_resume, ptr @rk_nfc_suspend, ptr @rk_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk_nfc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @rk_nfc_attach_chip, ptr null, ptr @rk_nfc_exec_op, ptr @rk_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@rk_nfc_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_nand_controller\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk_nfc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/mtd/nand/raw/rockchip-nand-controller.c\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no NFC clk\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@rk_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 1395, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no ahb clk\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_nfc_probe._entry_ptr = internal global ptr @rk_nfc_probe._entry, section ".printk_index", align 4
@rk_nfc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1406, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no NFC irq resource\0A\00", [43 x i8] zeroinitializer }, align 32
@rk_nfc_probe._entry_ptr.12 = internal global ptr @rk_nfc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rk-nand\00", [24 x i8] zeroinitializer }, align 32
@rk_nfc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1414, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request NFC irq\0A\00", [37 x i8] zeroinitializer }, align 32
@rk_nfc_probe._entry_ptr.16 = internal global ptr @rk_nfc_probe._entry.14, section ".printk_index", align 4
@rk_nfc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1422, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init NAND chips\0A\00", [37 x i8] zeroinitializer }, align 32
@rk_nfc_probe._entry_ptr.19 = internal global ptr @rk_nfc_probe._entry.17, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@rk_nfc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1023, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"16 bits bus width not supported\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk_nfc_attach_chip\00", [45 x i8] zeroinitializer }, align 32
@rk_nfc_attach_chip._entry_ptr = internal global ptr @rk_nfc_attach_chip._entry, section ".printk_index", align 4
@rk_nfc_attach_chip._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 1039, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"driver needs at least %d bytes of meta data\0A\00", [51 x i8] zeroinitializer }, align 32
@rk_nfc_attach_chip._entry_ptr.25 = internal global ptr @rk_nfc_attach_chip._entry.23, section ".printk_index", align 4
@rk_nfc_ecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 999, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported ECC strength\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk_nfc_ecc_init\00", [16 x i8] zeroinitializer }, align 32
@rk_nfc_ecc_init._entry_ptr = internal global ptr @rk_nfc_ecc_init._entry, section ".printk_index", align 4
@rk_nfc_write_page_hwecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 668, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write: wait dma done timeout.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rk_nfc_write_page_hwecc\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rk_nfc_write_page_hwecc._entry_ptr = internal global ptr @rk_nfc_write_page_hwecc._entry, section ".printk_index", align 4
@rk_nfc_write_page_hwecc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 685, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"write: wait transfer done timeout.\0A\00", [60 x i8] zeroinitializer }, align 32
@rk_nfc_write_page_hwecc._entry_ptr.33 = internal global ptr @rk_nfc_write_page_hwecc._entry.31, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rk_nfc_read_page_hwecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 795, ptr @.str.30, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read: wait dma done timeout.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk_nfc_read_page_hwecc\00", [41 x i8] zeroinitializer }, align 32
@rk_nfc_read_page_hwecc._entry_ptr = internal global ptr @rk_nfc_read_page_hwecc._entry, section ".printk_index", align 4
@rk_nfc_read_page_hwecc._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 810, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read: wait transfer done timeout.\0A\00", [61 x i8] zeroinitializer }, align 32
@rk_nfc_read_page_hwecc._entry_ptr.40 = internal global ptr @rk_nfc_read_page_hwecc._entry.38, section ".printk_index", align 4
@rk_nfc_read_page_hwecc._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 855, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read page: %x ecc error!\0A\00", [38 x i8] zeroinitializer }, align 32
@rk_nfc_read_page_hwecc._entry_ptr.43 = internal global ptr @rk_nfc_read_page_hwecc._entry.41, section ".printk_index", align 4
@rk_nfc_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.45, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 6 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.82 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 65532 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 6 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 65532 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.82 zeroinitializer } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { [2 x %struct.nand_op_parser_pattern], [40 x i8] } { [2 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @rk_nfc_cmd }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.44, i32 5, ptr @rk_nfc_cmd }], [40 x i8] zeroinitializer }, align 32
@rk_nfc_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 378, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IO not ready\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rk_nfc_cmd\00", [21 x i8] zeroinitializer }, align 32
@rk_nfc_cmd._entry_ptr = internal global ptr @rk_nfc_cmd._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rk_nfc_enable_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 906, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable NFC clk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk_nfc_enable_clks\00", [45 x i8] zeroinitializer }, align 32
@rk_nfc_enable_clks._entry_ptr = internal global ptr @rk_nfc_enable_clks._entry, section ".printk_index", align 4
@rk_nfc_enable_clks._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 913, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable ahb clk\0A\00", [38 x i8] zeroinitializer }, align 32
@rk_nfc_enable_clks._entry_ptr.53 = internal global ptr @rk_nfc_enable_clks._entry.51, section ".printk_index", align 4
@rk_nfc_nand_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 1218, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"incorrect number of NAND chips (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk_nfc_nand_chips_init\00", [41 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chips_init._entry_ptr = internal global ptr @rk_nfc_nand_chips_init._entry, section ".printk_index", align 4
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1116, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid reg property size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk_nfc_nand_chip_init\00", [42 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry_ptr = internal global ptr @rk_nfc_nand_chip_init._entry, section ".printk_index", align 4
@rk_nfc_nand_chip_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 1129, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg property failure : %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry_ptr.61 = internal global ptr @rk_nfc_nand_chip_init._entry.59, section ".printk_index", align 4
@rk_nfc_nand_chip_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.4, i32 1134, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid CS: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry_ptr.64 = internal global ptr @rk_nfc_nand_chip_init._entry.62, section ".printk_index", align 4
@rk_nfc_nand_chip_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.4, i32 1139, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %u already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry_ptr.67 = internal global ptr @rk_nfc_nand_chip_init._entry.65, section ".printk_index", align 4
@rk_nfc_nand_chip_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.4, i32 1164, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NAND label property is mandatory\0A\00", [62 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry_ptr.70 = internal global ptr @rk_nfc_nand_chip_init._entry.68, section ".printk_index", align 4
@rk_nfc_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @rk_nfc_ooblayout_ecc, ptr @rk_nfc_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip,boot-blks\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,boot-ecc-strength\00", [37 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.58, ptr @.str.4, i32 1185, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MTD parse partition error\0A\00", [37 x i8] zeroinitializer }, align 32
@rk_nfc_nand_chip_init._entry_ptr.75 = internal global ptr @rk_nfc_nand_chip_init._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@nfc_v9_cfg = internal global { %struct.nfc_cfg, [40 x i8] } { %struct.nfc_cfg { i32 2, [4 x i8] c"F<(\10", [4 x i32] [i32 1, i32 100663297, i32 67108865, i32 33554433], i32 16, i32 32, i32 48, i32 52, i32 56, i32 60, i32 336, i32 520, i32 288, i32 292, i32 296, i32 512, i32 516, %struct.ecc_cnt_status { i8 2, i8 3, i8 127, i8 7, i8 0, i8 0 }, %struct.ecc_cnt_status { i8 18, i8 19, i8 127, i8 7, i8 0, i8 0 } }, [40 x i8] zeroinitializer }, align 32
@nfc_v6_cfg = internal global { %struct.nfc_cfg, [40 x i8] } { %struct.nfc_cfg { i32 0, [4 x i8] c"<(\18\10", [4 x i32] [i32 262161, i32 262145, i32 17, i32 1], i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 336, i32 364, i32 368, i32 372, i32 512, i32 560, %struct.ecc_cnt_status { i8 2, i8 3, i8 31, i8 5, i8 27, i8 1 }, %struct.ecc_cnt_status { i8 15, i8 16, i8 31, i8 5, i8 29, i8 1 } }, [40 x i8] zeroinitializer }, align 32
@nfc_v8_cfg = internal global { %struct.nfc_cfg, [40 x i8] } { %struct.nfc_cfg { i32 1, [4 x i8] c"\10\10\10\10", [4 x i32] [i32 1, i32 1, i32 1, i32 1], i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 336, i32 364, i32 368, i32 372, i32 512, i32 560, %struct.ecc_cnt_status { i8 2, i8 3, i8 31, i8 5, i8 27, i8 1 }, %struct.ecc_cnt_status { i8 15, i8 16, i8 31, i8 5, i8 29, i8 1 } }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"rk_nfc_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1480, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1484, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"rk_nfc_id_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1345, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"rk_nfc_pm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1476, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"rk_nfc_controller_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1095, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1387, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1389, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1393, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1395, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1406, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1412, i32 52 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1414, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1422, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1105, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1023, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1037, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 999, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 668, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 685, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 326, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 795, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 810, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 855, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"rk_nfc_op_parser\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 387, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 378, i32 5 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 87, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 906, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 913, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1217, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1112, i32 27 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1116, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1129, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1134, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1139, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1164, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"rk_nfc_ooblayout_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 963, i32 39 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1175, i32 34 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1178, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1185, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 464, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant [11 x i8] c"nfc_v9_cfg\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1308, i32 23 }
@___asan_gen_.320 = private unnamed_addr constant [11 x i8] c"nfc_v6_cfg\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1234, i32 23 }
@___asan_gen_.323 = private unnamed_addr constant [11 x i8] c"nfc_v8_cfg\00", align 1
@___asan_gen_.324 = private constant [51 x i8] c"../drivers/mtd/nand/raw/rockchip-nand-controller.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1271, i32 23 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_rk_nfc_driver_exit, ptr @__initcall__kmod_rockchip_nand_controller__256_1490_rk_nfc_driver_init6, ptr @rk_nfc_attach_chip._entry, ptr @rk_nfc_attach_chip._entry.23, ptr @rk_nfc_attach_chip._entry_ptr, ptr @rk_nfc_attach_chip._entry_ptr.25, ptr @rk_nfc_cmd._entry, ptr @rk_nfc_cmd._entry_ptr, ptr @rk_nfc_driver_exit, ptr @rk_nfc_ecc_init._entry, ptr @rk_nfc_ecc_init._entry_ptr, ptr @rk_nfc_enable_clks._entry, ptr @rk_nfc_enable_clks._entry.51, ptr @rk_nfc_enable_clks._entry_ptr, ptr @rk_nfc_enable_clks._entry_ptr.53, ptr @rk_nfc_nand_chip_init._entry, ptr @rk_nfc_nand_chip_init._entry.59, ptr @rk_nfc_nand_chip_init._entry.62, ptr @rk_nfc_nand_chip_init._entry.65, ptr @rk_nfc_nand_chip_init._entry.68, ptr @rk_nfc_nand_chip_init._entry.73, ptr @rk_nfc_nand_chip_init._entry_ptr, ptr @rk_nfc_nand_chip_init._entry_ptr.61, ptr @rk_nfc_nand_chip_init._entry_ptr.64, ptr @rk_nfc_nand_chip_init._entry_ptr.67, ptr @rk_nfc_nand_chip_init._entry_ptr.70, ptr @rk_nfc_nand_chip_init._entry_ptr.75, ptr @rk_nfc_nand_chips_init._entry, ptr @rk_nfc_nand_chips_init._entry_ptr, ptr @rk_nfc_probe._entry, ptr @rk_nfc_probe._entry.10, ptr @rk_nfc_probe._entry.14, ptr @rk_nfc_probe._entry.17, ptr @rk_nfc_probe._entry_ptr, ptr @rk_nfc_probe._entry_ptr.12, ptr @rk_nfc_probe._entry_ptr.16, ptr @rk_nfc_probe._entry_ptr.19, ptr @rk_nfc_read_page_hwecc._entry, ptr @rk_nfc_read_page_hwecc._entry.38, ptr @rk_nfc_read_page_hwecc._entry.41, ptr @rk_nfc_read_page_hwecc._entry_ptr, ptr @rk_nfc_read_page_hwecc._entry_ptr.40, ptr @rk_nfc_read_page_hwecc._entry_ptr.43, ptr @rk_nfc_write_page_hwecc._entry, ptr @rk_nfc_write_page_hwecc._entry.31, ptr @rk_nfc_write_page_hwecc._entry_ptr, ptr @rk_nfc_write_page_hwecc._entry_ptr.33, ptr @rk_nfc_driver, ptr @.str, ptr @rk_nfc_id_table, ptr @rk_nfc_pm_ops, ptr @rk_nfc_controller_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @nand_controller_init.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @rk_nfc_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.str.47, ptr @init_completion.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @rk_nfc_ooblayout_ops, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @nfc_v9_cfg, ptr @nfc_v6_cfg, ptr @nfc_v8_cfg], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_id_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_attach_chip._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_ecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_write_page_hwecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_write_page_hwecc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_read_page_hwecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_read_page_hwecc._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_read_page_hwecc._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_enable_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_enable_clks._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chip_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chip_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chip_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chip_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_nfc_nand_chip_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_v9_cfg to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_v6_cfg to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfc_v8_cfg to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk_nfc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk_nfc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nsels.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 216, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @nand_controller_init.__key) #9
  %chips = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %chips, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rk_nfc_controller_ops, ptr %ops, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %cfg = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %cfg, align 4
  %dev4 = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev4, align 4
  %done = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #9
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %nfc_clk = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %nfc_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %nfc_clk, align 4
  %cmp.i105 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.body, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk_nfc_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rk_nfc_probe, %if.then20)) #9
          to label %if.end22 [label %if.then20], !srcloc !170

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk_nfc_probe.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.5) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body, %if.end11.if.end22_crit_edge
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  %ahb_clk = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %ahb_clk, align 4
  %cmp.i106 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  %10 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ahb_clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call33 = tail call fastcc i32 @rk_nfc_enable_clks(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %do.end41, label %do.body43

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %clk_disable

do.body43:                                        ; preds = %if.end36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg, align 4
  %int_en_off = getelementptr inbounds %struct.nfc_cfg, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %int_en_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_en_off, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !172
  %call.i107 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call37, ptr noundef nonnull @rk_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool49.not = icmp eq i32 %call.i107, 0
  br i1 %tobool49.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %clk_disable

if.end54:                                         ; preds = %do.body43
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %21, ptr noundef null) #9
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end54.do.end.i_crit_edge, label %if.end54.for.body.i.i_crit_edge

if.end54.for.body.i.i_crit_edge:                  ; preds = %if.end54
  br label %for.body.i.i

if.end54.do.end.i_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end54.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end54.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end54.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %21, ptr noundef nonnull %child.06.i.i) #9
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i)
  %cmp.i108 = icmp sgt i32 %inc.i.i, 8
  %or.cond.i = or i1 %tobool.not.i, %cmp.i108
  br i1 %or.cond.i, label %of_get_child_count.exit.i.do.end.i_crit_edge, label %if.end.i

of_get_child_count.exit.i.do.end.i_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_child_count.exit.i.do.end.i_crit_edge, %if.end54.do.end.i_crit_edge
  %num.0.lcssa.i40.i = phi i32 [ %inc.i.i, %of_get_child_count.exit.i.do.end.i_crit_edge ], [ 0, %if.end54.do.end.i_crit_edge ]
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.54, i32 noundef %num.0.lcssa.i40.i) #12
  br label %do.end60

if.end.i:                                         ; preds = %of_get_child_count.exit.i
  %call2.i = tail call ptr @of_get_next_child(ptr noundef %21, ptr noundef null) #9
  %cmp3.not66.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.not66.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %assigned_cs.i.i = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 16
  %cur_timing.i.i.i = getelementptr inbounds %struct.rk_nfc, ptr %call.i, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nand_np.067.i = phi ptr [ %call2.i, %for.body.lr.ph.i ], [ %call8.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsels.i.i) #9
  %24 = ptrtoint ptr %nsels.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %nsels.i.i, align 4, !annotation !173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %25 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !173
  %call.i23.i = call ptr @of_get_property(ptr noundef nonnull %nand_np.067.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %nsels.i.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i23.i, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then6.i_crit_edge, label %if.end.i.i

for.body.i.if.then6.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end.i.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %nsels.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nsels.i.i, align 4
  %div121.i.i = lshr i32 %27, 2
  store i32 %div121.i.i, ptr %nsels.i.i, align 4
  %28 = add i32 %27, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %28)
  %29 = icmp ult i32 %28, -32
  br i1 %29, label %do.end.i.i, label %if.end3.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %div121.i.i) #12
  br label %if.then6.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = add nuw nsw i32 %div121.i.i, 2192
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool5.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end3.i.i.if.then6.i_crit_edge, label %if.end7.i.i

if.end3.i.i.if.then6.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %30 = ptrtoint ptr %nsels.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsels.i.i, align 4
  %conv.i.i = trunc i32 %31 to i8
  %nsels8.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %nsels8.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %nsels8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp9130.i.i = icmp sgt i32 %31, 0
  br i1 %cmp9130.i.i, label %if.end7.i.i.for.body.i24.i_crit_edge, label %if.end7.i.i.for.end.i.i_crit_edge

if.end7.i.i.for.end.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end7.i.i.for.body.i24.i_crit_edge:             ; preds = %if.end7.i.i
  br label %for.body.i24.i

for.body.i24.i:                                   ; preds = %if.end31.i.i.for.body.i24.i_crit_edge, %if.end7.i.i.for.body.i24.i_crit_edge
  %i.0131.i.i = phi i32 [ %inc.i25.i, %if.end31.i.i.for.body.i24.i_crit_edge ], [ 0, %if.end7.i.i.for.body.i24.i_crit_edge ]
  %call11.i.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.067.i, ptr noundef nonnull @.str.56, i32 noundef %i.0131.i.i, ptr noundef nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end17.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %call11.i.i) #12
  br label %if.then6.i

if.end17.i.i:                                     ; preds = %for.body.i24.i
  %33 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tmp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp18.i.i = icmp ugt i32 %34, 7
  br i1 %cmp18.i.i, label %do.end23.i.i, label %if.end24.i.i

do.end23.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %34) #12
  br label %if.then6.i

if.end24.i.i:                                     ; preds = %if.end17.i.i
  %call25.i.i = call i32 @_test_and_set_bit(i32 noundef %34, ptr noundef %assigned_cs.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  %35 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp.i.i, align 4
  br i1 %tobool26.not.i.i, label %if.end31.i.i, label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %36) #12
  br label %if.then6.i

if.end31.i.i:                                     ; preds = %if.end24.i.i
  %conv32.i.i = trunc i32 %36 to i8
  %arrayidx.i.i = getelementptr %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 7, i32 %i.0131.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv32.i.i, ptr %arrayidx.i.i, align 1
  %inc.i25.i = add nuw nsw i32 %i.0131.i.i, 1
  %38 = ptrtoint ptr %nsels.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nsels.i.i, align 4
  %cmp9.i.i = icmp slt i32 %inc.i25.i, %39
  br i1 %cmp9.i.i, label %if.end31.i.i.for.body.i24.i_crit_edge, label %if.end31.i.i.for.end.i.i_crit_edge

if.end31.i.i.for.end.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end31.i.i.for.body.i24.i_crit_edge:            ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i24.i

for.end.i.i:                                      ; preds = %if.end31.i.i.for.end.i.i_crit_edge, %if.end7.i.i.for.end.i.i_crit_edge
  %chip33.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1
  %controller34.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 32
  %40 = ptrtoint ptr %controller34.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %controller34.i.i, align 4
  %of_node.i.i.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %41 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %nand_np.067.i, ptr %of_node.i.i.i.i, align 8
  %name.i.i.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %42 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge

for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit.i.i

if.then.i.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.067.i, ptr noundef nonnull @.str.76, ptr noundef %name.i.i.i.i) #9
  br label %nand_set_flash_node.exit.i.i

nand_set_flash_node.exit.i.i:                     ; preds = %if.then.i.i.i.i, %for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge
  %priv1.i.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 34
  %44 = ptrtoint ptr %priv1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %priv1.i.i.i, align 8
  %options.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %options.i.i, align 8
  %or.i.i = or i32 %46, 1049088
  store i32 %or.i.i, ptr %options.i.i, align 8
  %bbt_options.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 10
  %47 = ptrtoint ptr %bbt_options.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 393216, ptr %bbt_options.i.i, align 8
  %ecc.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 33
  %48 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %ecc.i.i, align 8
  %owner.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 55
  %49 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %owner.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %50 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev1, ptr %parent.i.i, align 8
  %51 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i.i.i.i, align 8
  %tobool37.not.i.i = icmp eq ptr %52, null
  br i1 %tobool37.not.i.i, label %do.end41.i.i, label %if.end43.i.i

do.end41.i.i:                                     ; preds = %nand_set_flash_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.69) #12
  br label %if.then6.i

if.end43.i.i:                                     ; preds = %nand_set_flash_node.exit.i.i
  %ooblayout1.i.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 15
  %55 = ptrtoint ptr %ooblayout1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rk_nfc_ooblayout_ops, ptr %ooblayout1.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 65536) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %59, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 -2129657856) #9, !srcloc !172
  %60 = ptrtoint ptr %cur_timing.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4225, ptr %cur_timing.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %63 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg, align 4
  %randmz_off.i.i.i = getelementptr inbounds %struct.nfc_cfg, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %randmz_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %randmz_off.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %62, i32 %66
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 0) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %69 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg, align 4
  %dma_cfg_off.i.i.i = getelementptr inbounds %struct.nfc_cfg, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %dma_cfg_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_cfg_off.i.i.i, align 4
  %add.ptr13.i.i.i = getelementptr i8, ptr %68, i32 %72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i.i, i32 0) #9, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %75 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg, align 4
  %flctl_off.i.i.i = getelementptr inbounds %struct.nfc_cfg, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %flctl_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flctl_off.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %74, i32 %78
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 16777216) #9, !srcloc !172
  %79 = ptrtoint ptr %nsels.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nsels.i.i, align 4
  %call.i122.i.i = call i32 @nand_scan_with_ids(ptr noundef %chip33.i.i, i32 noundef %80, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i.i)
  %tobool45.not.i.i = icmp eq i32 %call.i122.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end47.i.i, label %if.end43.i.i.if.then6.i_crit_edge

if.end43.i.i.if.then6.i_crit_edge:                ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end47.i.i:                                     ; preds = %if.end43.i.i
  %81 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %options.i.i, align 8
  %and.i.i = and i32 %82, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end47.i.i.if.end61.i.i_crit_edge, label %if.then50.i.i

if.end47.i.i.if.end61.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i.i

if.then50.i.i:                                    ; preds = %if.end47.i.i
  %call.i.i123.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %nand_np.067.i, ptr noundef nonnull @.str.71, ptr noundef nonnull %tmp.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123.i.i)
  %tobool52.not.i.i = icmp sgt i32 %call.i.i123.i.i, -1
  br i1 %tobool52.not.i.i, label %cond.false.i.i, label %if.then50.i.i.cond.end.i.i_crit_edge

if.then50.i.i.cond.end.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tmp.i.i, align 4
  %phi.cast.i.i = trunc i32 %84 to i16
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.then50.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i16 [ %phi.cast.i.i, %cond.false.i.i ], [ 0, %if.then50.i.i.cond.end.i.i_crit_edge ]
  %boot_blks.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %boot_blks.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %cond.i.i, ptr %boot_blks.i.i, align 8
  %call.i.i124.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %nand_np.067.i, ptr noundef nonnull @.str.72, ptr noundef nonnull %tmp.i.i, i32 noundef 1, i32 noundef 0) #9
  %strength.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 33, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124.i.i)
  %tobool55.not126.i.i = icmp slt i32 %call.i.i124.i.i, 0
  %cond60.in.i.i = select i1 %tobool55.not126.i.i, ptr %strength.i.i, ptr %tmp.i.i
  %86 = ptrtoint ptr %cond60.in.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %cond60.i.i = load i32, ptr %cond60.in.i.i, align 4
  %boot_ecc.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 4
  %87 = ptrtoint ptr %boot_ecc.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond60.i.i, ptr %boot_ecc.i.i, align 4
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %cond.end.i.i, %if.end47.i.i.if.end61.i.i_crit_edge
  %call62.i.i = call i32 @mtd_device_parse_register(ptr noundef %chip33.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %tobool63.not.i.i = icmp eq i32 %call62.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end68.i.i, label %do.end67.i.i

do.end67.i.i:                                     ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74) #12
  call void @nand_cleanup(ptr noundef %chip33.i.i) #9
  br label %if.then6.i

if.end68.i.i:                                     ; preds = %if.end61.i.i
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i, align 4
  %call.i.i125.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %89, ptr noundef %chips) #9
  br i1 %call.i.i125.i.i, label %if.end.i.i.i.i, label %if.end68.i.i.for.inc.i_crit_edge

if.end68.i.i.for.inc.i_crit_edge:                 ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.i.i, ptr %prev.i, align 4
  %91 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %chips, ptr %call.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call.i.i.i, ptr %89, align 4
  br label %for.inc.i

if.then6.i:                                       ; preds = %do.end67.i.i, %if.end43.i.i.if.then6.i_crit_edge, %do.end41.i.i, %do.end30.i.i, %do.end23.i.i, %do.end16.i.i, %if.end3.i.i.if.then6.i_crit_edge, %do.end.i.i, %for.body.i.if.then6.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %do.end41.i.i ], [ %call62.i.i, %do.end67.i.i ], [ -22, %do.end30.i.i ], [ -22, %do.end23.i.i ], [ %call11.i.i, %do.end16.i.i ], [ -22, %do.end.i.i ], [ -19, %for.body.i.if.then6.i_crit_edge ], [ -12, %if.end3.i.i.if.then6.i_crit_edge ], [ %call.i122.i.i, %if.end43.i.i.if.then6.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsels.i.i) #9
  call void @of_node_put(ptr noundef nonnull %nand_np.067.i) #9
  %94 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chips, align 4
  %cmp.not45.i.i = icmp eq ptr %95, %chips
  br i1 %cmp.not45.i.i, label %if.then6.i.do.end60_crit_edge, label %if.then6.i.for.body.i28.i_crit_edge

if.then6.i.for.body.i28.i_crit_edge:              ; preds = %if.then6.i
  br label %for.body.i28.i

if.then6.i.do.end60_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

for.body.i28.i:                                   ; preds = %list_del.exit.i.i.for.body.i28.i_crit_edge, %if.then6.i.for.body.i28.i_crit_edge
  %rknand.046.i.i = phi ptr [ %tmp.048.i.i, %list_del.exit.i.i.for.body.i28.i_crit_edge ], [ %95, %if.then6.i.for.body.i28.i_crit_edge ]
  %96 = ptrtoint ptr %rknand.046.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %tmp.048.i.i = load ptr, ptr %rknand.046.i.i, align 8
  %chip8.i.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %rknand.046.i.i, i32 0, i32 1
  %call9.i.i = call i32 @mtd_device_unregister(ptr noundef %chip8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i27.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i27.i, label %for.body.i28.i.if.end.i31.i_crit_edge, label %do.end.i29.i, !prof !179

for.body.i28.i.if.end.i31.i_crit_edge:            ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i31.i

do.end.i29.i:                                     ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1204, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i31.i

if.end.i31.i:                                     ; preds = %do.end.i29.i, %for.body.i28.i.if.end.i31.i_crit_edge
  call void @nand_cleanup(ptr noundef %chip8.i.i) #9
  %call.i.i.i30.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %rknand.046.i.i) #9
  br i1 %call.i.i.i30.i, label %if.end.i.i.i32.i, label %if.end.i31.i.list_del.exit.i.i_crit_edge

if.end.i31.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i32.i:                                 ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %rknand.046.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i.i, align 4
  %99 = ptrtoint ptr %rknand.046.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rknand.046.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i32.i, %if.end.i31.i.list_del.exit.i.i_crit_edge
  %103 = ptrtoint ptr %rknand.046.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 256 to ptr), ptr %rknand.046.i.i, align 4
  %prev.i.i33.i = getelementptr inbounds %struct.list_head, ptr %rknand.046.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i33.i, align 4
  %cmp.not.i34.i = icmp eq ptr %tmp.048.i.i, %chips
  br i1 %cmp.not.i34.i, label %rk_nfc_nand_chips_init.exit, label %list_del.exit.i.i.for.body.i28.i_crit_edge

list_del.exit.i.i.for.body.i28.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i28.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %if.end68.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsels.i.i) #9
  %call8.i = call ptr @of_get_next_child(ptr noundef %21, ptr noundef nonnull %nand_np.067.i) #9
  %cmp3.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp3.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rk_nfc_nand_chips_init.exit:                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph.i)
  %tobool56.not = icmp eq i32 %retval.0.i.ph.i, 0
  br i1 %tobool56.not, label %rk_nfc_nand_chips_init.exit.cleanup_crit_edge, label %rk_nfc_nand_chips_init.exit.do.end60_crit_edge

rk_nfc_nand_chips_init.exit.do.end60_crit_edge:   ; preds = %rk_nfc_nand_chips_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

rk_nfc_nand_chips_init.exit.cleanup_crit_edge:    ; preds = %rk_nfc_nand_chips_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end60:                                         ; preds = %rk_nfc_nand_chips_init.exit.do.end60_crit_edge, %if.then6.i.do.end60_crit_edge, %do.end.i
  %retval.0.i109117 = phi i32 [ %retval.0.i.ph.i, %rk_nfc_nand_chips_init.exit.do.end60_crit_edge ], [ %retval.0.i.ph.i, %if.then6.i.do.end60_crit_edge ], [ -22, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #12
  br label %clk_disable

clk_disable:                                      ; preds = %do.end60, %do.end53, %do.end41
  %ret.0 = phi i32 [ -22, %do.end41 ], [ %call.i107, %do.end53 ], [ %retval.0.i109117, %do.end60 ]
  call fastcc void @rk_nfc_disable_clks(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %clk_disable, %rk_nfc_nand_chips_init.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end29, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %rk_nfc_nand_chips_init.exit.cleanup_crit_edge ], [ %7, %if.then8 ], [ %12, %do.end29 ], [ %call33, %if.end32.cleanup_crit_edge ], [ %ret.0, %clk_disable ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %page_buf = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page_buf, align 4
  tail call void @kfree(ptr noundef %3) #9
  %oob_buf = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_buf, align 4
  tail call void @kfree(ptr noundef %5) #9
  %chips.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chips.i, align 4
  %cmp.not45.i = icmp eq ptr %7, %chips.i
  br i1 %cmp.not45.i, label %entry.rk_nfc_chips_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rk_nfc_chips_cleanup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_chips_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %rknand.046.i = phi ptr [ %tmp.048.i, %list_del.exit.i.for.body.i_crit_edge ], [ %7, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %rknand.046.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.048.i = load ptr, ptr %rknand.046.i, align 8
  %chip8.i = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %rknand.046.i, i32 0, i32 1
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef %chip8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !179

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1204, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip8.i) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rknand.046.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rknand.046.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %rknand.046.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rknand.046.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %rknand.046.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %rknand.046.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rknand.046.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.048.i, %chips.i
  br i1 %cmp.not.i, label %list_del.exit.i.rk_nfc_chips_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.rk_nfc_chips_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_chips_cleanup.exit

rk_nfc_chips_cleanup.exit:                        ; preds = %list_del.exit.i.rk_nfc_chips_cleanup.exit_crit_edge, %entry.rk_nfc_chips_cleanup.exit_crit_edge
  %nfc_clk.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %nfc_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nfc_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rk_nfc_chips_cleanup.exit.rk_nfc_disable_clks.exit_crit_edge, label %if.then.i

rk_nfc_chips_cleanup.exit.rk_nfc_disable_clks.exit_crit_edge: ; preds = %rk_nfc_chips_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_disable_clks.exit

if.then.i:                                        ; preds = %rk_nfc_chips_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %18) #9
  tail call void @clk_unprepare(ptr noundef %18) #9
  br label %rk_nfc_disable_clks.exit

rk_nfc_disable_clks.exit:                         ; preds = %if.then.i, %rk_nfc_chips_cleanup.exit.rk_nfc_disable_clks.exit_crit_edge
  %ahb_clk.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ahb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_nfc_enable_clks(ptr noundef %dev, ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nfc_clk = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 3
  %0 = ptrtoint ptr %nfc_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfc_clk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ahb_clk = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 4
  %2 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahb_clk, align 4
  %call.i25 = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %if.end4.do.end10_crit_edge

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.end.i29:                                       ; preds = %if.end4
  %call1.i27 = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool2.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool2.not.i28, label %if.end.i29.cleanup_crit_edge, label %if.then3.i30

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i30:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then3.i30, %if.end4.do.end10_crit_edge
  %retval.0.i31.ph = phi i32 [ %call1.i27, %if.then3.i30 ], [ %call.i25, %if.end4.do.end10_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #12
  %4 = ptrtoint ptr %nfc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfc_clk, align 4
  %cmp.i33 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %do.end10.cleanup_crit_edge, label %if.then13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.end10.cleanup_crit_edge, %if.end.i29.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i31.ph, %if.then13 ], [ %retval.0.i31.ph, %do.end10.cleanup_crit_edge ], [ 0, %if.end.i29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_irq(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.rk_nfc, ptr %id, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %cfg = getelementptr inbounds %struct.rk_nfc, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %int_st_off = getelementptr inbounds %struct.nfc_cfg, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %int_st_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_st_off, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !180
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 4
  %int_en_off = getelementptr inbounds %struct.nfc_cfg, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %int_en_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_en_off, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !180
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and = and i32 %15, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg, align 4
  %int_clr_off = getelementptr inbounds %struct.nfc_cfg, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %int_clr_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %int_clr_off, align 4
  %add.ptr9 = getelementptr i8, ptr %17, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %neg = xor i32 %7, -1
  %and13 = and i32 %15, %neg
  %22 = tail call i32 @llvm.bswap.i32(i32 %and13)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg, align 4
  %int_en_off16 = getelementptr inbounds %struct.nfc_cfg, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %int_en_off16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %int_en_off16, align 4
  %add.ptr17 = getelementptr i8, ptr %24, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %22) #9, !srcloc !172
  %done = getelementptr inbounds %struct.rk_nfc, ptr %id, i32 0, i32 10
  tail call void @complete(ptr noundef %done) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_nfc_disable_clks(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nfc_clk = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 3
  %0 = ptrtoint ptr %nfc_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfc_clk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ahb_clk = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 4
  %2 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_attach_chip(ptr noundef %chip) #2 align 64 {
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
  %ecc4 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %6 = ptrtoint ptr %ecc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cfg.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 4
  %ecc_strengths.i = getelementptr inbounds %struct.nfc_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ecc_strengths.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ecc_strengths.i, align 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge.i, label %lor.lhs.false.i

entry.if.then_crit_edge.i:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i = zext i8 %11 to i32
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %14 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not.i = icmp eq i32 %15, 0
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.i = icmp sgt i32 %15, %conv.i
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end10_crit_edge

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then_crit_edge.i
  %conv18.pre-phi.i = phi i32 [ %.pre.i, %entry.if.then_crit_edge.i ], [ %conv.i, %lor.lhs.false.i.if.then.i_crit_edge ]
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1024, ptr %size.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %17 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %writesize.i, align 4
  %div1.i = lshr i32 %18, 10
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %19 = ptrtoint ptr %steps.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div1.i, ptr %steps.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oobsize.i, align 4
  %div13.i = udiv i32 %21, %div1.i
  %sub.i = shl i32 %div13.i, 3
  %mul.i = add i32 %sub.i, -32
  %div15.i = udiv i32 %mul.i, 14
  %conv16.i = trunc i32 %div15.i to i8
  %conv17.i = and i32 %div15.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17.i, i32 %conv18.pre-phi.i)
  %cmp19.i = icmp ugt i32 %conv17.i, %conv18.pre-phi.i
  %spec.select.i = select i1 %cmp19.i, i8 %11, i8 %conv16.i
  %22 = ptrtoint ptr %ecc_strengths.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ecc_strengths.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %23)
  %cmp27.not.i = icmp ult i8 %spec.select.i, %23
  br i1 %cmp27.not.i, label %for.inc.i, label %if.then.i.if.end35.i_crit_edge

if.then.i.if.end35.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.inc.i:                                        ; preds = %if.then.i
  %arrayidx25.1.i = getelementptr %struct.nfc_cfg, ptr %9, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx25.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %25)
  %cmp27.not.1.i = icmp ult i8 %spec.select.i, %25
  br i1 %cmp27.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end35.i_crit_edge

for.inc.i.if.end35.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx25.2.i = getelementptr %struct.nfc_cfg, ptr %9, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %27)
  %cmp27.not.2.i = icmp ult i8 %spec.select.i, %27
  br i1 %cmp27.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end35.i_crit_edge

for.inc.1.i.if.end35.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx25.3.i = getelementptr %struct.nfc_cfg, ptr %9, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx25.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %29)
  %cmp27.not.3.i = icmp ult i8 %spec.select.i, %29
  br i1 %cmp27.not.3.i, label %rk_nfc_ecc_init.exit, label %for.inc.2.i.if.end35.i_crit_edge

for.inc.2.i.if.end35.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %for.inc.2.i.if.end35.i_crit_edge, %for.inc.1.i.if.end35.i_crit_edge, %for.inc.i.if.end35.i_crit_edge, %if.then.i.if.end35.i_crit_edge
  %i.04.lcssa.i = phi i32 [ 0, %if.then.i.if.end35.i_crit_edge ], [ 1, %for.inc.i.if.end35.i_crit_edge ], [ 2, %for.inc.1.i.if.end35.i_crit_edge ], [ 3, %for.inc.2.i.if.end35.i_crit_edge ]
  %arrayidx36.i = getelementptr i8, ptr %ecc_strengths.i, i32 %i.04.lcssa.i
  %30 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %31 to i32
  %strength38.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %32 = ptrtoint ptr %strength38.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv37.i, ptr %strength38.i, align 4
  br label %if.end10

rk_nfc_ecc_init.exit:                             ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev34.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev34.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.26) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end35.i, %lor.lhs.false.i.if.end10_crit_edge
  %writesize40.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %35 = ptrtoint ptr %writesize40.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writesize40.i, align 4
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 4
  %div42.i = udiv i32 %36, %38
  %steps43.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %39 = ptrtoint ptr %steps43.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div42.i, ptr %steps43.i, align 4
  %strength44.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %40 = ptrtoint ptr %strength44.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %strength44.i, align 4
  %mul47.i = shl i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul47.i)
  %tobool.not.i.i = icmp eq i32 %mul47.i, 0
  %42 = tail call i32 @llvm.ctlz.i32(i32 %mul47.i, i1 true) #9, !range !183
  %sub.i.i = sub nuw nsw i32 32, %42
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %mul49.i = mul i32 %cond.i.i, %41
  %sub50.i = add i32 %mul49.i, 7
  %div51.i = sdiv i32 %sub50.i, 8
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %43 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div51.i, ptr %bytes.i, align 4
  %.tr = trunc i32 %div42.i to i16
  %conv = shl i16 %.tr, 2
  %metadata_size = getelementptr i8, ptr %chip, i32 2170
  %44 = ptrtoint ptr %metadata_size to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv, ptr %metadata_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %conv)
  %cmp13 = icmp ult i16 %conv, 6
  br i1 %cmp13, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef 6) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %45 = ptrtoint ptr %writesize40.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %writesize40.i, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %47 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %oobsize, align 4
  %add = add i32 %48, %46
  %page_buf = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 12
  %49 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %page_buf, align 4
  %tobool20.not = icmp eq ptr %50, null
  br i1 %tobool20.not, label %if.end19.if.end31_crit_edge, label %land.lhs.true

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end19
  %page_buf_size = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 14
  %51 = ptrtoint ptr %page_buf_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %page_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %52)
  %cmp21 = icmp ugt i32 %add, %52
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %call25 = tail call noalias ptr @krealloc(ptr noundef nonnull %50, i32 noundef %add, i32 noundef 3265) #13
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then23.cleanup_crit_edge, label %if.end28

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call25, ptr %page_buf, align 4
  %54 = ptrtoint ptr %page_buf_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %page_buf_size, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %land.lhs.true.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %55 = ptrtoint ptr %steps43.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %steps43.i, align 4
  %mul33 = shl i32 %56, 7
  %oob_buf = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 13
  %57 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %oob_buf, align 4
  %tobool34.not = icmp eq ptr %58, null
  br i1 %tobool34.not, label %if.end31.if.end48_crit_edge, label %land.lhs.true35

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true35:                                  ; preds = %if.end31
  %oob_buf_size = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 15
  %59 = ptrtoint ptr %oob_buf_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oob_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul33, i32 %60)
  %cmp36 = icmp ugt i32 %mul33, %60
  br i1 %cmp36, label %if.then38, label %land.lhs.true35.if.end48_crit_edge

land.lhs.true35.if.end48_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then38:                                        ; preds = %land.lhs.true35
  %call40 = tail call noalias ptr @krealloc(ptr noundef nonnull %58, i32 noundef %mul33, i32 noundef 3265) #13
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %page_buf, align 4
  tail call void @kfree(ptr noundef %62) #9
  %63 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %page_buf, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %oob_buf to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call40, ptr %oob_buf, align 4
  %65 = ptrtoint ptr %oob_buf_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul33, ptr %oob_buf_size, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %land.lhs.true35.if.end48_crit_edge, %if.end31.if.end48_crit_edge
  %66 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %page_buf, align 4
  %tobool50.not = icmp eq ptr %67, null
  br i1 %tobool50.not, label %if.end8.i.i, label %if.end48.if.end59_crit_edge

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end8.i.i:                                      ; preds = %if.end48
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3521) #14
  %68 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call9.i.i, ptr %page_buf, align 4
  %tobool55.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool55.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end57

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %page_buf_size58 = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 14
  %69 = ptrtoint ptr %page_buf_size58 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add, ptr %page_buf_size58, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end57, %if.end48.if.end59_crit_edge
  %70 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %oob_buf, align 4
  %tobool61.not = icmp eq ptr %71, null
  br i1 %tobool61.not, label %if.end8.i.i168, label %if.end59.if.end72_crit_edge

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end8.i.i168:                                   ; preds = %if.end59
  %call9.i.i167 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul33, i32 noundef 3521) #14
  %72 = ptrtoint ptr %oob_buf to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i.i167, ptr %oob_buf, align 4
  %tobool66.not = icmp eq ptr %call9.i.i167, null
  br i1 %tobool66.not, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end8.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %page_buf, align 4
  tail call void @kfree(ptr noundef %74) #9
  %75 = ptrtoint ptr %page_buf to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %page_buf, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end8.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  %oob_buf_size71 = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 15
  %76 = ptrtoint ptr %oob_buf_size71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul33, ptr %oob_buf_size71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %if.end59.if.end72_crit_edge
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %77 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @rk_nfc_write_page_raw, ptr %write_page_raw, align 4
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %78 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @rk_nfc_write_page_hwecc, ptr %write_page, align 4
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %79 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @rk_nfc_write_oob, ptr %write_oob, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %80 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @rk_nfc_read_page_raw, ptr %read_page_raw, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %81 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @rk_nfc_read_page_hwecc, ptr %read_page, align 8
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %82 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @rk_nfc_read_oob, ptr %read_oob, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then67, %if.end8.i.i.cleanup_crit_edge, %if.then42, %if.then23.cleanup_crit_edge, %do.end18, %rk_nfc_ecc_init.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end18 ], [ 0, %if.end72 ], [ -12, %if.then67 ], [ -12, %if.then42 ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %rk_nfc_ecc_init.exit ], [ -12, %if.then23.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %selected_bank.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %selected_bank.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %selected_bank.i, align 4
  %regs.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !180
  %8 = and i32 %7, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !172
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %chip, i32 -8
  %arrayidx.i = getelementptr %struct.rk_nfc_nand_chip, ptr %add.ptr.i.i, i32 0, i32 7, i32 %1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %selected_bank6.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %selected_bank6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %selected_bank6.i, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 8
  %add.i = add nuw nsw i32 %mul.i, 2048
  %band_offset.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %band_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %band_offset.i, align 4
  %regs9.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs9.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !180
  %18 = and i32 %17, 16777215
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %selected_bank6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %selected_bank6.i, align 4
  %shl.i = shl nuw i32 1, %21
  %or.i = or i32 %19, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %23 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs9.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !172
  %cur_timing.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %cur_timing.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur_timing.i, align 4
  %timing.i = getelementptr i8, ptr %chip, i32 2176
  %27 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timing.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp20.not.i = icmp eq i32 %26, %28
  br i1 %cmp20.not.i, label %if.end.i.if.end31.i_crit_edge, label %do.body23.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.body23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timing.i, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs9.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %31) #9, !srcloc !172
  %34 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timing.i, align 8
  %36 = ptrtoint ptr %cur_timing.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cur_timing.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.body23.i, %if.end.i.if.end31.i_crit_edge
  %cur_ecc.i = getelementptr inbounds %struct.rk_nfc, ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %cur_ecc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_ecc.i, align 4
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %39 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp32.not.i = icmp eq i32 %38, %40
  br i1 %cmp32.not.i, label %if.end31.i.if.end_crit_edge, label %if.then34.i

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then34.i:                                      ; preds = %if.end31.i
  %41 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rk_nfc, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.nfc_cfg, ptr %44, i32 0, i32 1, i32 0
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i.i)
  %cmp1.i.i = icmp eq i32 %40, %conv.i.i
  br i1 %cmp1.i.i, label %if.then34.i.do.body.i.i_crit_edge, label %for.inc.i.i

if.then34.i.do.body.i.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.inc.i.i:                                      ; preds = %if.then34.i
  %arrayidx.1.i.i = getelementptr %struct.nfc_cfg, ptr %44, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.1.i.i)
  %cmp1.1.i.i = icmp eq i32 %40, %conv.1.i.i
  br i1 %cmp1.1.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.nfc_cfg, ptr %44, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.2.i.i)
  %cmp1.2.i.i = icmp eq i32 %40, %conv.2.i.i
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.do.body.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.do.body.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.nfc_cfg, ptr %44, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.3.i.i)
  %cmp1.3.i.i = icmp eq i32 %40, %conv.3.i.i
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.do.body.i.i_crit_edge, label %for.inc.2.i.i.if.end_crit_edge

for.inc.2.i.i.if.end_crit_edge:                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.2.i.i.do.body.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.2.i.i.do.body.i.i_crit_edge, %for.inc.1.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge, %if.then34.i.do.body.i.i_crit_edge
  %i.04.lcssa.i.i = phi i32 [ 0, %if.then34.i.do.body.i.i_crit_edge ], [ 1, %for.inc.i.i.do.body.i.i_crit_edge ], [ 2, %for.inc.1.i.i.do.body.i.i_crit_edge ], [ 3, %for.inc.2.i.i.do.body.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.nfc_cfg, ptr %44, i32 0, i32 2, i32 %i.04.lcssa.i.i
  %53 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %regs.i.i = getelementptr inbounds %struct.rk_nfc, ptr %42, i32 0, i32 5
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %58 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i.i, align 4
  %bchctl_off.i.i = getelementptr inbounds %struct.nfc_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %bchctl_off.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bchctl_off.i.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %57, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %55) #9, !srcloc !172
  %cur_ecc.i.i = getelementptr inbounds %struct.rk_nfc, ptr %42, i32 0, i32 8
  %62 = ptrtoint ptr %cur_ecc.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %40, ptr %cur_ecc.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body.i.i, %for.inc.2.i.i.if.end_crit_edge, %if.end31.i.if.end_crit_edge, %if.then.i, %entry.if.end_crit_edge
  %call = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull @rk_nfc_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_setup_interface(ptr nocapture noundef %chip, i32 noundef %target, ptr noundef readonly %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %cmp = icmp slt i32 %target, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nfc_clk = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %nfc_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nfc_clk, align 4
  %cmp.i47 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.then7, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %ahb_clk = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ahb_clk, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %.sink = phi ptr [ %8, %if.then7 ], [ %6, %if.end5.if.end11_crit_edge ]
  %call10 = tail call i32 @clk_get_rate(ptr noundef %.sink) #9
  %div = udiv i32 %call10, 1000
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %9 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tWC_min, align 4
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %11 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tRC_min, align 8
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %12)
  %div13 = udiv i32 %13, 1000
  %mul = mul i32 %div13, %div
  %sub = add i32 %mul, 999999
  %div14 = udiv i32 %sub, 1000000
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %14 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tREA_max, align 4
  %div15 = udiv i32 %15, 1000
  %mul16 = mul i32 %div15, %div
  %sub18 = add i32 %mul16, 999999
  %div19 = udiv i32 %sub18, 1000000
  %16 = tail call i32 @llvm.umax.i32(i32 %div14, i32 %div19)
  %shl23 = shl nuw nsw i32 %16, 5
  %or24 = or i32 %shl23, 4097
  %timing = getelementptr i8, ptr %chip, i32 2176
  %17 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or24, ptr %timing, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_write_page_raw(ptr noundef %chip, ptr noundef readonly %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %div = udiv i32 %5, %7
  %boot_blks = getelementptr i8, ptr %chip, i32 2168
  %8 = ptrtoint ptr %boot_blks to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %boot_blks, align 8
  %conv = zext i16 %9 to i32
  %mul = mul i32 %div, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %page)
  %cmp = icmp sgt i32 %mul, %page
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %boot_ecc = getelementptr i8, ptr %chip, i32 2172
  %10 = ptrtoint ptr %boot_ecc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boot_ecc, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %12 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.not = icmp eq i32 %11, %13
  br i1 %cmp6.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool8.not = icmp eq ptr %buf, null
  br i1 %tobool8.not, label %if.end11, label %if.end11.thread

if.end11:                                         ; preds = %if.end
  %page_buf = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page_buf, align 4
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oobsize, align 4
  %add = add i32 %19, %17
  %20 = call ptr @memset(ptr %15, i32 255, i32 %add)
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %21 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12114 = icmp sgt i32 %22, 0
  br i1 %cmp12114, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end11.thread:                                  ; preds = %if.end
  %steps118 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %23 = ptrtoint ptr %steps118 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %steps118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp12114119 = icmp sgt i32 %24, 0
  br i1 %cmp12114119, label %if.then15.peel, label %if.end11.thread.for.end_crit_edge

if.end11.thread.for.end_crit_edge:                ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %size.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  br label %if.end27.peel

if.then15.peel:                                   ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #11
  %size.i.i122 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %page_buf.i.peel = getelementptr inbounds %struct.rk_nfc, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %page_buf.i.peel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %page_buf.i.peel, align 4
  %29 = ptrtoint ptr %size.i.i122 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i122, align 8
  %31 = call ptr @memcpy(ptr %28, ptr %buf, i32 %30)
  br label %if.end27.peel

if.end27.peel:                                    ; preds = %if.then15.peel, %for.body.lr.ph
  %size.i.i129 = phi ptr [ %size.i.i122, %if.then15.peel ], [ %size.i.i, %for.body.lr.ph ]
  %steps120127 = phi ptr [ %steps118, %if.then15.peel ], [ %steps, %for.body.lr.ph ]
  %bytes.i.i131 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %oob_poi.i98133 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %metadata_size.i135 = getelementptr i8, ptr %chip, i32 2170
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  %page_buf.i82.peel = getelementptr inbounds %struct.rk_nfc, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %page_buf.i82.peel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %page_buf.i82.peel, align 4
  %36 = ptrtoint ptr %size.i.i129 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i.i129, align 8
  %add.ptr2.i.peel = getelementptr i8, ptr %35, i32 %37
  %38 = ptrtoint ptr %steps120127 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %steps120127, align 4
  %40 = ptrtoint ptr %oob_poi.i98133 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %oob_poi.i98133, align 4
  %sub.peel = shl i32 %39, 2
  %mul.i87.peel = add i32 %sub.peel, -4
  %add.ptr.i88.peel = getelementptr i8, ptr %41, i32 %mul.i87.peel
  %42 = ptrtoint ptr %add.ptr.i88.peel to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr.i88.peel, align 1
  %44 = ptrtoint ptr %add.ptr2.i.peel to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %add.ptr2.i.peel, align 1
  %45 = load ptr, ptr %priv.i, align 8
  %page_buf.i102.peel = getelementptr inbounds %struct.rk_nfc, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %page_buf.i102.peel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %page_buf.i102.peel, align 4
  %48 = load i32, ptr %size.i.i129, align 8
  %49 = ptrtoint ptr %bytes.i.i131 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytes.i.i131, align 4
  %add.ptr2.i109.peel = getelementptr i8, ptr %47, i32 %48
  %add.ptr.peel = getelementptr i8, ptr %add.ptr2.i109.peel, i32 4
  %51 = load ptr, ptr %oob_poi.i98133, align 4
  %52 = ptrtoint ptr %metadata_size.i135 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %metadata_size.i135, align 2
  %conv.i.peel = zext i16 %53 to i32
  %add.ptr.i111.peel = getelementptr i8, ptr %51, i32 %conv.i.peel
  %54 = call ptr @memcpy(ptr %add.ptr.peel, ptr %add.ptr.i111.peel, i32 %50)
  %55 = load i32, ptr %steps120127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp12.peel = icmp sgt i32 %55, 1
  br i1 %cmp12.peel, label %if.end27.peel.for.body_crit_edge, label %if.end27.peel.for.end_crit_edge

if.end27.peel.for.end_crit_edge:                  ; preds = %if.end27.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end27.peel.for.body_crit_edge:                 ; preds = %if.end27.peel
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %if.end27.peel.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 1, %if.end27.peel.for.body_crit_edge ]
  br i1 %tobool8.not, label %for.body.if.end27_crit_edge, label %if.then15

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 8
  %page_buf.i = getelementptr inbounds %struct.rk_nfc, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %page_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page_buf.i, align 4
  %60 = ptrtoint ptr %size.i.i129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i.i129, align 8
  %62 = ptrtoint ptr %bytes.i.i131 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytes.i.i131, align 4
  %add.i.i = add i32 %61, 4
  %add2.i.i = add i32 %add.i.i, %63
  %mul.i = mul i32 %add2.i.i, %i.0115
  %add.ptr.i78 = getelementptr i8, ptr %59, i32 %mul.i
  %mul.i79 = mul i32 %61, %i.0115
  %add.ptr.i80 = getelementptr i8, ptr %buf, i32 %mul.i79
  %64 = call ptr @memcpy(ptr %add.ptr.i78, ptr %add.ptr.i80, i32 %61)
  br label %if.end27

if.end27:                                         ; preds = %if.then15, %for.body.if.end27_crit_edge
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 8
  %page_buf.i90 = getelementptr inbounds %struct.rk_nfc, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %page_buf.i90 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %page_buf.i90, align 4
  %69 = ptrtoint ptr %size.i.i129 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i.i129, align 8
  %71 = ptrtoint ptr %bytes.i.i131 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bytes.i.i131, align 4
  %add.i.i93 = add i32 %70, 4
  %add2.i.i94 = add i32 %add.i.i93, %72
  %mul.i95 = mul i32 %add2.i.i94, %i.0115
  %add.ptr.i96 = getelementptr i8, ptr %68, i32 %mul.i95
  %add.ptr2.i97 = getelementptr i8, ptr %add.ptr.i96, i32 %70
  %73 = ptrtoint ptr %oob_poi.i98133 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %oob_poi.i98133, align 4
  %sub25 = shl i32 %i.0115, 2
  %mul.i99 = add i32 %sub25, -4
  %add.ptr.i100 = getelementptr i8, ptr %74, i32 %mul.i99
  %75 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %add.ptr.i100, align 1
  %77 = ptrtoint ptr %add.ptr2.i97 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %add.ptr2.i97, align 1
  %78 = load ptr, ptr %priv.i, align 8
  %page_buf.i102 = getelementptr inbounds %struct.rk_nfc, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %page_buf.i102 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %page_buf.i102, align 4
  %81 = load i32, ptr %size.i.i129, align 8
  %82 = load i32, ptr %bytes.i.i131, align 4
  %add.i.i105 = add i32 %81, 4
  %add2.i.i106 = add i32 %add.i.i105, %82
  %mul.i107 = mul i32 %add2.i.i106, %i.0115
  %add.ptr.i108 = getelementptr i8, ptr %80, i32 4
  %add.ptr2.i109 = getelementptr i8, ptr %add.ptr.i108, i32 %mul.i107
  %add.ptr = getelementptr i8, ptr %add.ptr2.i109, i32 %81
  %83 = load ptr, ptr %oob_poi.i98133, align 4
  %84 = ptrtoint ptr %metadata_size.i135 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %metadata_size.i135, align 2
  %conv.i = zext i16 %85 to i32
  %add.ptr.i111 = getelementptr i8, ptr %83, i32 %conv.i
  %mul.i112 = mul i32 %82, %i.0115
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i111, i32 %mul.i112
  %86 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr1.i, i32 %82)
  %inc = add nuw nsw i32 %i.0115, 1
  %87 = ptrtoint ptr %steps120127 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %steps120127, align 4
  %cmp12 = icmp slt i32 %inc, %88
  br i1 %cmp12, label %if.end27.for.body_crit_edge, label %if.end27.for.end_crit_edge, !llvm.loop !188

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %if.end27.peel.for.end_crit_edge, %if.end11.thread.for.end_crit_edge, %if.end11.for.end_crit_edge
  %call30 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %89 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %writesize, align 4
  %oobsize32 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %91 = ptrtoint ptr %oobsize32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %oobsize32, align 4
  %add33 = add i32 %92, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add33)
  %cmp5.i = icmp sgt i32 %add33, 0
  br i1 %cmp5.i, label %do.body.lr.ph.i, label %for.end.rk_nfc_write_buf.exit_crit_edge

for.end.rk_nfc_write_buf.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_write_buf.exit

do.body.lr.ph.i:                                  ; preds = %for.end
  %regs.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 5
  %band_offset.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.06.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i, align 1
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %97 = ptrtoint ptr %band_offset.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %band_offset.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113, i8 %94) #9, !srcloc !191
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add33
  br i1 %exitcond.not.i, label %do.body.i.rk_nfc_write_buf.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.rk_nfc_write_buf.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_write_buf.exit

rk_nfc_write_buf.exit:                            ; preds = %do.body.i.rk_nfc_write_buf.exit_crit_edge, %for.end.rk_nfc_write_buf.exit_crit_edge
  %call34 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  br label %cleanup

cleanup:                                          ; preds = %rk_nfc_write_buf.exit, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %rk_nfc_write_buf.exit ], [ -5, %land.lhs.true5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_write_page_hwecc(ptr noundef %chip, ptr noundef readonly %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp = icmp sgt i32 %3, 60
  %cond = select i1 %cmp, i32 128, i32 64
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %div = udiv i32 %5, %7
  %call4 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %buf, null
  %page_buf6 = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %page_buf6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_buf6, align 4
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %writesize, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %9, ptr %buf, i32 %11)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = call ptr @memset(ptr %9, i32 255, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %boot_blks = getelementptr i8, ptr %chip, i32 2168
  %14 = ptrtoint ptr %boot_blks to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %boot_blks, align 8
  %conv = zext i16 %15 to i32
  %mul = mul i32 %div, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %page)
  %cmp8 = icmp sgt i32 %mul, %page
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %16 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %options, align 8
  %and = and i32 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end18_crit_edge, label %if.then11

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11:                                        ; preds = %land.lhs.true
  %boot_ecc = getelementptr i8, ptr %chip, i32 2172
  %18 = ptrtoint ptr %boot_ecc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boot_ecc, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %20 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp12.not = icmp eq i32 %19, %21
  br i1 %cmp12.not, label %if.then11.if.end18_crit_edge, label %if.then14

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %if.then11
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rk_nfc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 4
  %arrayidx.i = getelementptr %struct.nfc_cfg, ptr %25, i32 0, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp1.i = icmp eq i32 %19, %conv.i
  br i1 %cmp1.i, label %if.then14.do.body.i_crit_edge, label %for.inc.i

if.then14.do.body.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.i:                                        ; preds = %if.then14
  %arrayidx.1.i = getelementptr %struct.nfc_cfg, ptr %25, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.1.i)
  %cmp1.1.i = icmp eq i32 %19, %conv.1.i
  br i1 %cmp1.1.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.1.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.nfc_cfg, ptr %25, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.2.i)
  %cmp1.2.i = icmp eq i32 %19, %conv.2.i
  br i1 %cmp1.2.i, label %for.inc.1.i.do.body.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.body.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.nfc_cfg, ptr %25, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.3.i)
  %cmp1.3.i = icmp eq i32 %19, %conv.3.i
  br i1 %cmp1.3.i, label %for.inc.2.i.do.body.i_crit_edge, label %for.inc.2.i.if.end18_crit_edge

for.inc.2.i.if.end18_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.2.i.do.body.i_crit_edge, %for.inc.1.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge, %if.then14.do.body.i_crit_edge
  %i.04.lcssa.i = phi i32 [ 0, %if.then14.do.body.i_crit_edge ], [ 1, %for.inc.i.do.body.i_crit_edge ], [ 2, %for.inc.1.i.do.body.i_crit_edge ], [ 3, %for.inc.2.i.do.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.nfc_cfg, ptr %25, i32 0, i32 2, i32 %i.04.lcssa.i
  %34 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %regs.i = getelementptr inbounds %struct.rk_nfc, ptr %23, i32 0, i32 5
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %39 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i, align 4
  %bchctl_off.i = getelementptr inbounds %struct.nfc_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %bchctl_off.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bchctl_off.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %38, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %36) #9, !srcloc !172
  %cur_ecc.i = getelementptr inbounds %struct.rk_nfc, ptr %23, i32 0, i32 8
  %43 = ptrtoint ptr %cur_ecc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %19, ptr %cur_ecc.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.body.i, %for.inc.2.i.if.end18_crit_edge, %if.then11.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %tobool83.not = phi i1 [ false, %if.then11.if.end18_crit_edge ], [ true, %land.lhs.true.if.end18_crit_edge ], [ true, %if.end.if.end18_crit_edge ], [ false, %for.inc.2.i.if.end18_crit_edge ], [ false, %do.body.i ]
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %44 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp19226 = icmp sgt i32 %45, 0
  br i1 %cmp19226, label %if.end36.peel, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end36.peel:                                    ; preds = %if.end18
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %sub41 = add i32 %div, 1073741823
  %and42 = and i32 %sub41, %page
  %mul43 = shl i32 %and42, 2
  %cfg = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 1
  %oob_buf50 = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 13
  %div51176 = lshr exact i32 %cond, 2
  %reg.1.peel = select i1 %tobool83.not, i32 -1, i32 %mul43
  %46 = ptrtoint ptr %oob_buf50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %oob_buf50, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %reg.1.peel, ptr %47, align 4
  %49 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp19.peel = icmp sgt i32 %50, 1
  br i1 %cmp19.peel, label %if.end36.peel.if.end36_crit_edge, label %if.end36.peel.for.end_crit_edge

if.end36.peel.for.end_crit_edge:                  ; preds = %if.end36.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end36.peel.if.end36_crit_edge:                 ; preds = %if.end36.peel
  br label %if.end36

if.end36:                                         ; preds = %if.end36.if.end36_crit_edge, %if.end36.peel.if.end36_crit_edge
  %i.0227 = phi i32 [ %inc, %if.end36.if.end36_crit_edge ], [ 1, %if.end36.peel.if.end36_crit_edge ]
  %51 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %oob_poi, align 4
  %sub = shl i32 %i.0227, 2
  %mul24 = add i32 %sub, -4
  %add.ptr = getelementptr i8, ptr %52, i32 %mul24
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr, align 1
  %conv25 = zext i8 %54 to i32
  %arrayidx26 = getelementptr i8, ptr %add.ptr, i32 1
  %55 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %56 to i32
  %shl = shl nuw nsw i32 %conv27, 8
  %or = or i32 %shl, %conv25
  %arrayidx28 = getelementptr i8, ptr %add.ptr, i32 2
  %57 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %58 to i32
  %shl30 = shl nuw nsw i32 %conv29, 16
  %or31 = or i32 %or, %shl30
  %arrayidx32 = getelementptr i8, ptr %add.ptr, i32 3
  %59 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %60 to i32
  %shl34 = shl nuw i32 %conv33, 24
  %or35 = or i32 %or31, %shl34
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp45 = icmp eq i32 %64, 2
  %65 = ptrtoint ptr %oob_buf50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %oob_buf50, align 4
  %mul52 = select i1 %cmp45, i32 1, i32 %div51176
  %i.0227.sink = mul i32 %i.0227, %mul52
  %arrayidx48 = getelementptr i32, ptr %66, i32 %i.0227.sink
  %67 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or35, ptr %arrayidx48, align 4
  %inc = add nuw nsw i32 %i.0227, 1
  %68 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %steps, align 4
  %cmp19 = icmp slt i32 %inc, %69
  br i1 %cmp19, label %if.end36.if.end36_crit_edge, label %if.end36.for.end_crit_edge, !llvm.loop !192

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end36.if.end36_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %if.end36.peel.for.end_crit_edge, %if.end18.for.end_crit_edge
  %dev = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %page_buf55 = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 12
  %72 = ptrtoint ptr %page_buf55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %page_buf55, align 4
  %74 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %writesize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %73) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %for.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !179

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %71) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %71, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %79, %if.end.i.i ], [ %77, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %71, ptr noundef %73, i32 noundef %75) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %81 = ptrtoint ptr %73 to i32
  %sub.i = add i32 %81, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i178 = getelementptr %struct.page, ptr %80, i32 %shr.i
  %and.i = and i32 %81, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %71, ptr noundef %add.ptr.i178, i32 noundef %and.i, i32 noundef %75, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %oob_buf59 = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 13
  %84 = ptrtoint ptr %oob_buf59 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %oob_buf59, align 4
  %86 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %steps, align 4
  %call.i179 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %85) #9
  br i1 %call.i179, label %land.rhs.i181, label %if.end39.i194

land.rhs.i181:                                    ; preds = %dma_map_single_attrs.exit
  %.b1.i180 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i180, label %land.rhs.i181.dma_map_single_attrs.exit196_crit_edge, label %if.then.i185, !prof !179

land.rhs.i181.dma_map_single_attrs.exit196_crit_edge: ; preds = %land.rhs.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit196

if.then.i185:                                     ; preds = %land.rhs.i181
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i182 = tail call ptr @dev_driver_string(ptr noundef %83) #9
  %init_name.i.i183 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 3
  %88 = ptrtoint ptr %init_name.i.i183 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_name.i.i183, align 8
  %tobool.not.i.i184 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i184, label %if.end.i.i186, label %if.then.i185.dev_name.exit.i188_crit_edge

if.then.i185.dev_name.exit.i188_crit_edge:        ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i188

if.end.i.i186:                                    ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %83, align 4
  br label %dev_name.exit.i188

dev_name.exit.i188:                               ; preds = %if.end.i.i186, %if.then.i185.dev_name.exit.i188_crit_edge
  %retval.0.i.i187 = phi ptr [ %91, %if.end.i.i186 ], [ %89, %if.then.i185.dev_name.exit.i188_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i182, ptr noundef %retval.0.i.i187) #9
  br label %dma_map_single_attrs.exit196

if.end39.i194:                                    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul61 = mul i32 %87, %cond
  tail call void @debug_dma_map_single(ptr noundef %83, ptr noundef %85, i32 noundef %mul61) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %92 = load ptr, ptr @mem_map, align 4
  %93 = ptrtoint ptr %85 to i32
  %sub.i189 = add i32 %93, 1073741824
  %shr.i190 = lshr i32 %sub.i189, 12
  %add.ptr.i191 = getelementptr %struct.page, ptr %92, i32 %shr.i190
  %and.i192 = and i32 %93, 4095
  %call41.i193 = tail call i32 @dma_map_page_attrs(ptr noundef %83, ptr noundef %add.ptr.i191, i32 noundef %and.i192, i32 noundef %mul61, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit196

dma_map_single_attrs.exit196:                     ; preds = %if.end39.i194, %dev_name.exit.i188, %land.rhs.i181.dma_map_single_attrs.exit196_crit_edge
  %retval.0.i195 = phi i32 [ %call41.i193, %if.end39.i194 ], [ -1, %dev_name.exit.i188 ], [ -1, %land.rhs.i181.dma_map_single_attrs.exit196_crit_edge ]
  %done = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 10
  %94 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 5
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %cfg63 = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 1
  %97 = ptrtoint ptr %cfg63 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cfg63, align 4
  %int_en_off = getelementptr inbounds %struct.nfc_cfg, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %int_en_off to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %int_en_off, align 4
  %add.ptr64 = getelementptr i8, ptr %96, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 16777216) #9, !srcloc !172
  %101 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %steps, align 4
  %conv66 = trunc i32 %102 to i8
  tail call fastcc void @rk_nfc_xfer_start(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv66, i32 noundef %retval.0.i, i32 noundef %retval.0.i195)
  %call69 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.end74, label %dma_map_single_attrs.exit196.if.end76_crit_edge

dma_map_single_attrs.exit196.if.end76_crit_edge:  ; preds = %dma_map_single_attrs.exit196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.end74:                                         ; preds = %dma_map_single_attrs.exit196
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.28) #12
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %dma_map_single_attrs.exit196.if.end76_crit_edge
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %107 = ptrtoint ptr %cfg63 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg63, align 4
  %flctl_off.i = getelementptr inbounds %struct.nfc_cfg, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %flctl_off.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flctl_off.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %106, i32 %110
  %call.i200 = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i200, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 504) #9
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #9, !srcloc !180
  %112 = and i32 %111, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not35.i = icmp eq i32 %112, 0
  br i1 %tobool.not35.i, label %if.end76.land.lhs.true.i_crit_edge, label %if.end76.rk_nfc_wait_for_xfer_done.exit_crit_edge

if.end76.rk_nfc_wait_for_xfer_done.exit_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_wait_for_xfer_done.exit

if.end76.land.lhs.true.i_crit_edge:               ; preds = %if.end76
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then21.i.land.lhs.true.i_crit_edge, %if.end76.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then21.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #9, !srcloc !180
  %114 = and i32 %113, 4096
  %tobool.not.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i, label %if.then21.i.land.lhs.true.i_crit_edge, label %if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge

if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_wait_for_xfer_done.exit

if.then21.i.land.lhs.true.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #9, !srcloc !180
  %116 = and i32 %115, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool25.not.i = icmp eq i32 %116, 0
  %spec.select.i = select i1 %tobool25.not.i, i32 -110, i32 0
  br label %rk_nfc_wait_for_xfer_done.exit

rk_nfc_wait_for_xfer_done.exit:                   ; preds = %for.end.i, %if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge, %if.end76.rk_nfc_wait_for_xfer_done.exit_crit_edge
  %117 = phi i32 [ 0, %if.end76.rk_nfc_wait_for_xfer_done.exit_crit_edge ], [ %spec.select.i, %for.end.i ], [ 0, %if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge ]
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  %120 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %writesize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %119, i32 noundef %retval.0.i, i32 noundef %121, i32 noundef 1, i32 noundef 0) #9
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %124 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %steps, align 4
  %mul82 = mul i32 %125, %cond
  tail call void @dma_unmap_page_attrs(ptr noundef %123, i32 noundef %retval.0.i195, i32 noundef %mul82, i32 noundef 1, i32 noundef 0) #9
  br i1 %tobool83.not, label %rk_nfc_wait_for_xfer_done.exit.if.end92_crit_edge, label %land.lhs.true84

rk_nfc_wait_for_xfer_done.exit.if.end92_crit_edge: ; preds = %rk_nfc_wait_for_xfer_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true84:                                  ; preds = %rk_nfc_wait_for_xfer_done.exit
  %boot_ecc85 = getelementptr i8, ptr %chip, i32 2172
  %126 = ptrtoint ptr %boot_ecc85 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %boot_ecc85, align 4
  %strength86 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %128 = ptrtoint ptr %strength86 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %strength86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp87.not = icmp eq i32 %127, %129
  br i1 %cmp87.not, label %land.lhs.true84.if.end92_crit_edge, label %if.then89

land.lhs.true84.if.end92_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then89:                                        ; preds = %land.lhs.true84
  %130 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv.i, align 8
  %cfg.i202 = getelementptr inbounds %struct.rk_nfc, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %cfg.i202 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i202, align 4
  %arrayidx.i203 = getelementptr %struct.nfc_cfg, ptr %133, i32 0, i32 1, i32 0
  %134 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i203, align 1
  %conv.i204 = zext i8 %135 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv.i204)
  %cmp1.i205 = icmp eq i32 %129, %conv.i204
  br i1 %cmp1.i205, label %if.then89.do.body.i224_crit_edge, label %for.inc.i209

if.then89.do.body.i224_crit_edge:                 ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i224

for.inc.i209:                                     ; preds = %if.then89
  %arrayidx.1.i206 = getelementptr %struct.nfc_cfg, ptr %133, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %arrayidx.1.i206 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.1.i206, align 1
  %conv.1.i207 = zext i8 %137 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv.1.i207)
  %cmp1.1.i208 = icmp eq i32 %129, %conv.1.i207
  br i1 %cmp1.1.i208, label %for.inc.i209.do.body.i224_crit_edge, label %for.inc.1.i213

for.inc.i209.do.body.i224_crit_edge:              ; preds = %for.inc.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i224

for.inc.1.i213:                                   ; preds = %for.inc.i209
  %arrayidx.2.i210 = getelementptr %struct.nfc_cfg, ptr %133, i32 0, i32 1, i32 2
  %138 = ptrtoint ptr %arrayidx.2.i210 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.2.i210, align 1
  %conv.2.i211 = zext i8 %139 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv.2.i211)
  %cmp1.2.i212 = icmp eq i32 %129, %conv.2.i211
  br i1 %cmp1.2.i212, label %for.inc.1.i213.do.body.i224_crit_edge, label %for.inc.2.i217

for.inc.1.i213.do.body.i224_crit_edge:            ; preds = %for.inc.1.i213
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i224

for.inc.2.i217:                                   ; preds = %for.inc.1.i213
  %arrayidx.3.i214 = getelementptr %struct.nfc_cfg, ptr %133, i32 0, i32 1, i32 3
  %140 = ptrtoint ptr %arrayidx.3.i214 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.3.i214, align 1
  %conv.3.i215 = zext i8 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv.3.i215)
  %cmp1.3.i216 = icmp eq i32 %129, %conv.3.i215
  br i1 %cmp1.3.i216, label %for.inc.2.i217.do.body.i224_crit_edge, label %for.inc.2.i217.if.end92_crit_edge

for.inc.2.i217.if.end92_crit_edge:                ; preds = %for.inc.2.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.inc.2.i217.do.body.i224_crit_edge:            ; preds = %for.inc.2.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i224

do.body.i224:                                     ; preds = %for.inc.2.i217.do.body.i224_crit_edge, %for.inc.1.i213.do.body.i224_crit_edge, %for.inc.i209.do.body.i224_crit_edge, %if.then89.do.body.i224_crit_edge
  %i.04.lcssa.i218 = phi i32 [ 0, %if.then89.do.body.i224_crit_edge ], [ 1, %for.inc.i209.do.body.i224_crit_edge ], [ 2, %for.inc.1.i213.do.body.i224_crit_edge ], [ 3, %for.inc.2.i217.do.body.i224_crit_edge ]
  %arrayidx4.i219 = getelementptr %struct.nfc_cfg, ptr %133, i32 0, i32 2, i32 %i.04.lcssa.i218
  %142 = ptrtoint ptr %arrayidx4.i219 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx4.i219, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #9
  %regs.i220 = getelementptr inbounds %struct.rk_nfc, ptr %131, i32 0, i32 5
  %145 = ptrtoint ptr %regs.i220 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i220, align 4
  %147 = ptrtoint ptr %cfg.i202 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i202, align 4
  %bchctl_off.i221 = getelementptr inbounds %struct.nfc_cfg, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %bchctl_off.i221 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bchctl_off.i221, align 4
  %add.ptr.i222 = getelementptr i8, ptr %146, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %144) #9, !srcloc !172
  %cur_ecc.i223 = getelementptr inbounds %struct.rk_nfc, ptr %131, i32 0, i32 8
  %151 = ptrtoint ptr %cur_ecc.i223 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %129, ptr %cur_ecc.i223, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.body.i224, %for.inc.2.i217.if.end92_crit_edge, %land.lhs.true84.if.end92_crit_edge, %rk_nfc_wait_for_xfer_done.exit.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool93.not = icmp eq i32 %117, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end97
  %retval.0 = phi i32 [ -110, %do.end97 ], [ %call100, %if.end99 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rk_nfc_write_page_hwecc(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_read_page_raw(ptr noundef %chip, ptr noundef writeonly %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %div = udiv i32 %5, %7
  %boot_blks = getelementptr i8, ptr %chip, i32 2168
  %8 = ptrtoint ptr %boot_blks to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %boot_blks, align 8
  %conv = zext i16 %9 to i32
  %mul = mul i32 %div, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %page)
  %cmp = icmp sgt i32 %mul, %page
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %boot_ecc = getelementptr i8, ptr %chip, i32 2172
  %10 = ptrtoint ptr %boot_ecc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boot_ecc, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %12 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.not = icmp eq i32 %11, %13
  br i1 %cmp6.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %page_buf = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page_buf, align 4
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oobsize, align 4
  %add = add i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp5.i = icmp sgt i32 %add, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.end.rk_nfc_read_buf.exit_crit_edge

if.end.rk_nfc_read_buf.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_read_buf.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %regs.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 5
  %band_offset.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %22 = ptrtoint ptr %band_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %band_offset.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i66) #9, !srcloc !194
  %arrayidx.i = getelementptr i8, ptr %15, i32 %i.06.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add
  br i1 %exitcond.not.i, label %for.body.i.rk_nfc_read_buf.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.rk_nfc_read_buf.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_read_buf.exit

rk_nfc_read_buf.exit:                             ; preds = %for.body.i.rk_nfc_read_buf.exit_crit_edge, %if.end.rk_nfc_read_buf.exit_crit_edge
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %26 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10102 = icmp sgt i32 %27, 0
  br i1 %cmp10102, label %if.end20.peel, label %rk_nfc_read_buf.exit.cleanup_crit_edge

rk_nfc_read_buf.exit.cleanup_crit_edge:           ; preds = %rk_nfc_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.peel:                                    ; preds = %rk_nfc_read_buf.exit
  %oob_poi.i68 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %size.i.i73 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes.i.i74 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %metadata_size.i = getelementptr i8, ptr %chip, i32 2170
  %tobool23.not = icmp eq ptr %buf, null
  %28 = ptrtoint ptr %oob_poi.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oob_poi.i68, align 4
  %sub.peel = shl i32 %27, 2
  %mul.i.peel = add i32 %sub.peel, -4
  %add.ptr.i67.peel = getelementptr i8, ptr %29, i32 %mul.i.peel
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 8
  %page_buf.i.peel = getelementptr inbounds %struct.rk_nfc, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %page_buf.i.peel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %page_buf.i.peel, align 4
  %34 = ptrtoint ptr %size.i.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i73, align 8
  %add.ptr2.i.peel = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %add.ptr2.i.peel to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr2.i.peel, align 1
  %38 = ptrtoint ptr %add.ptr.i67.peel to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %add.ptr.i67.peel, align 1
  %39 = load ptr, ptr %oob_poi.i68, align 4
  %40 = ptrtoint ptr %metadata_size.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %metadata_size.i, align 2
  %conv.i.peel = zext i16 %41 to i32
  %add.ptr.i81.peel = getelementptr i8, ptr %39, i32 %conv.i.peel
  %42 = ptrtoint ptr %bytes.i.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes.i.i74, align 4
  %44 = load ptr, ptr %priv.i, align 8
  %page_buf.i84.peel = getelementptr inbounds %struct.rk_nfc, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %page_buf.i84.peel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %page_buf.i84.peel, align 4
  %47 = load i32, ptr %size.i.i73, align 8
  %add.ptr2.i91.peel = getelementptr i8, ptr %46, i32 %47
  %add.ptr.peel = getelementptr i8, ptr %add.ptr2.i91.peel, i32 4
  %48 = call ptr @memcpy(ptr %add.ptr.i81.peel, ptr %add.ptr.peel, i32 %43)
  br i1 %tobool23.not, label %if.end20.peel.for.inc.peel_crit_edge, label %if.then24.peel

if.end20.peel.for.inc.peel_crit_edge:             ; preds = %if.end20.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.peel

if.then24.peel:                                   ; preds = %if.end20.peel
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %size.i.i73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i.i73, align 8
  %51 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv.i, align 8
  %page_buf.i95.peel = getelementptr inbounds %struct.rk_nfc, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %page_buf.i95.peel to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page_buf.i95.peel, align 4
  %55 = call ptr @memcpy(ptr %buf, ptr %54, i32 %50)
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then24.peel, %if.end20.peel.for.inc.peel_crit_edge
  %56 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp10.peel = icmp sgt i32 %57, 1
  br i1 %cmp10.peel, label %for.inc.peel.if.end20_crit_edge, label %for.inc.peel.cleanup_crit_edge

for.inc.peel.cleanup_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.peel.if.end20_crit_edge:                  ; preds = %for.inc.peel
  br label %if.end20

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %for.inc.peel.if.end20_crit_edge
  %i.0103 = phi i32 [ %inc, %for.inc.if.end20_crit_edge ], [ 1, %for.inc.peel.if.end20_crit_edge ]
  %58 = ptrtoint ptr %oob_poi.i68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %oob_poi.i68, align 4
  %sub17 = shl i32 %i.0103, 2
  %mul.i69 = add i32 %sub17, -4
  %add.ptr.i70 = getelementptr i8, ptr %59, i32 %mul.i69
  %60 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i, align 8
  %page_buf.i72 = getelementptr inbounds %struct.rk_nfc, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %page_buf.i72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %page_buf.i72, align 4
  %64 = ptrtoint ptr %size.i.i73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i.i73, align 8
  %66 = ptrtoint ptr %bytes.i.i74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bytes.i.i74, align 4
  %add.i.i75 = add i32 %65, 4
  %add2.i.i76 = add i32 %add.i.i75, %67
  %mul.i77 = mul i32 %add2.i.i76, %i.0103
  %add.ptr.i78 = getelementptr i8, ptr %63, i32 %mul.i77
  %add.ptr2.i79 = getelementptr i8, ptr %add.ptr.i78, i32 %65
  %68 = ptrtoint ptr %add.ptr2.i79 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %add.ptr2.i79, align 1
  %70 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %add.ptr.i70, align 1
  %71 = load ptr, ptr %oob_poi.i68, align 4
  %72 = ptrtoint ptr %metadata_size.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %metadata_size.i, align 2
  %conv.i = zext i16 %73 to i32
  %add.ptr.i81 = getelementptr i8, ptr %71, i32 %conv.i
  %74 = load i32, ptr %bytes.i.i74, align 4
  %mul.i82 = mul i32 %74, %i.0103
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i81, i32 %mul.i82
  %75 = load ptr, ptr %priv.i, align 8
  %page_buf.i84 = getelementptr inbounds %struct.rk_nfc, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %page_buf.i84 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %page_buf.i84, align 4
  %78 = load i32, ptr %size.i.i73, align 8
  %add.i.i87 = add i32 %74, 4
  %add2.i.i88 = add i32 %add.i.i87, %78
  %mul.i89 = mul i32 %add2.i.i88, %i.0103
  %add.ptr.i90 = getelementptr i8, ptr %77, i32 4
  %add.ptr2.i91 = getelementptr i8, ptr %add.ptr.i90, i32 %mul.i89
  %add.ptr = getelementptr i8, ptr %add.ptr2.i91, i32 %78
  %79 = call ptr @memcpy(ptr %add.ptr1.i, ptr %add.ptr, i32 %74)
  br i1 %tobool23.not, label %if.end20.for.inc_crit_edge, label %if.then24

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %size.i.i73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size.i.i73, align 8
  %mul.i92 = mul i32 %81, %i.0103
  %add.ptr.i93 = getelementptr i8, ptr %buf, i32 %mul.i92
  %82 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv.i, align 8
  %page_buf.i95 = getelementptr inbounds %struct.rk_nfc, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %page_buf.i95 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %page_buf.i95, align 4
  %86 = ptrtoint ptr %bytes.i.i74 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytes.i.i74, align 4
  %add.i.i98 = add i32 %81, 4
  %add2.i.i99 = add i32 %add.i.i98, %87
  %mul.i100 = mul i32 %add2.i.i99, %i.0103
  %add.ptr.i101 = getelementptr i8, ptr %85, i32 %mul.i100
  %88 = call ptr @memcpy(ptr %add.ptr.i93, ptr %add.ptr.i101, i32 %81)
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end20.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0103, 1
  %89 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %steps, align 4
  %cmp10 = icmp slt i32 %inc, %90
  br i1 %cmp10, label %for.inc.if.end20_crit_edge, label %for.inc.cleanup_crit_edge, !llvm.loop !195

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.inc.peel.cleanup_crit_edge, %rk_nfc_read_buf.exit.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %land.lhs.true5.cleanup_crit_edge ], [ 0, %rk_nfc_read_buf.exit.cleanup_crit_edge ], [ 0, %for.inc.peel.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_read_page_hwecc(ptr noundef %chip, ptr noundef writeonly %buf, i32 noundef %oob_on, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp = icmp sgt i32 %3, 60
  %cond = select i1 %cmp, i32 128, i32 64
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %div = udiv i32 %5, %7
  %call4 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %dev = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %page_buf = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_buf, align 4
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !179

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %11, i32 noundef %13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i296 = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i296, i32 noundef %and.i, i32 noundef %13, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %oob_buf = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %oob_buf, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %24 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %steps, align 4
  %call.i297 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %23) #9
  br i1 %call.i297, label %land.rhs.i299, label %if.end39.i312

land.rhs.i299:                                    ; preds = %dma_map_single_attrs.exit
  %.b1.i298 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i298, label %land.rhs.i299.dma_map_single_attrs.exit314_crit_edge, label %if.then.i303, !prof !179

land.rhs.i299.dma_map_single_attrs.exit314_crit_edge: ; preds = %land.rhs.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit314

if.then.i303:                                     ; preds = %land.rhs.i299
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i300 = tail call ptr @dev_driver_string(ptr noundef %21) #9
  %init_name.i.i301 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i.i301 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i301, align 8
  %tobool.not.i.i302 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i302, label %if.end.i.i304, label %if.then.i303.dev_name.exit.i306_crit_edge

if.then.i303.dev_name.exit.i306_crit_edge:        ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i306

if.end.i.i304:                                    ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  br label %dev_name.exit.i306

dev_name.exit.i306:                               ; preds = %if.end.i.i304, %if.then.i303.dev_name.exit.i306_crit_edge
  %retval.0.i.i305 = phi ptr [ %29, %if.end.i.i304 ], [ %27, %if.then.i303.dev_name.exit.i306_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i300, ptr noundef %retval.0.i.i305) #9
  br label %dma_map_single_attrs.exit314

if.end39.i312:                                    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %25, %cond
  tail call void @debug_dma_map_single(ptr noundef %21, ptr noundef %23, i32 noundef %mul) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %23 to i32
  %sub.i307 = add i32 %31, 1073741824
  %shr.i308 = lshr i32 %sub.i307, 12
  %add.ptr.i309 = getelementptr %struct.page, ptr %30, i32 %shr.i308
  %and.i310 = and i32 %31, 4095
  %call41.i311 = tail call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %add.ptr.i309, i32 noundef %and.i310, i32 noundef %mul, i32 noundef 2, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit314

dma_map_single_attrs.exit314:                     ; preds = %if.end39.i312, %dev_name.exit.i306, %land.rhs.i299.dma_map_single_attrs.exit314_crit_edge
  %retval.0.i313 = phi i32 [ %call41.i311, %if.end39.i312 ], [ -1, %dev_name.exit.i306 ], [ -1, %land.rhs.i299.dma_map_single_attrs.exit314_crit_edge ]
  %boot_blks = getelementptr i8, ptr %chip, i32 2168
  %32 = ptrtoint ptr %boot_blks to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %boot_blks, align 8
  %conv = zext i16 %33 to i32
  %mul9 = mul i32 %div, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9, i32 %page)
  %cmp10 = icmp sgt i32 %mul9, %page
  br i1 %cmp10, label %land.lhs.true, label %dma_map_single_attrs.exit314.if.end17_crit_edge

dma_map_single_attrs.exit314.if.end17_crit_edge:  ; preds = %dma_map_single_attrs.exit314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %dma_map_single_attrs.exit314
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %34 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %options, align 8
  %and = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end17_crit_edge, label %if.then

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %boot_ecc = getelementptr i8, ptr %chip, i32 2172
  %36 = ptrtoint ptr %boot_ecc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %boot_ecc, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %38 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp12.not = icmp eq i32 %37, %39
  br i1 %cmp12.not, label %if.then.if.end17_crit_edge, label %if.then14

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.then
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rk_nfc, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i, align 4
  %arrayidx.i = getelementptr %struct.nfc_cfg, ptr %43, i32 0, i32 1, i32 0
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i)
  %cmp1.i = icmp eq i32 %37, %conv.i
  br i1 %cmp1.i, label %if.then14.do.body.i_crit_edge, label %for.inc.i

if.then14.do.body.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.i:                                        ; preds = %if.then14
  %arrayidx.1.i = getelementptr %struct.nfc_cfg, ptr %43, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.1.i)
  %cmp1.1.i = icmp eq i32 %37, %conv.1.i
  br i1 %cmp1.1.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.1.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.nfc_cfg, ptr %43, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.2.i)
  %cmp1.2.i = icmp eq i32 %37, %conv.2.i
  br i1 %cmp1.2.i, label %for.inc.1.i.do.body.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.body.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.nfc_cfg, ptr %43, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.3.i)
  %cmp1.3.i = icmp eq i32 %37, %conv.3.i
  br i1 %cmp1.3.i, label %for.inc.2.i.do.body.i_crit_edge, label %for.inc.2.i.if.end17_crit_edge

for.inc.2.i.if.end17_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.2.i.do.body.i_crit_edge, %for.inc.1.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge, %if.then14.do.body.i_crit_edge
  %i.04.lcssa.i = phi i32 [ 0, %if.then14.do.body.i_crit_edge ], [ 1, %for.inc.i.do.body.i_crit_edge ], [ 2, %for.inc.1.i.do.body.i_crit_edge ], [ 3, %for.inc.2.i.do.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.nfc_cfg, ptr %43, i32 0, i32 2, i32 %i.04.lcssa.i
  %52 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %regs.i = getelementptr inbounds %struct.rk_nfc, ptr %41, i32 0, i32 5
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %57 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i, align 4
  %bchctl_off.i = getelementptr inbounds %struct.nfc_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %bchctl_off.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bchctl_off.i, align 4
  %add.ptr.i315 = getelementptr i8, ptr %56, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i315, i32 %54) #9, !srcloc !172
  %cur_ecc.i = getelementptr inbounds %struct.rk_nfc, ptr %41, i32 0, i32 8
  %61 = ptrtoint ptr %cur_ecc.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %37, ptr %cur_ecc.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.body.i, %for.inc.2.i.if.end17_crit_edge, %if.then.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %dma_map_single_attrs.exit314.if.end17_crit_edge
  %tobool163.not = phi i1 [ false, %if.then.if.end17_crit_edge ], [ true, %land.lhs.true.if.end17_crit_edge ], [ true, %dma_map_single_attrs.exit314.if.end17_crit_edge ], [ false, %for.inc.2.i.if.end17_crit_edge ], [ false, %do.body.i ]
  %done = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %cfg = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg, align 4
  %int_en_off = getelementptr inbounds %struct.nfc_cfg, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %int_en_off to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %int_en_off, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !172
  %69 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %steps, align 4
  %conv19 = trunc i32 %70 to i8
  tail call fastcc void @rk_nfc_xfer_start(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv19, i32 noundef %retval.0.i, i32 noundef %retval.0.i313)
  %call22 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end27, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.36) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end17.if.end29_crit_edge
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %75 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg, align 4
  %flctl_off.i = getelementptr inbounds %struct.nfc_cfg, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %flctl_off.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flctl_off.i, align 4
  %add.ptr.i318 = getelementptr i8, ptr %74, i32 %78
  %call.i319 = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i319, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 504) #9
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #9, !srcloc !180
  %80 = and i32 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not35.i = icmp eq i32 %80, 0
  br i1 %tobool.not35.i, label %if.end29.land.lhs.true.i_crit_edge, label %if.end29.rk_nfc_wait_for_xfer_done.exit_crit_edge

if.end29.rk_nfc_wait_for_xfer_done.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_wait_for_xfer_done.exit

if.end29.land.lhs.true.i_crit_edge:               ; preds = %if.end29
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then21.i.land.lhs.true.i_crit_edge, %if.end29.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then21.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #9, !srcloc !180
  %82 = and i32 %81, 4096
  %tobool.not.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i, label %if.then21.i.land.lhs.true.i_crit_edge, label %if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge

if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_wait_for_xfer_done.exit

if.then21.i.land.lhs.true.i_crit_edge:            ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #9, !srcloc !180
  %84 = and i32 %83, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool25.not.i = icmp ne i32 %84, 0
  br label %rk_nfc_wait_for_xfer_done.exit

rk_nfc_wait_for_xfer_done.exit:                   ; preds = %for.end.i, %if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge, %if.end29.rk_nfc_wait_for_xfer_done.exit_crit_edge
  %85 = phi i1 [ true, %if.end29.rk_nfc_wait_for_xfer_done.exit_crit_edge ], [ %tobool25.not.i, %for.end.i ], [ true, %if.then21.i.rk_nfc_wait_for_xfer_done.exit_crit_edge ]
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %writesize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %87, i32 noundef %retval.0.i, i32 noundef %89, i32 noundef 2, i32 noundef 0) #9
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %92 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %steps, align 4
  %mul35 = mul i32 %93, %cond
  tail call void @dma_unmap_page_attrs(ptr noundef %91, i32 noundef %retval.0.i313, i32 noundef %mul35, i32 noundef 2, i32 noundef 0) #9
  br i1 %85, label %for.cond.preheader, label %if.then37

for.cond.preheader:                               ; preds = %rk_nfc_wait_for_xfer_done.exit
  %94 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp44345 = icmp sgt i32 %95, 1
  br i1 %cmp44345, label %for.body.lr.ph, label %for.cond.preheader.for.end157_crit_edge

for.cond.preheader.for.end157_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end157

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %div54295 = lshr exact i32 %cond, 2
  br label %for.body

if.then37:                                        ; preds = %rk_nfc_wait_for_xfer_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.39) #12
  br label %timeout_err

for.cond67.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp70349 = icmp sgt i32 %112, 1
  br i1 %cmp70349, label %for.body72.lr.ph, label %for.cond67.preheader.for.end157_crit_edge

for.cond67.preheader.for.end157_crit_edge:        ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end157

for.body72.lr.ph:                                 ; preds = %for.cond67.preheader
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %ecc_stats113 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %for.body72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0346 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %98 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %oob_poi, align 4
  %sub = shl i32 %i.0346, 2
  %mul46 = add i32 %sub, -4
  %add.ptr47 = getelementptr i8, ptr %99, i32 %mul46
  %100 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfg, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp49 = icmp eq i32 %103, 2
  %104 = ptrtoint ptr %oob_buf to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %oob_buf, align 4
  %mul55 = select i1 %cmp49, i32 1, i32 %div54295
  %mul55.sink = mul i32 %i.0346, %mul55
  %arrayidx56 = getelementptr i32, ptr %105, i32 %mul55.sink
  %106 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %106)
  %tmp.0 = load i32, ptr %arrayidx56, align 4
  %conv58 = trunc i32 %tmp.0 to i8
  %incdec.ptr = getelementptr i8, ptr %add.ptr47, i32 1
  %107 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv58, ptr %add.ptr47, align 1
  %shr = lshr i32 %tmp.0, 8
  %conv59 = trunc i32 %shr to i8
  %incdec.ptr60 = getelementptr i8, ptr %incdec.ptr, i32 1
  %108 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv59, ptr %incdec.ptr, align 1
  %shr61 = lshr i32 %tmp.0, 16
  %conv62 = trunc i32 %shr61 to i8
  %incdec.ptr63 = getelementptr i8, ptr %incdec.ptr60, i32 1
  %109 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv62, ptr %incdec.ptr60, align 1
  %shr64 = lshr i32 %tmp.0, 24
  %conv65 = trunc i32 %shr64 to i8
  %110 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv65, ptr %incdec.ptr63, align 1
  %inc = add nuw nsw i32 %i.0346, 1
  %111 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %steps, align 4
  %cmp44 = icmp slt i32 %inc, %112
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.cond67.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body72:                                       ; preds = %for.inc155.for.body72_crit_edge, %for.body72.lr.ph
  %ecc_fail.0353 = phi i32 [ 0, %for.body72.lr.ph ], [ %ecc_fail.1, %for.inc155.for.body72_crit_edge ]
  %max_bitflips.0351 = phi i32 [ 0, %for.body72.lr.ph ], [ %max_bitflips.1, %for.inc155.for.body72_crit_edge ]
  %i.1350 = phi i32 [ 0, %for.body72.lr.ph ], [ %inc156, %for.inc155.for.body72_crit_edge ]
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %115 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg, align 4
  %bch_st_off = getelementptr inbounds %struct.nfc_cfg, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %bch_st_off to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bch_st_off, align 4
  %add.ptr75 = getelementptr i8, ptr %114, i32 %118
  %mul76 = shl i32 %i.1350, 2
  %add.ptr77 = getelementptr i8, ptr %add.ptr75, i32 %mul76
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #9, !srcloc !180
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %121 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg, align 4
  %ecc0 = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 16
  %123 = ptrtoint ptr %ecc0 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %ecc0, align 4
  %conv81 = zext i8 %124 to i32
  %shl = shl nuw i32 1, %conv81
  %and82 = and i32 %shl, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %for.body72.if.then90_crit_edge

for.body72.if.then90_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

lor.lhs.false:                                    ; preds = %for.body72
  %ecc1 = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 17
  %125 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ecc1, align 2
  %conv86 = zext i8 %126 to i32
  %shl87 = shl nuw i32 1, %conv86
  %and88 = and i32 %shl87, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else92, label %lor.lhs.false.if.then90_crit_edge

lor.lhs.false.if.then90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.then90:                                        ; preds = %lor.lhs.false.if.then90_crit_edge, %for.body72.if.then90_crit_edge
  %127 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %failed, align 4
  %inc91 = add i32 %128, 1
  store i32 %inc91, ptr %failed, align 4
  br label %for.inc155

if.else92:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %low = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 16, i32 1
  %129 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %low, align 1
  %conv95 = zext i8 %130 to i32
  %shr96 = ashr i32 %120, %conv95
  %low_mask = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 16, i32 2
  %131 = ptrtoint ptr %low_mask to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %low_mask, align 2
  %conv99 = zext i8 %132 to i32
  %and100 = and i32 %shr96, %conv99
  %high = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 16, i32 4
  %133 = ptrtoint ptr %high to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %high, align 4
  %conv103 = zext i8 %134 to i32
  %shr104 = ashr i32 %120, %conv103
  %high_mask = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 16, i32 5
  %135 = ptrtoint ptr %high_mask to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %high_mask, align 1
  %conv107 = zext i8 %136 to i32
  %and108 = and i32 %shr104, %conv107
  %low_bn = getelementptr inbounds %struct.nfc_cfg, ptr %122, i32 0, i32 16, i32 3
  %137 = ptrtoint ptr %low_bn to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %low_bn, align 1
  %conv111 = zext i8 %138 to i32
  %shl112 = shl i32 %and108, %conv111
  %or = or i32 %shl112, %and100
  %139 = ptrtoint ptr %ecc_stats113 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ecc_stats113, align 4
  %add = add i32 %or, %140
  store i32 %add, ptr %ecc_stats113, align 4
  %141 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0351, i32 %or)
  %142 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg, align 4
  %low120 = getelementptr inbounds %struct.nfc_cfg, ptr %143, i32 0, i32 17, i32 1
  %144 = ptrtoint ptr %low120 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %low120, align 1
  %conv121 = zext i8 %145 to i32
  %shr122 = ashr i32 %120, %conv121
  %low_mask125 = getelementptr inbounds %struct.nfc_cfg, ptr %143, i32 0, i32 17, i32 2
  %146 = ptrtoint ptr %low_mask125 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %low_mask125, align 2
  %conv126 = zext i8 %147 to i32
  %and127 = and i32 %shr122, %conv126
  %high130 = getelementptr inbounds %struct.nfc_cfg, ptr %143, i32 0, i32 17, i32 4
  %148 = ptrtoint ptr %high130 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %high130, align 2
  %conv131 = zext i8 %149 to i32
  %shr132 = ashr i32 %120, %conv131
  %high_mask135 = getelementptr inbounds %struct.nfc_cfg, ptr %143, i32 0, i32 17, i32 5
  %150 = ptrtoint ptr %high_mask135 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %high_mask135, align 1
  %conv136 = zext i8 %151 to i32
  %and137 = and i32 %shr132, %conv136
  %low_bn140 = getelementptr inbounds %struct.nfc_cfg, ptr %143, i32 0, i32 17, i32 3
  %152 = ptrtoint ptr %low_bn140 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %low_bn140, align 1
  %conv141 = zext i8 %153 to i32
  %shl142 = shl i32 %and137, %conv141
  %or143 = or i32 %shl142, %and127
  %add146 = add i32 %or143, %add
  %154 = ptrtoint ptr %ecc_stats113 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add146, ptr %ecc_stats113, align 4
  %155 = tail call i32 @llvm.umax.i32(i32 %141, i32 %or143)
  br label %for.inc155

for.inc155:                                       ; preds = %if.else92, %if.then90
  %max_bitflips.1 = phi i32 [ %max_bitflips.0351, %if.then90 ], [ %155, %if.else92 ]
  %ecc_fail.1 = phi i32 [ 1, %if.then90 ], [ %ecc_fail.0353, %if.else92 ]
  %inc156 = add nuw nsw i32 %i.1350, 1
  %156 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %steps, align 4
  %div69 = sdiv i32 %157, 2
  %cmp70 = icmp slt i32 %inc156, %div69
  br i1 %cmp70, label %for.inc155.for.body72_crit_edge, label %for.inc155.for.end157_crit_edge

for.inc155.for.end157_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end157

for.inc155.for.body72_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72

for.end157:                                       ; preds = %for.inc155.for.end157_crit_edge, %for.cond67.preheader.for.end157_crit_edge, %for.cond.preheader.for.end157_crit_edge
  %max_bitflips.0.lcssa = phi i32 [ 0, %for.cond67.preheader.for.end157_crit_edge ], [ 0, %for.cond.preheader.for.end157_crit_edge ], [ %max_bitflips.1, %for.inc155.for.end157_crit_edge ]
  %ecc_fail.0.lcssa = phi i32 [ 0, %for.cond67.preheader.for.end157_crit_edge ], [ 0, %for.cond.preheader.for.end157_crit_edge ], [ %ecc_fail.1, %for.inc155.for.end157_crit_edge ]
  %tobool158.not = icmp eq ptr %buf, null
  br i1 %tobool158.not, label %for.end157.timeout_err_crit_edge, label %if.then159

for.end157.timeout_err_crit_edge:                 ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %timeout_err

if.then159:                                       ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %page_buf to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %page_buf, align 4
  %160 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %writesize, align 4
  %162 = call ptr @memcpy(ptr %buf, ptr %159, i32 %161)
  br label %timeout_err

timeout_err:                                      ; preds = %if.then159, %for.end157.timeout_err_crit_edge, %if.then37
  %ret.0 = phi i32 [ -110, %if.then37 ], [ 0, %if.then159 ], [ 0, %for.end157.timeout_err_crit_edge ]
  %max_bitflips.2 = phi i32 [ 0, %if.then37 ], [ %max_bitflips.0.lcssa, %if.then159 ], [ %max_bitflips.0.lcssa, %for.end157.timeout_err_crit_edge ]
  %ecc_fail.2 = phi i32 [ 0, %if.then37 ], [ %ecc_fail.0.lcssa, %if.then159 ], [ %ecc_fail.0.lcssa, %for.end157.timeout_err_crit_edge ]
  br i1 %tobool163.not, label %timeout_err.if.end172_crit_edge, label %land.lhs.true164

timeout_err.if.end172_crit_edge:                  ; preds = %timeout_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

land.lhs.true164:                                 ; preds = %timeout_err
  %boot_ecc165 = getelementptr i8, ptr %chip, i32 2172
  %163 = ptrtoint ptr %boot_ecc165 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %boot_ecc165, align 4
  %strength166 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %165 = ptrtoint ptr %strength166 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %strength166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp167.not = icmp eq i32 %164, %166
  br i1 %cmp167.not, label %land.lhs.true164.if.end172_crit_edge, label %if.then169

land.lhs.true164.if.end172_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then169:                                       ; preds = %land.lhs.true164
  %167 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %priv.i, align 8
  %cfg.i321 = getelementptr inbounds %struct.rk_nfc, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %cfg.i321 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg.i321, align 4
  %arrayidx.i322 = getelementptr %struct.nfc_cfg, ptr %170, i32 0, i32 1, i32 0
  %171 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i322, align 1
  %conv.i323 = zext i8 %172 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %conv.i323)
  %cmp1.i324 = icmp eq i32 %166, %conv.i323
  br i1 %cmp1.i324, label %if.then169.do.body.i343_crit_edge, label %for.inc.i328

if.then169.do.body.i343_crit_edge:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i343

for.inc.i328:                                     ; preds = %if.then169
  %arrayidx.1.i325 = getelementptr %struct.nfc_cfg, ptr %170, i32 0, i32 1, i32 1
  %173 = ptrtoint ptr %arrayidx.1.i325 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.1.i325, align 1
  %conv.1.i326 = zext i8 %174 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %conv.1.i326)
  %cmp1.1.i327 = icmp eq i32 %166, %conv.1.i326
  br i1 %cmp1.1.i327, label %for.inc.i328.do.body.i343_crit_edge, label %for.inc.1.i332

for.inc.i328.do.body.i343_crit_edge:              ; preds = %for.inc.i328
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i343

for.inc.1.i332:                                   ; preds = %for.inc.i328
  %arrayidx.2.i329 = getelementptr %struct.nfc_cfg, ptr %170, i32 0, i32 1, i32 2
  %175 = ptrtoint ptr %arrayidx.2.i329 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.2.i329, align 1
  %conv.2.i330 = zext i8 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %conv.2.i330)
  %cmp1.2.i331 = icmp eq i32 %166, %conv.2.i330
  br i1 %cmp1.2.i331, label %for.inc.1.i332.do.body.i343_crit_edge, label %for.inc.2.i336

for.inc.1.i332.do.body.i343_crit_edge:            ; preds = %for.inc.1.i332
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i343

for.inc.2.i336:                                   ; preds = %for.inc.1.i332
  %arrayidx.3.i333 = getelementptr %struct.nfc_cfg, ptr %170, i32 0, i32 1, i32 3
  %177 = ptrtoint ptr %arrayidx.3.i333 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.3.i333, align 1
  %conv.3.i334 = zext i8 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %conv.3.i334)
  %cmp1.3.i335 = icmp eq i32 %166, %conv.3.i334
  br i1 %cmp1.3.i335, label %for.inc.2.i336.do.body.i343_crit_edge, label %for.inc.2.i336.if.end172_crit_edge

for.inc.2.i336.if.end172_crit_edge:               ; preds = %for.inc.2.i336
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

for.inc.2.i336.do.body.i343_crit_edge:            ; preds = %for.inc.2.i336
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i343

do.body.i343:                                     ; preds = %for.inc.2.i336.do.body.i343_crit_edge, %for.inc.1.i332.do.body.i343_crit_edge, %for.inc.i328.do.body.i343_crit_edge, %if.then169.do.body.i343_crit_edge
  %i.04.lcssa.i337 = phi i32 [ 0, %if.then169.do.body.i343_crit_edge ], [ 1, %for.inc.i328.do.body.i343_crit_edge ], [ 2, %for.inc.1.i332.do.body.i343_crit_edge ], [ 3, %for.inc.2.i336.do.body.i343_crit_edge ]
  %arrayidx4.i338 = getelementptr %struct.nfc_cfg, ptr %170, i32 0, i32 2, i32 %i.04.lcssa.i337
  %179 = ptrtoint ptr %arrayidx4.i338 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx4.i338, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void @arm_heavy_mb() #9
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #9
  %regs.i339 = getelementptr inbounds %struct.rk_nfc, ptr %168, i32 0, i32 5
  %182 = ptrtoint ptr %regs.i339 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs.i339, align 4
  %184 = ptrtoint ptr %cfg.i321 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cfg.i321, align 4
  %bchctl_off.i340 = getelementptr inbounds %struct.nfc_cfg, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %bchctl_off.i340 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %bchctl_off.i340, align 4
  %add.ptr.i341 = getelementptr i8, ptr %183, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i341, i32 %181) #9, !srcloc !172
  %cur_ecc.i342 = getelementptr inbounds %struct.rk_nfc, ptr %168, i32 0, i32 8
  %188 = ptrtoint ptr %cur_ecc.i342 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %166, ptr %cur_ecc.i342, align 4
  br label %if.end172

if.end172:                                        ; preds = %do.body.i343, %for.inc.2.i336.if.end172_crit_edge, %land.lhs.true164.if.end172_crit_edge, %timeout_err.if.end172_crit_edge
  br i1 %85, label %if.end175, label %if.end172.cleanup_crit_edge

if.end172.cleanup_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end175:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ecc_fail.2)
  %tobool176.not = icmp eq i32 %ecc_fail.2, 0
  br i1 %tobool176.not, label %if.end175.cleanup_crit_edge, label %do.end180

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end180:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  %189 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.42, i32 noundef %page) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %if.end175.cleanup_crit_edge, %if.end172.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end180 ], [ %ret.0, %if.end172.cleanup_crit_edge ], [ %max_bitflips.2, %if.end175.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rk_nfc_read_page_hwecc(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_nfc_xfer_start(ptr nocapture noundef readonly %nfc, i8 noundef zeroext %rw, i8 noundef zeroext %n_KB, i32 noundef %dma_data, i32 noundef %dma_oob) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.then, label %entry.do.body24_crit_edge

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %bchctl_off = getelementptr inbounds %struct.nfc_cfg, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bchctl_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bchctl_off, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !180
  %9 = and i32 %8, 536870911
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %selected_bank = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 6
  %11 = ptrtoint ptr %selected_bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %selected_bank, align 4
  %shl18 = shl i32 %12, 5
  %or19 = or i32 %10, %shl18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 4
  %bchctl_off22 = getelementptr inbounds %struct.nfc_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bchctl_off22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bchctl_off22, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %13) #9, !srcloc !172
  br label %do.body24

do.body24:                                        ; preds = %if.then, %entry.do.body24_crit_edge
  %conv = zext i8 %rw to i32
  %shl5 = shl nuw nsw i32 %conv, 1
  %conv8 = zext i8 %n_KB to i32
  %shl9 = shl nuw nsw i32 %conv8, 22
  %or7 = or i32 %shl9, %shl5
  %or11 = or i32 %or7, 536871944
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %tobool.not = icmp eq i8 %rw, 0
  %or4 = select i1 %tobool.not, i32 8663, i32 8661
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %regs27 = getelementptr inbounds %struct.rk_nfc, ptr %nfc, i32 0, i32 5
  %21 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs27, align 4
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 4
  %dma_cfg_off = getelementptr inbounds %struct.nfc_cfg, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dma_cfg_off to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_cfg_off, align 4
  %add.ptr29 = getelementptr i8, ptr %22, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %20) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %dma_data)
  %28 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs27, align 4
  %30 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg, align 4
  %dma_data_buf_off = getelementptr inbounds %struct.nfc_cfg, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %dma_data_buf_off to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_data_buf_off, align 4
  %add.ptr35 = getelementptr i8, ptr %29, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %27) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %dma_oob)
  %35 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs27, align 4
  %37 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg, align 4
  %dma_oob_buf_off = getelementptr inbounds %struct.nfc_cfg, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %dma_oob_buf_off to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_oob_buf_off, align 4
  %add.ptr41 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %34) #9, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %42 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs27, align 4
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg, align 4
  %flctl_off = getelementptr inbounds %struct.nfc_cfg, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %flctl_off to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flctl_off, align 4
  %add.ptr47 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %41) #9, !srcloc !172
  %or48 = or i32 %or7, 536871948
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %or48)
  %49 = ptrtoint ptr %regs27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs27, align 4
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg, align 4
  %flctl_off54 = getelementptr inbounds %struct.nfc_cfg, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %flctl_off54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flctl_off54, align 4
  %add.ptr55 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %48) #9, !srcloc !172
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

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
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_cmd(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %band_offset = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %band_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band_offset, align 4
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %4 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp83.not = icmp eq i32 %5, 0
  br i1 %cmp83.not, label %entry.for.end38_crit_edge, label %for.body.lr.ph

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %regs.i77 = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 5
  %dev = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %ret.086 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %sw.epilog.for.body_crit_edge ]
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %sw.epilog.for.body_crit_edge ]
  %6 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %7, i32 %i.084
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.body.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %sw.bb2
    i32 2, label %for.body.sw.bb18_crit_edge
    i32 3, label %for.body.sw.bb18_crit_edge97
    i32 4, label %sw.bb28
  ]

for.body.sw.bb18_crit_edge97:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

for.body.sw.bb18_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %ctx = getelementptr %struct.nand_op_instr, ptr %7, i32 %i.084, i32 1
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx, align 4
  %13 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i77, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %12) #9, !srcloc !191
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  %call3 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %i.084) #9
  %call4 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %i.084) #9
  %addrs = getelementptr %struct.nand_op_instr, ptr %7, i32 %i.084, i32 1, i32 0, i32 1
  %15 = call i32 @llvm.usub.sat.i32(i32 %call3, i32 %call4)
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %call4)
  %exitcond.not.not = icmp ugt i32 %call3, %call4
  br i1 %exitcond.not.not, label %do.body9, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9:                                         ; preds = %sw.bb2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addrs, align 4
  %arrayidx14 = getelementptr i8, ptr %17, i32 %call4
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %20 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i77, align 4
  %add.ptr16 = getelementptr i8, ptr %21, i32 %3
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %19) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %exitcond.1.not = icmp eq i32 %15, 1
  br i1 %exitcond.1.not, label %do.body9.sw.epilog_crit_edge, label %do.body9.1

do.body9.sw.epilog_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.1:                                       ; preds = %do.body9
  %add.1 = add nuw i32 %call4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addrs, align 4
  %arrayidx14.1 = getelementptr i8, ptr %23, i32 %add.1
  %24 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14.1, align 1
  %26 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.1 = getelementptr i8, ptr %27, i32 %3
  %add.ptr17.1 = getelementptr i8, ptr %add.ptr16.1, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.1, i8 %25) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %exitcond.2.not = icmp eq i32 %15, 2
  br i1 %exitcond.2.not, label %do.body9.1.sw.epilog_crit_edge, label %do.body9.2

do.body9.1.sw.epilog_crit_edge:                   ; preds = %do.body9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.2:                                       ; preds = %do.body9.1
  %add.2 = add nuw i32 %call4, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addrs, align 4
  %arrayidx14.2 = getelementptr i8, ptr %29, i32 %add.2
  %30 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx14.2, align 1
  %32 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.2 = getelementptr i8, ptr %33, i32 %3
  %add.ptr17.2 = getelementptr i8, ptr %add.ptr16.2, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.2, i8 %31) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %exitcond.3.not = icmp eq i32 %15, 3
  br i1 %exitcond.3.not, label %do.body9.2.sw.epilog_crit_edge, label %do.body9.3

do.body9.2.sw.epilog_crit_edge:                   ; preds = %do.body9.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.3:                                       ; preds = %do.body9.2
  %add.3 = add nuw i32 %call4, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addrs, align 4
  %arrayidx14.3 = getelementptr i8, ptr %35, i32 %add.3
  %36 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14.3, align 1
  %38 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.3 = getelementptr i8, ptr %39, i32 %3
  %add.ptr17.3 = getelementptr i8, ptr %add.ptr16.3, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.3, i8 %37) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %exitcond.4.not = icmp eq i32 %15, 4
  br i1 %exitcond.4.not, label %do.body9.3.sw.epilog_crit_edge, label %do.body9.4

do.body9.3.sw.epilog_crit_edge:                   ; preds = %do.body9.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.4:                                       ; preds = %do.body9.3
  %add.4 = add nuw i32 %call4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addrs, align 4
  %arrayidx14.4 = getelementptr i8, ptr %41, i32 %add.4
  %42 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx14.4, align 1
  %44 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.4 = getelementptr i8, ptr %45, i32 %3
  %add.ptr17.4 = getelementptr i8, ptr %add.ptr16.4, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.4, i8 %43) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %exitcond.5.not = icmp eq i32 %15, 5
  br i1 %exitcond.5.not, label %do.body9.4.sw.epilog_crit_edge, label %do.body9.5

do.body9.4.sw.epilog_crit_edge:                   ; preds = %do.body9.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.5:                                       ; preds = %do.body9.4
  %add.5 = add nuw i32 %call4, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addrs, align 4
  %arrayidx14.5 = getelementptr i8, ptr %47, i32 %add.5
  %48 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx14.5, align 1
  %50 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.5 = getelementptr i8, ptr %51, i32 %3
  %add.ptr17.5 = getelementptr i8, ptr %add.ptr16.5, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.5, i8 %49) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %exitcond.6.not = icmp eq i32 %15, 6
  br i1 %exitcond.6.not, label %do.body9.5.sw.epilog_crit_edge, label %do.body9.6

do.body9.5.sw.epilog_crit_edge:                   ; preds = %do.body9.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.6:                                       ; preds = %do.body9.5
  %add.6 = add nuw i32 %call4, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addrs, align 4
  %arrayidx14.6 = getelementptr i8, ptr %53, i32 %add.6
  %54 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx14.6, align 1
  %56 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.6 = getelementptr i8, ptr %57, i32 %3
  %add.ptr17.6 = getelementptr i8, ptr %add.ptr16.6, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.6, i8 %55) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %exitcond.7.not = icmp eq i32 %15, 7
  br i1 %exitcond.7.not, label %do.body9.6.sw.epilog_crit_edge, label %do.body9.7

do.body9.6.sw.epilog_crit_edge:                   ; preds = %do.body9.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9.7:                                       ; preds = %do.body9.6
  call void @__sanitizer_cov_trace_pc() #11
  %add.7 = add nuw i32 %call4, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addrs, align 4
  %arrayidx14.7 = getelementptr i8, ptr %59, i32 %add.7
  %60 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx14.7, align 1
  %62 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i77, align 4
  %add.ptr16.7 = getelementptr i8, ptr %63, i32 %3
  %add.ptr17.7 = getelementptr i8, ptr %add.ptr16.7, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.7, i8 %61) #9, !srcloc !191
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.body.sw.bb18_crit_edge, %for.body.sw.bb18_crit_edge97
  %call19 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %i.084) #9
  %call20 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %i.084) #9
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp22 = icmp eq i32 %65, 3
  %buf = getelementptr %struct.nand_op_instr, ptr %7, i32 %i.084, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf, align 4
  %add.ptr24 = getelementptr i8, ptr %67, i32 %call19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp5.i = icmp sgt i32 %call20, 0
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb18
  br i1 %cmp5.i, label %if.then.do.body.i_crit_edge, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.then.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr i8, ptr %add.ptr24, i32 %i.06.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i, align 1
  %70 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i77, align 4
  %72 = ptrtoint ptr %band_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %band_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 %73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %69) #9, !srcloc !191
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call20
  br i1 %exitcond.not.i, label %do.body.i.sw.epilog_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb18
  br i1 %cmp5.i, label %if.else.for.body.i_crit_edge, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.06.i72 = phi i32 [ %inc.i75, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i77, align 4
  %76 = ptrtoint ptr %band_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %band_offset, align 4
  %add.ptr.i73 = getelementptr i8, ptr %75, i32 %77
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #9, !srcloc !194
  %arrayidx.i74 = getelementptr i8, ptr %add.ptr24, i32 %i.06.i72
  %79 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx.i74, align 1
  %inc.i75 = add nuw nsw i32 %i.06.i72, 1
  %exitcond.not.i76 = icmp eq i32 %inc.i75, %call20
  br i1 %exitcond.not.i76, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.body
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 310) #9
  %80 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i77, align 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !180
  %83 = and i32 %82, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not37.i = icmp eq i32 %83, 0
  br i1 %tobool.not37.i, label %sw.bb28.land.lhs.true.i_crit_edge, label %sw.bb28.sw.epilog_crit_edge

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb28.land.lhs.true.i_crit_edge:                ; preds = %sw.bb28
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then23.i.land.lhs.true.i_crit_edge, %sw.bb28.land.lhs.true.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %84 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i77, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !180
  %87 = and i32 %86, 131072
  %tobool.not.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i, label %if.then23.i.land.lhs.true.i_crit_edge, label %if.then23.i.sw.epilog_crit_edge

if.then23.i.sw.epilog_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then23.i.land.lhs.true.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %88 = ptrtoint ptr %regs.i77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i77, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !180
  %91 = and i32 %90, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool27.not.i = icmp eq i32 %91, 0
  br i1 %tobool27.not.i, label %if.then31, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then31:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.46) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %for.end.i.sw.epilog_crit_edge, %if.then23.i.sw.epilog_crit_edge, %sw.bb28.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %do.body.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %do.body9.7, %do.body9.6.sw.epilog_crit_edge, %do.body9.5.sw.epilog_crit_edge, %do.body9.4.sw.epilog_crit_edge, %do.body9.3.sw.epilog_crit_edge, %do.body9.2.sw.epilog_crit_edge, %do.body9.1.sw.epilog_crit_edge, %do.body9.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %do.body, %for.body.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.086, %for.body.sw.epilog_crit_edge ], [ -110, %if.then31 ], [ %ret.086, %do.body ], [ %ret.086, %if.then.sw.epilog_crit_edge ], [ %ret.086, %if.else.sw.epilog_crit_edge ], [ %ret.086, %sw.bb28.sw.epilog_crit_edge ], [ %ret.086, %for.end.i.sw.epilog_crit_edge ], [ %ret.086, %do.body9.7 ], [ %ret.086, %do.body9.6.sw.epilog_crit_edge ], [ %ret.086, %do.body9.5.sw.epilog_crit_edge ], [ %ret.086, %do.body9.4.sw.epilog_crit_edge ], [ %ret.086, %do.body9.3.sw.epilog_crit_edge ], [ %ret.086, %do.body9.2.sw.epilog_crit_edge ], [ %ret.086, %do.body9.1.sw.epilog_crit_edge ], [ %ret.086, %do.body9.sw.epilog_crit_edge ], [ %ret.086, %sw.bb2.sw.epilog_crit_edge ], [ %ret.086, %do.body.i.sw.epilog_crit_edge ], [ %ret.086, %for.body.i.sw.epilog_crit_edge ], [ %ret.086, %if.then23.i.sw.epilog_crit_edge ]
  %inc37 = add nuw i32 %i.084, 1
  %94 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc37, %95
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end38_crit_edge

sw.epilog.for.end38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end38:                                        ; preds = %sw.epilog.for.end38_crit_edge, %entry.for.end38_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end38_crit_edge ], [ %ret.1, %sw.epilog.for.end38_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_nfc_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oob_region) #8 align 64 {
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
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %metadata_size = getelementptr i8, ptr %mtd, i32 2170
  %2 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %metadata_size, align 2
  %conv = zext i16 %3 to i32
  %sub = sub i32 %1, %conv
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oob_region, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %length, align 4
  %5 = load i16, ptr %metadata_size, align 2
  %conv3 = zext i16 %5 to i32
  %6 = ptrtoint ptr %oob_region to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv3, ptr %oob_region, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_nfc_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oob_region) #8 align 64 {
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
  %metadata_size = getelementptr i8, ptr %mtd, i32 2170
  %0 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %metadata_size, align 2
  %conv = zext i16 %1 to i32
  %sub2 = add nsw i32 %conv, -6
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oob_region, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub2, ptr %length, align 4
  %3 = ptrtoint ptr %oob_region to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %oob_region, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nfc_clk.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nfc_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfc_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.rk_nfc_disable_clks.exit_crit_edge, label %if.then.i

entry.rk_nfc_disable_clks.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rk_nfc_disable_clks.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %rk_nfc_disable_clks.exit

rk_nfc_disable_clks.exit:                         ; preds = %if.then.i, %entry.rk_nfc_disable_clks.exit_crit_edge
  %ahb_clk.i = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ahb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_nfc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @rk_nfc_enable_clks(ptr noundef %dev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %chips = getelementptr inbounds %struct.rk_nfc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %2)
  %rknand.032 = load ptr, ptr %chips, align 4
  %cmp.not33 = icmp eq ptr %rknand.032, %chips
  br i1 %cmp.not33, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.body7.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %rknand.034 to i32
  call void @__asan_load4_noabort(i32 %3)
  %rknand.0 = load ptr, ptr %rknand.034, align 4
  %cmp.not = icmp eq ptr %rknand.0, %chips
  br i1 %cmp.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %rknand.034 = phi ptr [ %rknand.0, %for.cond.loopexit.for.body_crit_edge ], [ %rknand.032, %if.end.for.body_crit_edge ]
  %chip3 = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %rknand.034, i32 0, i32 1
  %nsels = getelementptr inbounds %struct.rk_nfc_nand_chip, ptr %rknand.034, i32 0, i32 6
  %4 = ptrtoint ptr %nsels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nsels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp530.not = icmp eq i8 %5, 0
  br i1 %cmp530.not, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %i.031 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %call8 = tail call i32 @nand_reset(ptr noundef %chip3, i32 noundef %i.031) #9
  %inc = add nuw nsw i32 %i.031, 1
  %6 = ptrtoint ptr %nsels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nsels, align 4
  %conv = zext i8 %7 to i32
  %cmp5 = icmp ult i32 %inc, %conv
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.cond.loopexit_crit_edge

for.body7.for.cond.loopexit_crit_edge:            ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

cleanup:                                          ; preds = %for.cond.loopexit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_rockchip_nand_controller__256_1490_rk_nfc_driver_init6, !1, !"__initcall__kmod_rockchip_nand_controller__256_1490_rk_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1490, i32 1}
!2 = !{ptr @__exitcall_rk_nfc_driver_exit, !1, !"__exitcall_rk_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file257, !4, !"__UNIQUE_ID_file257", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1492, i32 1}
!5 = !{ptr @__UNIQUE_ID_license258, !4, !"__UNIQUE_ID_license258", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author259, !7, !"__UNIQUE_ID_author259", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1493, i32 1}
!8 = !{ptr @__UNIQUE_ID_description260, !9, !"__UNIQUE_ID_description260", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1494, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias261, !11, !"__UNIQUE_ID_alias261", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1495, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1484, i32 11}
!14 = !{ptr @rk_nfc_driver, !15, !"rk_nfc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1480, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1387, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1389, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rk_nfc_probe.__UNIQUE_ID_ddebug255, !19, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1393, i32 35}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1395, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rk_nfc_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @rk_nfc_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1406, i32 3}
!34 = !{ptr @rk_nfc_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rk_nfc_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1412, i32 52}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1414, i32 3}
!40 = !{ptr @rk_nfc_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rk_nfc_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1422, i32 3}
!44 = !{ptr @rk_nfc_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rk_nfc_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @nand_controller_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rk_nfc_controller_ops, !50, !"rk_nfc_controller_ops", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1095, i32 41}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1023, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rk_nfc_attach_chip._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rk_nfc_attach_chip._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1037, i32 3}
!58 = !{ptr @rk_nfc_attach_chip._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rk_nfc_attach_chip._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 999, i32 4}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rk_nfc_ecc_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rk_nfc_ecc_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 668, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rk_nfc_write_page_hwecc._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @rk_nfc_write_page_hwecc._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 685, i32 3}
!73 = !{ptr @rk_nfc_write_page_hwecc._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rk_nfc_write_page_hwecc._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 795, i32 3}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rk_nfc_read_page_hwecc._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rk_nfc_read_page_hwecc._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 810, i32 3}
!86 = !{ptr @rk_nfc_read_page_hwecc._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rk_nfc_read_page_hwecc._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 855, i32 3}
!90 = !{ptr @rk_nfc_read_page_hwecc._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rk_nfc_read_page_hwecc._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @rk_nfc_op_parser, !93, !"rk_nfc_op_parser", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 387, i32 36}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 378, i32 5}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rk_nfc_cmd._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @rk_nfc_cmd._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @init_completion.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../include/linux/completion.h", i32 87, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 906, i32 4}
!104 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rk_nfc_enable_clks._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @rk_nfc_enable_clks._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 913, i32 3}
!109 = !{ptr @rk_nfc_enable_clks._entry.51, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rk_nfc_enable_clks._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1217, i32 3}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rk_nfc_nand_chips_init._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rk_nfc_nand_chips_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1112, i32 27}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1116, i32 3}
!120 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rk_nfc_nand_chip_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @rk_nfc_nand_chip_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1129, i32 4}
!125 = !{ptr @rk_nfc_nand_chip_init._entry.59, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rk_nfc_nand_chip_init._entry_ptr.61, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1134, i32 4}
!129 = !{ptr @rk_nfc_nand_chip_init._entry.62, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rk_nfc_nand_chip_init._entry_ptr.64, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1139, i32 4}
!133 = !{ptr @rk_nfc_nand_chip_init._entry.65, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rk_nfc_nand_chip_init._entry_ptr.67, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1164, i32 3}
!137 = !{ptr @rk_nfc_nand_chip_init._entry.68, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @rk_nfc_nand_chip_init._entry_ptr.70, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1175, i32 34}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1178, i32 34}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1185, i32 3}
!145 = !{ptr @rk_nfc_nand_chip_init._entry.73, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @rk_nfc_nand_chip_init._entry_ptr.75, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!149 = !{ptr @rk_nfc_ooblayout_ops, !150, !"rk_nfc_ooblayout_ops", i1 false, i1 false}
!150 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 963, i32 39}
!151 = !{ptr @rk_nfc_id_table, !152, !"rk_nfc_id_table", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1345, i32 34}
!153 = !{ptr @nfc_v9_cfg, !154, !"nfc_v9_cfg", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1308, i32 23}
!155 = !{ptr @nfc_v6_cfg, !156, !"nfc_v6_cfg", i1 false, i1 false}
!156 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1234, i32 23}
!157 = !{ptr @nfc_v8_cfg, !158, !"nfc_v8_cfg", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1271, i32 23}
!159 = !{ptr @rk_nfc_pm_ops, !160, !"rk_nfc_pm_ops", i1 false, i1 false}
!160 = !{!"../drivers/mtd/nand/raw/rockchip-nand-controller.c", i32 1476, i32 32}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148757929, i64 2148757934, i64 2148757947, i64 2148757991, i64 2148758025, i64 2148758046}
!171 = !{i64 2154760455}
!172 = !{i64 6292077}
!173 = !{!"auto-init"}
!174 = !{i64 2154723833}
!175 = !{i64 2154724306}
!176 = !{i64 2154724718}
!177 = !{i64 2154725130}
!178 = !{i64 2154725649}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 6292495}
!181 = !{i64 2154726872}
!182 = !{i64 2154727299}
!183 = !{i32 0, i32 33}
!184 = !{i64 2154686868}
!185 = !{i64 2154687648}
!186 = !{i64 2154688057}
!187 = !{i64 2154686120}
!188 = distinct !{!188, !189}
!189 = !{!"llvm.loop.peeled.count", i32 1}
!190 = !{i64 2154690746}
!191 = !{i64 6291880}
!192 = distinct !{!192, !189}
!193 = !{i64 2154708954}
!194 = !{i64 6292275}
!195 = distinct !{!195, !189}
!196 = !{i64 2154713545}
!197 = !{i64 2154703875}
!198 = !{i64 2154704311}
!199 = !{i64 2154704759}
!200 = !{i64 2154705228}
!201 = !{i64 2154705681}
!202 = !{i64 2154706192}
!203 = !{i64 2154691087}
!204 = !{i64 2154691436}
