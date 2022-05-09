; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/stm32_fmc2_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/stm32_fmc2_nand.c"
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
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.stm32_fmc2_nfc = type { %struct.nand_controller, %struct.stm32_fmc2_nand, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], i32, [2 x i32], ptr, i8, ptr, ptr, ptr, %struct.sg_table, %struct.sg_table, ptr, i32, %struct.completion, %struct.completion, %struct.completion, i8, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.stm32_fmc2_nand = type { %struct.nand_chip, %struct.stm32_fmc2_timings, i32, [2 x i32] }
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
%struct.stm32_fmc2_timings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_stm32_fmc2_nand__509_2074_stm32_fmc2_nfc_driver_init6 = internal global ptr @stm32_fmc2_nfc_driver_init, section ".initcall6.init", align 4
@stm32_fmc2_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_fmc2_nfc_probe, ptr @stm32_fmc2_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_fmc2_nfc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_fmc2_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_fmc2_nfc_driver_exit = internal global ptr @stm32_fmc2_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias510 = internal constant [46 x i8] c"stm32_fmc2_nand.alias=platform:stm32_fmc2_nfc\00", section ".modinfo", align 1
@__UNIQUE_ID_author511 = internal constant [70 x i8] c"stm32_fmc2_nand.author=Christophe Kerello <christophe.kerello@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description512 = internal constant [69 x i8] c"stm32_fmc2_nand.description=STMicroelectronics STM32 FMC2 NFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file513 = internal constant [58 x i8] c"stm32_fmc2_nand.file=drivers/mtd/nand/raw/stm32_fmc2_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license514 = internal constant [31 x i8] c"stm32_fmc2_nand.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_fmc2_nfc\00", [17 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-fmc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-fmc2-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_fmc2_nfc_suspend, ptr @stm32_fmc2_nfc_resume, ptr @stm32_fmc2_nfc_suspend, ptr @stm32_fmc2_nfc_resume, ptr @stm32_fmc2_nfc_suspend, ptr @stm32_fmc2_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @stm32_fmc2_nfc_attach_chip, ptr null, ptr @stm32_fmc2_nfc_exec_op, ptr @stm32_fmc2_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1918, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_fmc2_nfc_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/mtd/nand/raw/stm32_fmc2_nand.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_probe._entry_ptr = internal global ptr @stm32_fmc2_nfc_probe._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1930, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can not enable the clock\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_probe._entry_ptr.8 = internal global ptr @stm32_fmc2_nfc_probe._entry.6, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nand_ecc_engine_type is not well defined in the DT\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_fmc2_nfc_attach_chip\00", [37 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_attach_chip._entry_ptr = internal global ptr @stm32_fmc2_nfc_attach_chip._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @stm32_fmc2_nfc_ecc_caps_stepinfo, i32 1, ptr @stm32_fmc2_nfc_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_attach_chip._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 1723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no valid ECC settings set\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_attach_chip._entry_ptr.14 = internal global ptr @stm32_fmc2_nfc_attach_chip._entry.12, section ".printk_index", align 4
@stm32_fmc2_nfc_attach_chip._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 1728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nand page size is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_attach_chip._entry_ptr.17 = internal global ptr @stm32_fmc2_nfc_attach_chip._entry.15, section ".printk_index", align 4
@stm32_fmc2_nfc_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @stm32_fmc2_nfc_ooblayout_ecc, ptr @stm32_fmc2_nfc_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 512, ptr @stm32_fmc2_nfc_ecc_caps_strengths, i32 3 }, [20 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_ecc_caps_strengths = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_select_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tx DMA engine slave config failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_fmc2_nfc_select_chip\00", [37 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_select_chip._entry_ptr = internal global ptr @stm32_fmc2_nfc_select_chip._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_select_chip._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rx DMA engine slave config failed\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_select_chip._entry_ptr.22 = internal global ptr @stm32_fmc2_nfc_select_chip._entry.20, section ".printk_index", align 4
@stm32_fmc2_nfc_select_chip._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ECC DMA engine slave config failed\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_select_chip._entry_ptr.25 = internal global ptr @stm32_fmc2_nfc_select_chip._entry.23, section ".printk_index", align 4
@stm32_fmc2_nfc_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"seq timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_fmc2_nfc_xfer\00", [44 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_xfer._entry_ptr = internal global ptr @stm32_fmc2_nfc_xfer._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_xfer._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 936, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data DMA timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_xfer._entry_ptr.30 = internal global ptr @stm32_fmc2_nfc_xfer._entry.28, section ".printk_index", align 4
@stm32_fmc2_nfc_xfer._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 945, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ECC DMA timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_xfer._entry_ptr.33 = internal global ptr @stm32_fmc2_nfc_xfer._entry.31, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@stm32_fmc2_nfc_ham_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ham timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_fmc2_nfc_ham_calculate\00", [35 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_ham_calculate._entry_ptr = internal global ptr @stm32_fmc2_nfc_ham_calculate._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_bch_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bch timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stm32_fmc2_nfc_bch_calculate\00", [35 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_bch_calculate._entry_ptr = internal global ptr @stm32_fmc2_nfc_bch_calculate._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_bch_correct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.3, i32 663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_fmc2_nfc_bch_correct\00", [37 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_bch_correct._entry_ptr = internal global ptr @stm32_fmc2_nfc_bch_correct._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_waitrdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1279, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Waitrdy timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_fmc2_nfc_waitrdy\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_waitrdy._entry_ptr = internal global ptr @stm32_fmc2_nfc_waitrdy._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,stm32mp1-fmc2-ebi\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,stm32mp1-fmc2-nfc\00", [43 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NAND chip not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_fmc2_nfc_parse_dt\00", [40 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_dt._entry_ptr = internal global ptr @stm32_fmc2_nfc_parse_dt._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_parse_dt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"too many NAND chips defined\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_dt._entry_ptr.48 = internal global ptr @stm32_fmc2_nfc_parse_dt._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1762, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid reg property size\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_fmc2_nfc_parse_child\00", [37 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_child._entry_ptr = internal global ptr @stm32_fmc2_nfc_parse_child._entry, section ".printk_index", align 4
@stm32_fmc2_nfc_parse_child._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 1770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not retrieve reg property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_child._entry_ptr.54 = internal global ptr @stm32_fmc2_nfc_parse_child._entry.52, section ".printk_index", align 4
@stm32_fmc2_nfc_parse_child._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 1775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid reg value: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_child._entry_ptr.57 = internal global ptr @stm32_fmc2_nfc_parse_child._entry.55, section ".printk_index", align 4
@stm32_fmc2_nfc_parse_child._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.3, i32 1780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs already assigned: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_parse_child._entry_ptr.60 = internal global ptr @stm32_fmc2_nfc_parse_child._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request tx DMA channel: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_fmc2_nfc_dma_setup\00", [39 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry_ptr = internal global ptr @stm32_fmc2_nfc_dma_setup._entry, section ".printk_index", align 4
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str.3, i32 1558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request rx DMA channel: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry_ptr.69 = internal global ptr @stm32_fmc2_nfc_dma_setup._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecc\00", [28 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.65, ptr @.str.3, i32 1568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request ecc DMA channel: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry_ptr.73 = internal global ptr @stm32_fmc2_nfc_dma_setup._entry.71, section ".printk_index", align 4
@stm32_fmc2_nfc_dma_setup._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.65, ptr @.str.3, i32 1594, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DMAs not defined in the DT, polling mode is used\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_dma_setup._entry_ptr.76 = internal global ptr @stm32_fmc2_nfc_dma_setup._entry.74, section ".printk_index", align 4
@stm32_fmc2_nfc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.77, ptr @.str.3, i32 2039, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_fmc2_nfc_resume\00", [42 x i8] zeroinitializer }, align 32
@stm32_fmc2_nfc_resume._entry_ptr = internal global ptr @stm32_fmc2_nfc_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.82 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"stm32_fmc2_nfc_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2065, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2069, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"stm32_fmc2_nfc_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2058, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"stm32_fmc2_nfc_pm_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2055, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"stm32_fmc2_nfc_controller_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1744, i32 41 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1918, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1930, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1105, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1708, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"stm32_fmc2_nfc_ecc_caps\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1723, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1728, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [29 x i8] c"stm32_fmc2_nfc_ooblayout_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1671, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant [33 x i8] c"stm32_fmc2_nfc_ecc_caps_stepinfo\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [34 x i8] c"stm32_fmc2_nfc_ecc_caps_strengths\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1690, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 359, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 365, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 383, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 925, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 936, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 945, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 501, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 580, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 663, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1279, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1827, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1830, i32 44 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1801, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1806, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1757, i32 27 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1762, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1769, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1775, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1780, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 464, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 87, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1543, i32 46 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1547, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1553, i32 46 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1557, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1563, i32 47 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1567, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1593, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [42 x i8] c"../drivers/mtd/nand/raw/stm32_fmc2_nand.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2039, i32 3 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_alias510, ptr @__UNIQUE_ID_author511, ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file513, ptr @__UNIQUE_ID_license514, ptr @__exitcall_stm32_fmc2_nfc_driver_exit, ptr @__initcall__kmod_stm32_fmc2_nand__509_2074_stm32_fmc2_nfc_driver_init6, ptr @stm32_fmc2_nfc_attach_chip._entry, ptr @stm32_fmc2_nfc_attach_chip._entry.12, ptr @stm32_fmc2_nfc_attach_chip._entry.15, ptr @stm32_fmc2_nfc_attach_chip._entry_ptr, ptr @stm32_fmc2_nfc_attach_chip._entry_ptr.14, ptr @stm32_fmc2_nfc_attach_chip._entry_ptr.17, ptr @stm32_fmc2_nfc_bch_calculate._entry, ptr @stm32_fmc2_nfc_bch_calculate._entry_ptr, ptr @stm32_fmc2_nfc_bch_correct._entry, ptr @stm32_fmc2_nfc_bch_correct._entry_ptr, ptr @stm32_fmc2_nfc_dma_setup._entry, ptr @stm32_fmc2_nfc_dma_setup._entry.67, ptr @stm32_fmc2_nfc_dma_setup._entry.71, ptr @stm32_fmc2_nfc_dma_setup._entry.74, ptr @stm32_fmc2_nfc_dma_setup._entry_ptr, ptr @stm32_fmc2_nfc_dma_setup._entry_ptr.69, ptr @stm32_fmc2_nfc_dma_setup._entry_ptr.73, ptr @stm32_fmc2_nfc_dma_setup._entry_ptr.76, ptr @stm32_fmc2_nfc_driver_exit, ptr @stm32_fmc2_nfc_ham_calculate._entry, ptr @stm32_fmc2_nfc_ham_calculate._entry_ptr, ptr @stm32_fmc2_nfc_parse_child._entry, ptr @stm32_fmc2_nfc_parse_child._entry.52, ptr @stm32_fmc2_nfc_parse_child._entry.55, ptr @stm32_fmc2_nfc_parse_child._entry.58, ptr @stm32_fmc2_nfc_parse_child._entry_ptr, ptr @stm32_fmc2_nfc_parse_child._entry_ptr.54, ptr @stm32_fmc2_nfc_parse_child._entry_ptr.57, ptr @stm32_fmc2_nfc_parse_child._entry_ptr.60, ptr @stm32_fmc2_nfc_parse_dt._entry, ptr @stm32_fmc2_nfc_parse_dt._entry.46, ptr @stm32_fmc2_nfc_parse_dt._entry_ptr, ptr @stm32_fmc2_nfc_parse_dt._entry_ptr.48, ptr @stm32_fmc2_nfc_probe._entry, ptr @stm32_fmc2_nfc_probe._entry.6, ptr @stm32_fmc2_nfc_probe._entry_ptr, ptr @stm32_fmc2_nfc_probe._entry_ptr.8, ptr @stm32_fmc2_nfc_resume._entry, ptr @stm32_fmc2_nfc_resume._entry_ptr, ptr @stm32_fmc2_nfc_select_chip._entry, ptr @stm32_fmc2_nfc_select_chip._entry.20, ptr @stm32_fmc2_nfc_select_chip._entry.23, ptr @stm32_fmc2_nfc_select_chip._entry_ptr, ptr @stm32_fmc2_nfc_select_chip._entry_ptr.22, ptr @stm32_fmc2_nfc_select_chip._entry_ptr.25, ptr @stm32_fmc2_nfc_waitrdy._entry, ptr @stm32_fmc2_nfc_waitrdy._entry_ptr, ptr @stm32_fmc2_nfc_xfer._entry, ptr @stm32_fmc2_nfc_xfer._entry.28, ptr @stm32_fmc2_nfc_xfer._entry.31, ptr @stm32_fmc2_nfc_xfer._entry_ptr, ptr @stm32_fmc2_nfc_xfer._entry_ptr.30, ptr @stm32_fmc2_nfc_xfer._entry_ptr.33, ptr @stm32_fmc2_nfc_driver, ptr @.str, ptr @stm32_fmc2_nfc_match, ptr @stm32_fmc2_nfc_pm_ops, ptr @stm32_fmc2_nfc_controller_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @nand_controller_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @stm32_fmc2_nfc_ecc_caps, ptr @.str.13, ptr @.str.16, ptr @stm32_fmc2_nfc_ooblayout_ops, ptr @stm32_fmc2_nfc_ecc_caps_stepinfo, ptr @stm32_fmc2_nfc_ecc_caps_strengths, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @init_completion.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_attach_chip._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_attach_chip._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_ecc_caps_strengths to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_select_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_select_chip._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_select_chip._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_xfer._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_xfer._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_ham_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_bch_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_bch_correct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_waitrdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_parse_dt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_parse_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_parse_child._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_parse_child._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_parse_child._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_dma_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_dma_setup._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_dma_setup._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_dma_setup._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_fmc2_nfc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_fmc2_nfc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_fmc2_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_fmc2_nfc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cs.i.i = alloca i32, align 4
  %cres = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cres) #10
  %0 = call ptr @memset(ptr %cres, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2568, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nand_controller_init.__key) #10
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @stm32_fmc2_nfc_controller_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i247 = tail call i32 @of_device_is_compatible(ptr noundef %8, ptr noundef nonnull @.str.42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool3.not.not.i = icmp eq i32 %call.i247, 0
  %of_node4.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %9 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node4.i, align 8
  %call5.i = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end12.i, label %if.then7.i

if.end.thread.i:                                  ; preds = %if.end
  %of_node426.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %11 = ptrtoint ptr %of_node426.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node426.i, align 8
  %call527.i = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call527.i)
  %tobool6.not28.i = icmp eq i32 %call527.i, 0
  br i1 %tobool6.not28.i, label %if.end.thread.i.if.end7_crit_edge, label %if.end.thread.i.cleanup_crit_edge

if.end.thread.i.cleanup_crit_edge:                ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.thread.i.if.end7_crit_edge:                ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then7.i:                                       ; preds = %if.end.i
  br i1 %tobool3.not.not.i, label %if.then7.i.cleanup_crit_edge, label %if.then9.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  br label %if.end7

if.end12.i:                                       ; preds = %if.end.i
  br i1 %tobool3.not.not.i, label %if.end12.i.if.end7_crit_edge, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.i.if.end7_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.end12.i.if.end7_crit_edge, %if.then9.i, %if.end.thread.i.if.end7_crit_edge
  %.sink.i = phi ptr [ %14, %if.then9.i ], [ %4, %if.end.thread.i.if.end7_crit_edge ], [ %4, %if.end12.i.if.end7_crit_edge ]
  %cdev16.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %cdev16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.sink.i, ptr %cdev16.i, align 4
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 8
  %of_node.i248 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node.i248 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i248, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %19, ptr noundef null) #10
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end7.do.end.i_crit_edge, label %if.end7.for.body.i.i_crit_edge

if.end7.for.body.i.i_crit_edge:                   ; preds = %if.end7
  br label %for.body.i.i

if.end7.do.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end7.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end7.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %19, ptr noundef nonnull %child.06.i.i) #10
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i249 = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i249, label %of_get_child_count.exit.i.do.end.i_crit_edge, label %if.end.i250

of_get_child_count.exit.i.do.end.i_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_child_count.exit.i.do.end.i_crit_edge, %if.end7.do.end.i_crit_edge
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end.i250:                                      ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i)
  %cmp.i = icmp sgt i32 %inc.i.i, 1
  br i1 %cmp.i, label %do.end5.i, label %if.end7.i

do.end5.i:                                        ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i250
  %call8.i = tail call ptr @of_get_next_child(ptr noundef %19, ptr noundef null) #10
  %cmp9.not59.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.not59.i, label %if.end7.i.if.end11_crit_edge, label %for.body.lr.ph.i

if.end7.i.if.end11_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %ncs.i.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 2
  %cs_assigned.i.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 22
  %of_node.i.i.i.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 56, i32 27
  %name.i.i.i.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i.i) #10
  %24 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %cs.i.i, align 4, !annotation !175
  %call.i29.i340 = call ptr @of_get_property(ptr noundef nonnull %call8.i, ptr noundef nonnull @.str.49, ptr noundef %ncs.i.i) #10
  %tobool.not.i.i341 = icmp eq ptr %call.i29.i340, null
  br i1 %tobool.not.i.i341, label %for.body.lr.ph.i.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge, label %for.body.lr.ph.i.if.end.i.i_crit_edge

for.body.lr.ph.i.if.end.i.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %if.end.i.i

for.body.lr.ph.i.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_parse_child.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i.backedge.if.end.i.i_crit_edge, %for.body.lr.ph.i.if.end.i.i_crit_edge
  %child.060.i342 = phi ptr [ %child.060.i.be, %for.body.i.backedge.if.end.i.i_crit_edge ], [ %call8.i, %for.body.lr.ph.i.if.end.i.i_crit_edge ]
  %25 = ptrtoint ptr %ncs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ncs.i.i, align 8
  %div55.i.i = lshr i32 %26, 2
  store i32 %div55.i.i, ptr %ncs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %tobool4.not.i.i = icmp ult i32 %26, 4
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i30.i_crit_edge

if.end.i.i.for.body.i30.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i30.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.50) #13
  br label %stm32_fmc2_nfc_parse_child.exit.thread.i

for.body.i30.i:                                   ; preds = %if.end29.i.i.for.body.i30.i_crit_edge, %if.end.i.i.for.body.i30.i_crit_edge
  %i.060.i.i = phi i32 [ %inc.i31.i, %if.end29.i.i.for.body.i30.i_crit_edge ], [ 0, %if.end.i.i.for.body.i30.i_crit_edge ]
  %call8.i.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.060.i342, ptr noundef nonnull @.str.49, i32 noundef %i.060.i.i, ptr noundef nonnull %cs.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end15.i.i, label %stm32_fmc2_nfc_parse_child.exit.i

if.end15.i.i:                                     ; preds = %for.body.i30.i
  %29 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp16.i.i = icmp ugt i32 %30, 1
  br i1 %cmp16.i.i, label %do.end20.i.i, label %if.end22.i.i

do.end20.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.56, i32 noundef %30) #13
  br label %stm32_fmc2_nfc_parse_child.exit.thread.i

if.end22.i.i:                                     ; preds = %if.end15.i.i
  %33 = ptrtoint ptr %cs_assigned.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cs_assigned.i.i, align 4
  %conv.i.i = zext i8 %34 to i32
  %shl.i.i = shl nuw nsw i32 1, %30
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool23.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end29.i.i, label %do.end27.i.i

do.end27.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.59, i32 noundef %30) #13
  br label %stm32_fmc2_nfc_parse_child.exit.thread.i

if.end29.i.i:                                     ; preds = %if.end22.i.i
  %37 = trunc i32 %shl.i.i to i8
  %conv33.i.i = or i8 %34, %37
  %38 = ptrtoint ptr %cs_assigned.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv33.i.i, ptr %cs_assigned.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 3, i32 %i.060.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %30, ptr %arrayidx.i.i, align 4
  %inc.i31.i = add nuw nsw i32 %i.060.i.i, 1
  %40 = ptrtoint ptr %ncs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ncs.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i31.i, %41
  br i1 %cmp.i.i, label %if.end29.i.i.for.body.i30.i_crit_edge, label %for.end.i.i

if.end29.i.i.for.body.i30.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i30.i

for.end.i.i:                                      ; preds = %if.end29.i.i
  %42 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %child.060.i342, ptr %of_node.i.i.i.i, align 8
  %43 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.end.i.i.for.inc.i.thread_crit_edge

for.end.i.i.for.inc.i.thread_crit_edge:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.thread

if.then.i.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.060.i342, ptr noundef nonnull @.str.61, ptr noundef %name.i.i.i.i) #10
  br label %for.inc.i.thread

stm32_fmc2_nfc_parse_child.exit.thread.i:         ; preds = %for.body.i.backedge.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge, %do.end27.i.i, %do.end20.i.i, %do.end.i.i, %for.body.lr.ph.i.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge
  %child.060.i339 = phi ptr [ %child.060.i342, %do.end27.i.i ], [ %child.060.i342, %do.end20.i.i ], [ %child.060.i342, %do.end.i.i ], [ %call8.i, %for.body.lr.ph.i.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge ], [ %child.060.i.be, %for.body.i.backedge.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #10
  br label %if.then12.i

stm32_fmc2_nfc_parse_child.exit.i:                ; preds = %for.body.i30.i
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.53, i32 noundef %call8.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp11.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp11.i, label %stm32_fmc2_nfc_parse_child.exit.i.if.then12.i_crit_edge, label %for.inc.i

stm32_fmc2_nfc_parse_child.exit.i.if.then12.i_crit_edge: ; preds = %stm32_fmc2_nfc_parse_child.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %stm32_fmc2_nfc_parse_child.exit.i.if.then12.i_crit_edge, %stm32_fmc2_nfc_parse_child.exit.thread.i
  %child.060.i338 = phi ptr [ %child.060.i339, %stm32_fmc2_nfc_parse_child.exit.thread.i ], [ %child.060.i342, %stm32_fmc2_nfc_parse_child.exit.i.if.then12.i_crit_edge ]
  %retval.0.i36.i = phi i32 [ -22, %stm32_fmc2_nfc_parse_child.exit.thread.i ], [ %call8.i.i, %stm32_fmc2_nfc_parse_child.exit.i.if.then12.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.060.i338) #10
  br label %cleanup

for.inc.i:                                        ; preds = %stm32_fmc2_nfc_parse_child.exit.i
  %call14.i = call ptr @of_get_next_child(ptr noundef %19, ptr noundef nonnull %child.060.i342) #10
  %cmp9.not.i = icmp eq ptr %call14.i, null
  br i1 %cmp9.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.backedge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.backedge:                              ; preds = %for.inc.i.thread.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %child.060.i.be = phi ptr [ %call14.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %call14.i307, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i.i) #10
  %47 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %cs.i.i, align 4, !annotation !175
  %call.i29.i = call ptr @of_get_property(ptr noundef nonnull %child.060.i.be, ptr noundef nonnull @.str.49, ptr noundef %ncs.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i29.i, null
  br i1 %tobool.not.i.i, label %for.body.i.backedge.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge, label %for.body.i.backedge.if.end.i.i_crit_edge

for.body.i.backedge.if.end.i.i_crit_edge:         ; preds = %for.body.i.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.i.backedge.stm32_fmc2_nfc_parse_child.exit.thread.i_crit_edge: ; preds = %for.body.i.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_parse_child.exit.thread.i

for.inc.i.thread:                                 ; preds = %if.then.i.i.i.i, %for.end.i.i.for.inc.i.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #10
  %call14.i307 = call ptr @of_get_next_child(ptr noundef %19, ptr noundef nonnull %child.060.i342) #10
  %cmp9.not.i308 = icmp eq ptr %call14.i307, null
  br i1 %cmp9.not.i308, label %for.inc.i.thread.if.end11_crit_edge, label %for.inc.i.thread.for.body.i.backedge_crit_edge

for.inc.i.thread.for.body.i.backedge_crit_edge:   ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.backedge

for.inc.i.thread.if.end11_crit_edge:              ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %for.inc.i.thread.if.end11_crit_edge, %if.end7.i.if.end11_crit_edge
  %48 = ptrtoint ptr %cdev16.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdev16.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  %call12 = call i32 @of_address_to_resource(ptr noundef %51, i32 noundef 0, ptr noundef nonnull %cres) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %52 = ptrtoint ptr %cres to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cres, align 4
  %io_phys_addr = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %io_phys_addr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %io_phys_addr, align 4
  %55 = ptrtoint ptr %cdev16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cdev16.i, align 4
  %of_node17 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %of_node17 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node17, align 8
  %call18 = call ptr @device_node_to_regmap(ptr noundef %58) #10
  %regmap = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call18, ptr %regmap, align 8
  %cmp.i252 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %61 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev2, align 8
  %63 = ptrtoint ptr %cdev16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cdev16.i, align 4
  %cmp = icmp eq ptr %62, %64
  %cs_assigned = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 22
  %65 = ptrtoint ptr %cs_assigned to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %cs_assigned, align 4
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool30.not = icmp eq i8 %67, 0
  br i1 %tobool30.not, label %if.end24.for.inc_crit_edge, label %if.end32

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end32:                                         ; preds = %if.end24
  %spec.select = zext i1 %cmp to i32
  %call33 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %spec.select) #10
  %call34 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call33) #10
  %arrayidx = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 5, i32 0
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call34, ptr %arrayidx, align 4
  %cmp.i253 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.end32.if.then38_crit_edge, label %if.end42

if.end32.if.then38_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then38:                                        ; preds = %if.end32.1.if.then38_crit_edge, %if.end32.if.then38_crit_edge
  %call34.lcssa = phi ptr [ %call34, %if.end32.if.then38_crit_edge ], [ %call34.1, %if.end32.1.if.then38_crit_edge ]
  %69 = ptrtoint ptr %call34.lcssa to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %70 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call33, align 4
  %arrayidx44 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 9, i32 0
  %72 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx44, align 4
  %add = select i1 %cmp, i32 2, i32 1
  %call45 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %add) #10
  %arrayidx46 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 6, i32 0
  %73 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call45, ptr %arrayidx46, align 4
  %cmp.i254 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.end42.if.then50_crit_edge, label %if.end54

if.end42.if.then50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.then50:                                        ; preds = %if.end42.1.if.then50_crit_edge, %if.end42.if.then50_crit_edge
  %call45.lcssa = phi ptr [ %call45, %if.end42.if.then50_crit_edge ], [ %call45.1, %if.end42.1.if.then50_crit_edge ]
  %74 = ptrtoint ptr %call45.lcssa to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  %add55 = select i1 %cmp, i32 3, i32 2
  %call56 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %add55) #10
  %arrayidx57 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 7, i32 0
  %75 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call56, ptr %arrayidx57, align 4
  %cmp.i255 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.end54.if.then61_crit_edge, label %if.end54.for.inc_crit_edge

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end54.if.then61_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then61:                                        ; preds = %if.end54.1.if.then61_crit_edge, %if.end54.if.then61_crit_edge
  %call56.lcssa = phi ptr [ %call56, %if.end54.if.then61_crit_edge ], [ %call56.1, %if.end54.1.if.then61_crit_edge ]
  %76 = ptrtoint ptr %call56.lcssa to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end54.for.inc_crit_edge, %if.end24.for.inc_crit_edge
  %add66 = select i1 %cmp, i32 4, i32 3
  %77 = ptrtoint ptr %cs_assigned to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cs_assigned, align 4
  %79 = and i8 %78, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool30.not.1 = icmp eq i8 %79, 0
  br i1 %tobool30.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end32.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end32.1:                                       ; preds = %for.inc
  %call33.1 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %add66) #10
  %call34.1 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call33.1) #10
  %arrayidx.1 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call34.1, ptr %arrayidx.1, align 4
  %cmp.i253.1 = icmp ugt ptr %call34.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253.1, label %if.end32.1.if.then38_crit_edge, label %if.end42.1

if.end32.1.if.then38_crit_edge:                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.end42.1:                                       ; preds = %if.end32.1
  %81 = ptrtoint ptr %call33.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call33.1, align 4
  %arrayidx44.1 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 9, i32 1
  %83 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx44.1, align 4
  %add.1 = add nuw nsw i32 %add66, 1
  %call45.1 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %add.1) #10
  %arrayidx46.1 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 6, i32 1
  %84 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call45.1, ptr %arrayidx46.1, align 4
  %cmp.i254.1 = icmp ugt ptr %call45.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254.1, label %if.end42.1.if.then50_crit_edge, label %if.end54.1

if.end42.1.if.then50_crit_edge:                   ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.end54.1:                                       ; preds = %if.end42.1
  %add55.1 = add nuw nsw i32 %add66, 2
  %call56.1 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %add55.1) #10
  %arrayidx57.1 = getelementptr %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 7, i32 1
  %85 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call56.1, ptr %arrayidx57.1, align 4
  %cmp.i255.1 = icmp ugt ptr %call56.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255.1, label %if.end54.1.if.then61_crit_edge, label %if.end54.1.for.inc.1_crit_edge

if.end54.1.for.inc.1_crit_edge:                   ; preds = %if.end54.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end54.1.if.then61_crit_edge:                   ; preds = %if.end54.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

for.inc.1:                                        ; preds = %if.end54.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %call67 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %for.inc.1.cleanup_crit_edge, label %if.end71

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71:                                         ; preds = %for.inc.1
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %86 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i256 = icmp eq ptr %87, null
  br i1 %tobool.not.i256, label %if.end.i257, label %if.end71.dev_name.exit_crit_edge

if.end71.dev_name.exit_crit_edge:                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i257:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i257, %if.end71.dev_name.exit_crit_edge
  %retval.0.i258 = phi ptr [ %89, %if.end.i257 ], [ %87, %if.end71.dev_name.exit_crit_edge ]
  %call.i259 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call67, ptr noundef nonnull @stm32_fmc2_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i258, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool74.not = icmp eq i32 %call.i259, 0
  br i1 %tobool74.not, label %if.end76, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end76:                                         ; preds = %dev_name.exit
  %complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 19
  %90 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 19, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #10
  %91 = ptrtoint ptr %cdev16.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cdev16.i, align 4
  %call78 = call ptr @devm_clk_get(ptr noundef %92, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 10
  %93 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call78, ptr %clk, align 8
  %cmp.i260 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %call78 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  %call86 = call fastcc i32 @clk_prepare_enable(ptr noundef %call78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end92, label %do.end91

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end92:                                         ; preds = %if.end84
  %call.i.i261 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %cmp.i262 = icmp ugt ptr %call.i.i261, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i262, label %if.then95, label %if.else

if.then95:                                        ; preds = %if.end92
  %cmp97 = icmp eq ptr %call.i.i261, inttoptr (i32 -517 to ptr)
  br i1 %cmp97, label %if.then95.err_clk_disable_crit_edge, label %if.then95.if.end103_crit_edge

if.then95.if.end103_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then95.err_clk_disable_crit_edge:              ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.else:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %call101 = call i32 @reset_control_assert(ptr noundef %call.i.i261) #10
  %call102 = call i32 @reset_control_deassert(ptr noundef %call.i.i261) #10
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then95.if.end103_crit_edge
  %call104 = call fastcc i32 @stm32_fmc2_nfc_dma_setup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.err_release_dma_crit_edge

if.end103.err_release_dma_crit_edge:              ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_release_dma

if.end107:                                        ; preds = %if.end103
  call fastcc void @stm32_fmc2_nfc_init(ptr noundef nonnull %call.i)
  %nand108 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 56, i32 1
  %95 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dev1, ptr %parent, align 8
  %controller = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 32
  %96 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %controller, align 4
  %options = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 6
  %97 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %options, align 8
  %or = or i32 %98, 1573376
  store i32 %or, ptr %options, align 8
  %ncs = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %ncs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ncs, align 8
  %call.i263 = call i32 @nand_scan_with_ids(ptr noundef %nand108, i32 noundef %100, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool114.not = icmp eq i32 %call.i263, 0
  br i1 %tobool114.not, label %if.end116, label %if.end107.err_release_dma_crit_edge

if.end107.err_release_dma_crit_edge:              ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_release_dma

if.end116:                                        ; preds = %if.end107
  %call117 = call i32 @mtd_device_parse_register(ptr noundef %nand108, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %err_nand_cleanup

if.end120:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %101 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_nand_cleanup:                                 ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  call void @nand_cleanup(ptr noundef %nand108) #10
  br label %err_release_dma

err_release_dma:                                  ; preds = %err_nand_cleanup, %if.end107.err_release_dma_crit_edge, %if.end103.err_release_dma_crit_edge
  %ret.0 = phi i32 [ %call104, %if.end103.err_release_dma_crit_edge ], [ %call.i263, %if.end107.err_release_dma_crit_edge ], [ %call117, %err_nand_cleanup ]
  %dma_ecc_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 14
  %102 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dma_ecc_ch, align 8
  %tobool121.not = icmp eq ptr %103, null
  br i1 %tobool121.not, label %err_release_dma.if.end124_crit_edge, label %if.then122

err_release_dma.if.end124_crit_edge:              ; preds = %err_release_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then122:                                       ; preds = %err_release_dma
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef nonnull %103) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %err_release_dma.if.end124_crit_edge
  %dma_tx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 12
  %104 = ptrtoint ptr %dma_tx_ch to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dma_tx_ch, align 8
  %tobool125.not = icmp eq ptr %105, null
  br i1 %tobool125.not, label %if.end124.if.end128_crit_edge, label %if.then126

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef nonnull %105) #10
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end124.if.end128_crit_edge
  %dma_rx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 13
  %106 = ptrtoint ptr %dma_rx_ch to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dma_rx_ch, align 4
  %tobool129.not = icmp eq ptr %107, null
  br i1 %tobool129.not, label %if.end128.if.end132_crit_edge, label %if.then130

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef nonnull %107) #10
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end128.if.end132_crit_edge
  %dma_data_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 15
  call void @sg_free_table(ptr noundef %dma_data_sg) #10
  %dma_ecc_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %call.i, i32 0, i32 16
  call void @sg_free_table(ptr noundef %dma_ecc_sg) #10
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %if.end132, %if.then95.err_clk_disable_crit_edge
  %ret.1 = phi i32 [ -517, %if.then95.err_clk_disable_crit_edge ], [ %ret.0, %if.end132 ]
  %108 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %109) #10
  call void @clk_unprepare(ptr noundef %109) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk_disable, %if.end120, %do.end91, %if.then81, %do.end, %for.inc.1.cleanup_crit_edge, %if.then61, %if.then50, %if.then38, %if.then21, %if.end11.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then12.i, %do.end5.i, %do.end.i, %if.end12.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.end.thread.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %60, %if.then21 ], [ %69, %if.then38 ], [ %74, %if.then50 ], [ %76, %if.then61 ], [ %call.i259, %do.end ], [ %94, %if.then81 ], [ %call86, %do.end91 ], [ %ret.1, %err_clk_disable ], [ 0, %if.end120 ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call67, %for.inc.1.cleanup_crit_edge ], [ -22, %if.then7.i.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ], [ -22, %if.end.thread.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ %retval.0.i36.i, %if.then12.i ], [ -22, %do.end5.i ], [ %call8.i.i, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cres) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nand1 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %nand1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !176

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2000, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand1) #10
  %dma_ecc_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_ecc_ch, align 8
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.end.if.end27_crit_edge, label %if.then25

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %3) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  %dma_tx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dma_tx_ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx_ch, align 8
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %5) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %dma_rx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %dma_rx_ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx_ch, align 4
  %tobool32.not = icmp eq ptr %7, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %7) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %dma_data_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 15
  tail call void @sg_free_table(ptr noundef %dma_data_sg) #10
  %dma_ecc_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 16
  tail call void @sg_free_table(ptr noundef %dma_ecc_sg) #10
  %clk = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_state = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %irq_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end7_crit_edge [
    i8 2, label %if.then
    i8 1, label %if.then6
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %dev_id, i32 0, i32 4
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 544, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end7.sink.split

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i12 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i12, align 8
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 592, i32 noundef 18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then6, %if.then
  %7 = ptrtoint ptr %irq_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %irq_state, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  %complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %dev_id, i32 0, i32 19
  tail call void @complete(ptr noundef %complete) #10
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_fmc2_nfc_dma_setup(ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.63) #10
  %dma_tx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 12
  %2 = ptrtoint ptr %dma_tx_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dma_tx_ch, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %do.end [
    i32 -19, label %if.then.if.end_crit_edge
    i32 -517, label %if.then.if.end_crit_edge108
  ]

if.then.if.end_crit_edge108:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.64, i32 noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge108
  %7 = ptrtoint ptr %dma_tx_ch to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dma_tx_ch, align 8
  br label %err_dma

if.end9:                                          ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call11 = tail call ptr @dma_request_chan(ptr noundef %9, ptr noundef nonnull @.str.66) #10
  %dma_rx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 13
  %10 = ptrtoint ptr %dma_rx_ch to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %dma_rx_ch, align 4
  %cmp.i105 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then14, label %if.end27

if.then14:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %call11 to i32
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %11, label %do.end23 [
    i32 -19, label %if.then14.if.end25_crit_edge
    i32 -517, label %if.then14.if.end25_crit_edge109
  ]

if.then14.if.end25_crit_edge109:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end23:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.68, i32 noundef %11) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.then14.if.end25_crit_edge, %if.then14.if.end25_crit_edge109
  %15 = ptrtoint ptr %dma_rx_ch to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dma_rx_ch, align 4
  br label %err_dma

if.end27:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %call29 = tail call ptr @dma_request_chan(ptr noundef %17, ptr noundef nonnull @.str.70) #10
  %dma_ecc_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 14
  %18 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call29, ptr %dma_ecc_ch, align 8
  %cmp.i106 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then32, label %if.end45

if.then32:                                        ; preds = %if.end27
  %19 = ptrtoint ptr %call29 to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %19, label %do.end41 [
    i32 -19, label %if.then32.if.end43_crit_edge
    i32 -517, label %if.then32.if.end43_crit_edge110
  ]

if.then32.if.end43_crit_edge110:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end41:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.72, i32 noundef %19) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.then32.if.end43_crit_edge, %if.then32.if.end43_crit_edge110
  %23 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma_ecc_ch, align 8
  br label %err_dma

if.end45:                                         ; preds = %if.end27
  %dma_ecc_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 16
  %call46 = tail call i32 @sg_alloc_table(ptr noundef %dma_ecc_sg, i32 noundef 16, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool.not = icmp eq i32 %call46, 0
  br i1 %tobool.not, label %if.end48, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 320, i32 noundef 3520) #10
  %ecc_buf = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 17
  %26 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %ecc_buf, align 4
  %tobool52.not = icmp eq ptr %call.i, null
  br i1 %tobool52.not, label %if.end48.cleanup_crit_edge, label %if.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %dma_data_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 15
  %call55 = tail call i32 @sg_alloc_table(ptr noundef %dma_data_sg, i32 noundef 16, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %dma_data_complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 20
  %27 = ptrtoint ptr %dma_data_complete to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dma_data_complete, align 4
  %wait.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #10
  %dma_ecc_complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 21
  %28 = ptrtoint ptr %dma_ecc_complete to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dma_ecc_complete, align 4
  %wait.i107 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i107, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #10
  br label %cleanup

err_dma:                                          ; preds = %if.end43, %if.end25, %if.end
  %ret.0 = phi i32 [ %3, %if.end ], [ %11, %if.end25 ], [ %19, %if.end43 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.0)
  %cmp59 = icmp eq i32 %ret.0, -19
  br i1 %cmp59, label %do.end63, label %err_dma.cleanup_crit_edge

err_dma.cleanup_crit_edge:                        ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end63:                                         ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.75) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %err_dma.cleanup_crit_edge, %if.end58, %if.end54.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ %call46, %if.end45.cleanup_crit_edge ], [ -12, %if.end48.cleanup_crit_edge ], [ %call55, %if.end54.cleanup_crit_edge ], [ 0, %do.end63 ], [ %ret.0, %err_dma.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_nfc_init(ptr nocapture noundef %nfc) unnamed_addr #2 align 64 {
entry:
  %pcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcr) #10
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pcr, align 4, !annotation !175
  %regmap = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %pcr) #10
  %cs_sel = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 23
  %3 = ptrtoint ptr %cs_sel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cs_sel, align 8
  %4 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcr, align 4
  %or1 = and i32 %5, -51380087
  %or55 = or i32 %or1, 523782
  store i32 %or55, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %cdev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %nfc, i32 0, i32 3
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev, align 4
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %14 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcr, align 4
  %call59 = call i32 @regmap_write(ptr noundef %13, i32 noundef 128, i32 noundef %15) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call61 = call i32 @regmap_write(ptr noundef %17, i32 noundef 136, i32 noundef 168430090) #10
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %call63 = call i32 @regmap_write(ptr noundef %19, i32 noundef 140, i32 noundef 168430090) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %size, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %9 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %strength, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %sub = add i32 %13, -2
  %call13 = tail call i32 @nand_ecc_choose_conf(ptr noundef %chip, ptr noundef nonnull @stm32_fmc2_nfc_ecc_caps, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %div = udiv i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div)
  %cmp23 = icmp ugt i32 %div, 16
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %22 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bbt_options, align 8
  %and = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %23, 262144
  %24 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %25 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %controller, align 4
  %dma_tx_ch.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %dma_tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_tx_ch.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end33.if.else.i_crit_edge, label %land.lhs.true.i

if.end33.if.else.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end33
  %dma_rx_ch.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %26, i32 0, i32 13
  %29 = ptrtoint ptr %dma_rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_rx_ch.i, align 4
  %tobool1.not.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %dma_ecc_ch.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %26, i32 0, i32 14
  %31 = ptrtoint ptr %dma_ecc_ch.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_ecc_ch.i, align 8
  %tobool3.not.i = icmp eq ptr %32, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true2.i.if.else.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  %correct.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %33 = ptrtoint ptr %correct.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @stm32_fmc2_nfc_seq_correct, ptr %correct.i, align 4
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %34 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @stm32_fmc2_nfc_seq_write_page, ptr %write_page.i, align 4
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %35 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @stm32_fmc2_nfc_seq_read_page, ptr %read_page.i, align 8
  %write_page_raw.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %36 = ptrtoint ptr %write_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @stm32_fmc2_nfc_seq_write_page_raw, ptr %write_page_raw.i, align 4
  %read_page_raw.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %37 = ptrtoint ptr %read_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @stm32_fmc2_nfc_seq_read_page_raw, ptr %read_page_raw.i, align 8
  br label %if.end22.i

if.else.i:                                        ; preds = %land.lhs.true2.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end33.if.else.i_crit_edge
  %hwctl.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %38 = ptrtoint ptr %hwctl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @stm32_fmc2_nfc_hwctl, ptr %hwctl.i, align 4
  %39 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i = icmp eq i32 %40, 1
  %calculate.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  br i1 %cmp.i, label %if.then10.i, label %if.else15.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %calculate.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @stm32_fmc2_nfc_ham_calculate, ptr %calculate.i, align 8
  %correct13.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %42 = ptrtoint ptr %correct13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @stm32_fmc2_nfc_ham_correct, ptr %correct13.i, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 10
  %43 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %options.i, align 8
  %or.i = or i32 %44, 1
  store i32 %or.i, ptr %options.i, align 8
  br label %if.end22.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %calculate.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @stm32_fmc2_nfc_bch_calculate, ptr %calculate.i, align 8
  %correct19.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %46 = ptrtoint ptr %correct19.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @stm32_fmc2_nfc_bch_correct, ptr %correct19.i, align 4
  %read_page21.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %47 = ptrtoint ptr %read_page21.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @stm32_fmc2_nfc_read_page, ptr %read_page21.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else15.i, %if.then10.i, %if.then.i
  %48 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %strength, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %49, label %if.else41.i [
    i32 1, label %if.then26.i
    i32 8, label %if.then34.i
  ]

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %options27.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %51 = ptrtoint ptr %options27.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %options27.i, align 8
  %and.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool28.not.i, i32 3, i32 4
  br label %stm32_fmc2_nfc_nand_callbacks_setup.exit

if.then34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %options35.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %53 = ptrtoint ptr %options35.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %options35.i, align 8
  %and36.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %cond38.i = select i1 %tobool37.not.i, i32 13, i32 14
  br label %stm32_fmc2_nfc_nand_callbacks_setup.exit

if.else41.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %options42.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %55 = ptrtoint ptr %options42.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %options42.i, align 8
  %and43.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, i32 7, i32 8
  br label %stm32_fmc2_nfc_nand_callbacks_setup.exit

stm32_fmc2_nfc_nand_callbacks_setup.exit:         ; preds = %if.else41.i, %if.then34.i, %if.then26.i
  %cond38.sink.i = phi i32 [ %cond38.i, %if.then34.i ], [ %cond45.i, %if.else41.i ], [ %cond.i, %if.then26.i ]
  %bytes40.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %57 = ptrtoint ptr %bytes40.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond38.sink.i, ptr %bytes40.i, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %58 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @stm32_fmc2_nfc_ooblayout_ops, ptr %ooblayout1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %switch.selectcmp.i = icmp eq i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %switch.selectcmp55.i = icmp eq i32 %49, 8
  %options.i55 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %59 = ptrtoint ptr %options.i55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %options.i55, align 8
  %and.i56 = shl i32 %60, 3
  %61 = and i32 %and.i56, 16
  %switch.select.op.i = select i1 %switch.selectcmp.i, i32 131328, i32 131072
  %62 = select i1 %switch.selectcmp55.i, i32 16908544, i32 %switch.select.op.i
  %or42.i = or i32 %61, %62
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %26, i32 0, i32 4
  %63 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 128, i32 noundef 17695024, i32 noundef %or42.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %stm32_fmc2_nfc_nand_callbacks_setup.exit, %do.end27, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call13, %do.end18 ], [ -22, %do.end27 ], [ 0, %stm32_fmc2_nfc_nand_callbacks_setup.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  %isr.i = alloca i32, align 4
  %sr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %call1 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %chip, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp105.not = icmp eq i32 %5, 0
  br i1 %cmp105.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %current_interface_config.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 7
  %options.i67 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %cs_sel13 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %ret.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc31.for.body_crit_edge ]
  %op_id.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc31.for.body_crit_edge ]
  %6 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0106
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %9, label %for.body.for.inc31_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.cond7.preheader
    i32 2, label %sw.bb15
    i32 3, label %sw.bb20
    i32 4, label %sw.bb28
  ]

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

for.cond7.preheader:                              ; preds = %for.body
  %ctx8 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0106, i32 1
  %11 = ptrtoint ptr %ctx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9103.not = icmp eq i32 %12, 0
  br i1 %cmp9103.not, label %for.cond7.preheader.for.inc31_crit_edge, label %for.body10.lr.ph

for.cond7.preheader.for.inc31_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx8, i32 0, i32 1
  br label %for.body10

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %ctx = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0106, i32 1
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctx, align 4
  %15 = ptrtoint ptr %cs_sel13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cs_sel13, align 8
  %arrayidx5 = getelementptr %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 6, i32 %16
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %14) #10, !srcloc !177
  br label %for.inc31

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.0104 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10.for.body10_crit_edge ]
  %19 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addrs, align 4
  %arrayidx12 = getelementptr i8, ptr %20, i32 %i.0104
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx12, align 1
  %23 = ptrtoint ptr %cs_sel13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cs_sel13, align 8
  %arrayidx14 = getelementptr %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 7, i32 %24
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx14, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %22) #10, !srcloc !177
  %inc = add nuw i32 %i.0104, 1
  %27 = ptrtoint ptr %ctx8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctx8, align 4
  %cmp9 = icmp ult i32 %inc, %28
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.inc31_crit_edge

for.body10.for.inc31_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

sw.bb15:                                          ; preds = %for.body
  %ctx16 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0106, i32 1
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx16, i32 0, i32 1
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %31 = ptrtoint ptr %ctx16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctx16, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx16, i32 0, i32 2
  %33 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %force_8bit, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool19.not = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller, align 4
  %cs_sel.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %cs_sel.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cs_sel.i, align 8
  %arrayidx.i = getelementptr %struct.stm32_fmc2_nfc, ptr %36, i32 0, i32 5, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  br i1 %tobool19.not, label %sw.bb15.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb15.if.end.i_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb15
  %41 = ptrtoint ptr %options.i67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %options.i67, align 8
  %and.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %36, i32 0, i32 4
  %43 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 128, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb15.if.end.i_crit_edge
  %45 = ptrtoint ptr %30 to i32
  %and2.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 0
  br i1 %cmp.i, label %if.end.i.if.end22.i_crit_edge, label %if.then3.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then3.i:                                       ; preds = %if.end.i
  %and4.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 0
  br i1 %cmp5.i, label %if.then3.i.if.end10.i_crit_edge, label %land.lhs.true6.i

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true6.i:                                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not.i = icmp eq i32 %32, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.end42.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.end42.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %40) #10, !srcloc !179
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %30, align 1
  %add.ptr.i = getelementptr i8, ptr %30, i32 1
  %sub.i = add i32 %32, -1
  %.pre.i = ptrtoint ptr %add.ptr.i to i32
  %.pre91.i = and i32 %.pre.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre91.i)
  %phi.cmp.i = icmp ne i32 %.pre91.i, 0
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then3.i.if.end10.i_crit_edge
  %and11.pre-phi.i = phi i1 [ %phi.cmp.i, %if.then8.i ], [ true, %if.then3.i.if.end10.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %sub.i, %if.then8.i ], [ %32, %if.then3.i.if.end10.i_crit_edge ]
  %buf.addr.0.i = phi ptr [ %add.ptr.i, %if.then8.i ], [ %30, %if.then3.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.i)
  %cmp14.i = icmp ugt i32 %len.addr.0.i, 1
  %or.cond.i = and i1 %and11.pre-phi.i, %cmp14.i
  br i1 %or.cond.i, label %if.then15.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #10, !srcloc !180
  %49 = call i16 @llvm.bswap.i16(i16 %48) #10
  %50 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %buf.addr.0.i, align 2
  %add.ptr19.i = getelementptr i8, ptr %buf.addr.0.i, i32 2
  %sub20.i = add i32 %len.addr.0.i, -2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end10.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %len.addr.1.i = phi i32 [ %32, %if.end.i.if.end22.i_crit_edge ], [ %len.addr.0.i, %if.end10.i.if.end22.i_crit_edge ], [ %sub20.i, %if.then15.i ]
  %buf.addr.1.i = phi ptr [ %30, %if.end.i.if.end22.i_crit_edge ], [ %buf.addr.0.i, %if.end10.i.if.end22.i_crit_edge ], [ %add.ptr19.i, %if.then15.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.1.i)
  %cmp2387.i = icmp ugt i32 %len.addr.1.i, 3
  br i1 %cmp2387.i, label %if.end22.i.while.body.i_crit_edge, label %if.end22.i.while.end.i_crit_edge

if.end22.i.while.end.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end22.i.while.body.i_crit_edge
  %buf.addr.289.i = phi ptr [ %add.ptr27.i, %while.body.i.while.body.i_crit_edge ], [ %buf.addr.1.i, %if.end22.i.while.body.i_crit_edge ]
  %len.addr.288.i = phi i32 [ %sub28.i, %while.body.i.while.body.i_crit_edge ], [ %len.addr.1.i, %if.end22.i.while.body.i_crit_edge ]
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !181
  %52 = call i32 @llvm.bswap.i32(i32 %51) #10
  %53 = ptrtoint ptr %buf.addr.289.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %buf.addr.289.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %buf.addr.289.i, i32 4
  %sub28.i = add i32 %len.addr.288.i, -4
  %cmp23.i = icmp ugt i32 %sub28.i, 3
  br i1 %cmp23.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end22.i.while.end.i_crit_edge
  %len.addr.2.lcssa.i = phi i32 [ %len.addr.1.i, %if.end22.i.while.end.i_crit_edge ], [ %sub28.i, %while.body.i.while.end.i_crit_edge ]
  %buf.addr.2.lcssa.i = phi ptr [ %buf.addr.1.i, %if.end22.i.while.end.i_crit_edge ], [ %add.ptr27.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.2.lcssa.i)
  %cmp29.i = icmp ugt i32 %len.addr.2.lcssa.i, 1
  br i1 %cmp29.i, label %if.then30.i, label %while.end.i.if.end36.i_crit_edge

while.end.i.if.end36.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then30.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #10, !srcloc !180
  %55 = call i16 @llvm.bswap.i16(i16 %54) #10
  %56 = ptrtoint ptr %buf.addr.2.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %buf.addr.2.lcssa.i, align 2
  %add.ptr34.i = getelementptr i8, ptr %buf.addr.2.lcssa.i, i32 2
  %sub35.i = add nsw i32 %len.addr.2.lcssa.i, -2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i, %while.end.i.if.end36.i_crit_edge
  %len.addr.3.i = phi i32 [ %sub35.i, %if.then30.i ], [ %len.addr.2.lcssa.i, %while.end.i.if.end36.i_crit_edge ]
  %buf.addr.3.i = phi ptr [ %add.ptr34.i, %if.then30.i ], [ %buf.addr.2.lcssa.i, %while.end.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.3.i)
  %tobool37.not.i = icmp eq i32 %len.addr.3.i, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end42.i_crit_edge, label %if.then38.i

if.end36.i.if.end42.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %40) #10, !srcloc !179
  %58 = ptrtoint ptr %buf.addr.3.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %buf.addr.3.i, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end36.i.if.end42.i_crit_edge, %land.lhs.true6.i.if.end42.i_crit_edge
  br i1 %tobool19.not, label %if.end42.i.for.inc31_crit_edge, label %land.lhs.true44.i

if.end42.i.for.inc31_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

land.lhs.true44.i:                                ; preds = %if.end42.i
  %59 = ptrtoint ptr %options.i67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %options.i67, align 8
  %and46.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true44.i.for.inc31_crit_edge, label %if.then48.i

land.lhs.true44.i.for.inc31_crit_edge:            ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

if.then48.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i79.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %36, i32 0, i32 4
  %61 = ptrtoint ptr %regmap.i79.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i79.i, align 8
  %call.i.i80.i = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 128, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %for.inc31

sw.bb20:                                          ; preds = %for.body
  %ctx21 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0106, i32 1
  %buf22 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx21, i32 0, i32 1
  %63 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf22, align 4
  %65 = ptrtoint ptr %ctx21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctx21, align 4
  %force_8bit26 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx21, i32 0, i32 2
  %67 = ptrtoint ptr %force_8bit26 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %force_8bit26, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool27.not = icmp eq i8 %68, 0
  %69 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %controller, align 4
  %cs_sel.i65 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %70, i32 0, i32 23
  %71 = ptrtoint ptr %cs_sel.i65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cs_sel.i65, align 8
  %arrayidx.i66 = getelementptr %struct.stm32_fmc2_nfc, ptr %70, i32 0, i32 5, i32 %72
  %73 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i66, align 4
  br i1 %tobool27.not, label %sw.bb20.if.end.i76_crit_edge, label %land.lhs.true.i70

sw.bb20.if.end.i76_crit_edge:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i76

land.lhs.true.i70:                                ; preds = %sw.bb20
  %75 = ptrtoint ptr %options.i67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %options.i67, align 8
  %and.i68 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool1.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool1.not.i69, label %land.lhs.true.i70.if.end.i76_crit_edge, label %if.then.i73

land.lhs.true.i70.if.end.i76_crit_edge:           ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i76

if.then.i73:                                      ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i.i71 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %70, i32 0, i32 4
  %77 = ptrtoint ptr %regmap.i.i71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i.i71, align 8
  %call.i.i.i72 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 128, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.then.i73, %land.lhs.true.i70.if.end.i76_crit_edge, %sw.bb20.if.end.i76_crit_edge
  %79 = ptrtoint ptr %64 to i32
  %and2.i74 = and i32 %79, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i74)
  %cmp.i75 = icmp eq i32 %and2.i74, 0
  br i1 %cmp.i75, label %if.end.i76.if.end18.i_crit_edge, label %if.then3.i79

if.end.i76.if.end18.i_crit_edge:                  ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then3.i79:                                     ; preds = %if.end.i76
  %and4.i77 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i77)
  %cmp5.i78 = icmp eq i32 %and4.i77, 0
  br i1 %cmp5.i78, label %if.then3.i79.if.end9.i_crit_edge, label %land.lhs.true6.i81

if.then3.i79.if.end9.i_crit_edge:                 ; preds = %if.then3.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true6.i81:                               ; preds = %if.then3.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool7.not.i80 = icmp eq i32 %66, 0
  br i1 %tobool7.not.i80, label %land.lhs.true6.i81.if.end29.i_crit_edge, label %if.then8.i86

land.lhs.true6.i81.if.end29.i_crit_edge:          ; preds = %land.lhs.true6.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then8.i86:                                     ; preds = %land.lhs.true6.i81
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %64, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 %81) #10, !srcloc !177
  %add.ptr.i82 = getelementptr i8, ptr %64, i32 1
  %sub.i83 = add i32 %66, -1
  %.pre.i84 = ptrtoint ptr %add.ptr.i82 to i32
  %.pre78.i = and i32 %.pre.i84, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre78.i)
  %phi.cmp.i85 = icmp ne i32 %.pre78.i, 0
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i86, %if.then3.i79.if.end9.i_crit_edge
  %and10.pre-phi.i = phi i1 [ %phi.cmp.i85, %if.then8.i86 ], [ true, %if.then3.i79.if.end9.i_crit_edge ]
  %len.addr.0.i87 = phi i32 [ %sub.i83, %if.then8.i86 ], [ %66, %if.then3.i79.if.end9.i_crit_edge ]
  %buf.addr.0.i88 = phi ptr [ %add.ptr.i82, %if.then8.i86 ], [ %64, %if.then3.i79.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.i87)
  %cmp13.i = icmp ugt i32 %len.addr.0.i87, 1
  %or.cond.i89 = and i1 %and10.pre-phi.i, %cmp13.i
  br i1 %or.cond.i89, label %if.then14.i, label %if.end9.i.if.end18.i_crit_edge

if.end9.i.if.end18.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %buf.addr.0.i88 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %buf.addr.0.i88, align 2
  %84 = call i16 @llvm.bswap.i16(i16 %83) #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 %84) #10, !srcloc !182
  %add.ptr15.i = getelementptr i8, ptr %buf.addr.0.i88, i32 2
  %sub16.i = add i32 %len.addr.0.i87, -2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end9.i.if.end18.i_crit_edge, %if.end.i76.if.end18.i_crit_edge
  %len.addr.1.i90 = phi i32 [ %66, %if.end.i76.if.end18.i_crit_edge ], [ %len.addr.0.i87, %if.end9.i.if.end18.i_crit_edge ], [ %sub16.i, %if.then14.i ]
  %buf.addr.1.i91 = phi ptr [ %64, %if.end.i76.if.end18.i_crit_edge ], [ %buf.addr.0.i88, %if.end9.i.if.end18.i_crit_edge ], [ %add.ptr15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.1.i90)
  %cmp1974.i = icmp ugt i32 %len.addr.1.i90, 3
  br i1 %cmp1974.i, label %if.end18.i.while.body.i92_crit_edge, label %if.end18.i.while.end.i95_crit_edge

if.end18.i.while.end.i95_crit_edge:               ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i95

if.end18.i.while.body.i92_crit_edge:              ; preds = %if.end18.i
  br label %while.body.i92

while.body.i92:                                   ; preds = %while.body.i92.while.body.i92_crit_edge, %if.end18.i.while.body.i92_crit_edge
  %buf.addr.276.i = phi ptr [ %add.ptr20.i, %while.body.i92.while.body.i92_crit_edge ], [ %buf.addr.1.i91, %if.end18.i.while.body.i92_crit_edge ]
  %len.addr.275.i = phi i32 [ %sub21.i, %while.body.i92.while.body.i92_crit_edge ], [ %len.addr.1.i90, %if.end18.i.while.body.i92_crit_edge ]
  %85 = ptrtoint ptr %buf.addr.276.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf.addr.276.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %87) #10, !srcloc !183
  %add.ptr20.i = getelementptr i8, ptr %buf.addr.276.i, i32 4
  %sub21.i = add i32 %len.addr.275.i, -4
  %cmp19.i = icmp ugt i32 %sub21.i, 3
  br i1 %cmp19.i, label %while.body.i92.while.body.i92_crit_edge, label %while.body.i92.while.end.i95_crit_edge

while.body.i92.while.end.i95_crit_edge:           ; preds = %while.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i95

while.body.i92.while.body.i92_crit_edge:          ; preds = %while.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i92

while.end.i95:                                    ; preds = %while.body.i92.while.end.i95_crit_edge, %if.end18.i.while.end.i95_crit_edge
  %len.addr.2.lcssa.i93 = phi i32 [ %len.addr.1.i90, %if.end18.i.while.end.i95_crit_edge ], [ %sub21.i, %while.body.i92.while.end.i95_crit_edge ]
  %buf.addr.2.lcssa.i94 = phi ptr [ %buf.addr.1.i91, %if.end18.i.while.end.i95_crit_edge ], [ %add.ptr20.i, %while.body.i92.while.end.i95_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.2.lcssa.i93)
  %cmp22.i = icmp ugt i32 %len.addr.2.lcssa.i93, 1
  br i1 %cmp22.i, label %if.then23.i, label %while.end.i95.if.end26.i_crit_edge

while.end.i95.if.end26.i_crit_edge:               ; preds = %while.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then23.i:                                      ; preds = %while.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %buf.addr.2.lcssa.i94 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %buf.addr.2.lcssa.i94, align 2
  %90 = call i16 @llvm.bswap.i16(i16 %89) #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 %90) #10, !srcloc !182
  %add.ptr24.i = getelementptr i8, ptr %buf.addr.2.lcssa.i94, i32 2
  %sub25.i = add nsw i32 %len.addr.2.lcssa.i93, -2
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %while.end.i95.if.end26.i_crit_edge
  %len.addr.3.i96 = phi i32 [ %sub25.i, %if.then23.i ], [ %len.addr.2.lcssa.i93, %while.end.i95.if.end26.i_crit_edge ]
  %buf.addr.3.i97 = phi ptr [ %add.ptr24.i, %if.then23.i ], [ %buf.addr.2.lcssa.i94, %while.end.i95.if.end26.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.3.i96)
  %tobool27.not.i = icmp eq i32 %len.addr.3.i96, 0
  br i1 %tobool27.not.i, label %if.end26.i.if.end29.i_crit_edge, label %if.then28.i

if.end26.i.if.end29.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %buf.addr.3.i97 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %buf.addr.3.i97, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %74, i8 %92) #10, !srcloc !177
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end29.i_crit_edge, %land.lhs.true6.i81.if.end29.i_crit_edge
  br i1 %tobool27.not, label %if.end29.i.for.inc31_crit_edge, label %land.lhs.true31.i

if.end29.i.for.inc31_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

land.lhs.true31.i:                                ; preds = %if.end29.i
  %93 = ptrtoint ptr %options.i67 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %options.i67, align 8
  %and33.i = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true31.i.for.inc31_crit_edge, label %if.then35.i

land.lhs.true31.i.for.inc31_crit_edge:            ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

if.then35.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.i66.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %70, i32 0, i32 4
  %95 = ptrtoint ptr %regmap.i66.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i66.i, align 8
  %call.i.i67.i = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 128, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %for.inc31

sw.bb28:                                          ; preds = %for.body
  %97 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr.i) #10
  %99 = ptrtoint ptr %isr.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %isr.i, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr.i) #10
  %100 = ptrtoint ptr %sr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %sr.i, align 4, !annotation !175
  %call1.i = call i64 @ktime_get() #10
  %add.i.i = add i64 %call1.i, 5000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1278) #10
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %98, i32 0, i32 4
  %101 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap.i, align 8
  %call938.i = call i32 @regmap_read(ptr noundef %102, i32 noundef 132, ptr noundef nonnull %sr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call938.i)
  %tobool.not39.i = icmp eq i32 %call938.i, 0
  br i1 %tobool.not39.i, label %sw.bb28.lor.lhs.false.i_crit_edge, label %sw.bb28.do.end34.i_crit_edge

sw.bb28.do.end34.i_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

sw.bb28.lor.lhs.false.i_crit_edge:                ; preds = %sw.bb28
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i.lor.lhs.false.i_crit_edge, %sw.bb28.lor.lhs.false.i_crit_edge
  %103 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sr.i, align 4
  %and.i100 = and i32 %104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool10.not.i = icmp eq i32 %and.i100, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i101, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true.i101:                               ; preds = %lor.lhs.false.i
  %call14.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i101
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %105 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i, align 8
  %call9.i = call i32 @regmap_read(ptr noundef %106, i32 noundef 132, ptr noundef nonnull %sr.i) #10
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.then22.i.lor.lhs.false.i_crit_edge, label %if.then22.i.do.end34.i_crit_edge

if.then22.i.do.end34.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

if.then22.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i101
  %107 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i, align 8
  %call19.i = call i32 @regmap_read(ptr noundef %108, i32 noundef 132, ptr noundef nonnull %sr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool24.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool24.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end34.i_crit_edge

for.end.i.do.end34.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %109 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sr.i, align 4
  %and25.i = and i32 %110, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %lor.rhs.i.do.end34.i_crit_edge, label %lor.rhs.i.cond.false8.i.i_crit_edge

lor.rhs.i.cond.false8.i.i_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false8.i.i

lor.rhs.i.do.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

do.end34.i:                                       ; preds = %lor.rhs.i.do.end34.i_crit_edge, %for.end.i.do.end34.i_crit_edge, %if.then22.i.do.end34.i_crit_edge, %sw.bb28.do.end34.i_crit_edge
  %dev.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %98, i32 0, i32 2
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.39) #13
  br label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %do.end34.i, %lor.rhs.i.cond.false8.i.i_crit_edge
  %113 = ptrtoint ptr %current_interface_config.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %current_interface_config.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i.i.i = icmp eq i32 %116, 0
  %117 = getelementptr inbounds %struct.nand_interface_config, ptr %114, i32 0, i32 1, i32 1
  %retval.0.i3.i = select i1 %cmp.i.i.i, ptr %117, ptr inttoptr (i32 -22 to ptr)
  %tWB_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i3.i, i32 0, i32 32
  %118 = ptrtoint ptr %tWB_max.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tWB_max.i, align 8
  %sub.i102 = add i32 %119, 999
  %div.i = udiv i32 %sub.i102, 1000
  %sub.i.i = add nuw nsw i32 %div.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %120(i32 noundef %div.i.i) #10
  %121 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap.i, align 8
  %call42.i = call i32 @regmap_write(ptr noundef %122, i32 noundef 392, i32 noundef 2) #10
  %call48.i = call i64 @ktime_get() #10
  %add.i5.i = add i64 %call48.i, 5000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1291) #10
  %123 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i, align 8
  %call6540.i = call i32 @regmap_read(ptr noundef %124, i32 noundef 388, ptr noundef nonnull %isr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6540.i)
  %tobool66.not41.i = icmp eq i32 %call6540.i, 0
  br i1 %tobool66.not41.i, label %cond.false8.i.i.lor.lhs.false67.i_crit_edge, label %cond.false8.i.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge

cond.false8.i.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge: ; preds = %cond.false8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_waitrdy.exit

cond.false8.i.i.lor.lhs.false67.i_crit_edge:      ; preds = %cond.false8.i.i
  br label %lor.lhs.false67.i

lor.lhs.false67.i:                                ; preds = %if.then83.i.lor.lhs.false67.i_crit_edge, %cond.false8.i.i.lor.lhs.false67.i_crit_edge
  %125 = ptrtoint ptr %isr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %isr.i, align 4
  %and68.i = and i32 %126, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %land.lhs.true73.i, label %lor.lhs.false67.i.lor.rhs90.i_crit_edge

lor.lhs.false67.i.lor.rhs90.i_crit_edge:          ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs90.i

land.lhs.true73.i:                                ; preds = %lor.lhs.false67.i
  %call74.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call74.i, i64 %add.i5.i)
  %cmp3.i7.i = icmp sgt i64 %call74.i, %add.i5.i
  br i1 %cmp3.i7.i, label %for.end87.i, label %if.then83.i

if.then83.i:                                      ; preds = %land.lhs.true73.i
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #10
  %127 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap.i, align 8
  %call65.i = call i32 @regmap_read(ptr noundef %128, i32 noundef 388, ptr noundef nonnull %isr.i) #10
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.then83.i.lor.lhs.false67.i_crit_edge, label %if.then83.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge

if.then83.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge: ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_waitrdy.exit

if.then83.i.lor.lhs.false67.i_crit_edge:          ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false67.i

for.end87.i:                                      ; preds = %land.lhs.true73.i
  %129 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap.i, align 8
  %call80.i = call i32 @regmap_read(ptr noundef %130, i32 noundef 388, ptr noundef nonnull %isr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool89.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool89.not.i, label %for.end87.i.lor.rhs90.i_crit_edge, label %for.end87.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge

for.end87.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge: ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_waitrdy.exit

for.end87.i.lor.rhs90.i_crit_edge:                ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs90.i

lor.rhs90.i:                                      ; preds = %for.end87.i.lor.rhs90.i_crit_edge, %lor.lhs.false67.i.lor.rhs90.i_crit_edge
  %131 = ptrtoint ptr %isr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %isr.i, align 4
  %and91.i = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %phi.sel1.i = select i1 %tobool92.not.i, i32 -110, i32 0
  br label %stm32_fmc2_nfc_waitrdy.exit

stm32_fmc2_nfc_waitrdy.exit:                      ; preds = %lor.rhs90.i, %for.end87.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge, %if.then83.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge, %cond.false8.i.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge
  %tobool89.not23.i = phi i32 [ %call80.i, %for.end87.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge ], [ %phi.sel1.i, %lor.rhs90.i ], [ %call6540.i, %cond.false8.i.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge ], [ %call65.i, %if.then83.i.stm32_fmc2_nfc_waitrdy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr.i) #10
  br label %for.inc31

for.inc31:                                        ; preds = %stm32_fmc2_nfc_waitrdy.exit, %if.then35.i, %land.lhs.true31.i.for.inc31_crit_edge, %if.end29.i.for.inc31_crit_edge, %if.then48.i, %land.lhs.true44.i.for.inc31_crit_edge, %if.end42.i.for.inc31_crit_edge, %for.body10.for.inc31_crit_edge, %sw.bb, %for.cond7.preheader.for.inc31_crit_edge, %for.body.for.inc31_crit_edge
  %ret.1 = phi i32 [ %ret.0108, %for.body.for.inc31_crit_edge ], [ %tobool89.not23.i, %stm32_fmc2_nfc_waitrdy.exit ], [ %ret.0108, %sw.bb ], [ %ret.0108, %if.end42.i.for.inc31_crit_edge ], [ %ret.0108, %land.lhs.true44.i.for.inc31_crit_edge ], [ %ret.0108, %if.then48.i ], [ %ret.0108, %if.end29.i.for.inc31_crit_edge ], [ %ret.0108, %land.lhs.true31.i.for.inc31_crit_edge ], [ %ret.0108, %if.then35.i ], [ %ret.0108, %for.cond7.preheader.for.inc31_crit_edge ], [ %ret.0108, %for.body10.for.inc31_crit_edge ]
  %inc32 = add nuw i32 %op_id.0106, 1
  %133 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc32, %134
  br i1 %cmp, label %for.inc31.for.body_crit_edge, label %for.inc31.cleanup_crit_edge

for.inc31.cleanup_crit_edge:                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc31.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %ret.1, %for.inc31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_setup_interface(ptr nocapture noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chipnr)
  %cmp = icmp eq i32 %chipnr, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %4 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller.i, align 4
  %timings.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1
  %clk.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 8
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %7) #10
  %div.i = udiv i32 %call2.i, 1000
  %div3.i = udiv i32 1000000000, %div.i
  %tAR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 7
  %8 = ptrtoint ptr %tAR_min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tAR_min.i, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %9) #10
  %add.i = add nsw i32 %div3.i, -1
  %sub.i = add i32 %10, %add.i
  %div4.i = udiv i32 %sub.i, %div3.i
  %sub5.i = add nsw i32 %div4.i, -1
  %11 = tail call i32 @llvm.umin.i32(i32 %sub5.i, i32 15) #10
  %conv.i = trunc i32 %11 to i8
  %tar12.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %tar12.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %tar12.i, align 1
  %tCLR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 13
  %13 = ptrtoint ptr %tCLR_min.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tCLR_min.i, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %14) #10
  %sub21.i = add i32 %15, %add.i
  %div22.i = udiv i32 %sub21.i, %div3.i
  %sub23.i = add nsw i32 %div22.i, -1
  %16 = tail call i32 @llvm.umin.i32(i32 %sub23.i, i32 15) #10
  %conv31.i = trunc i32 %16 to i8
  %17 = ptrtoint ptr %timings.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv31.i, ptr %timings.i, align 1
  %thiz33.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %thiz33.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %thiz33.i, align 1
  %mul.i = shl nuw nsw i32 %div3.i, 1
  %tRP_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %19 = ptrtoint ptr %tRP_min.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tRP_min.i, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %20) #10
  %tWP_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %22 = ptrtoint ptr %tWP_min.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tWP_min.i, align 8
  %24 = tail call i32 @llvm.umax.i32(i32 %21, i32 %23) #10
  %tREA_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %25 = ptrtoint ptr %tREA_max.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tREA_max.i, align 4
  %add51.i = add i32 %26, 8000
  %27 = tail call i32 @llvm.umax.i32(i32 %24, i32 %add51.i) #10
  %sub60.i = add i32 %27, %add.i
  %div61.i = udiv i32 %sub60.i, %div3.i
  %28 = tail call i32 @llvm.umax.i32(i32 %div61.i, i32 1) #10
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 255) #10
  %conv76.i = trunc i32 %29 to i8
  %twait77.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %twait77.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv76.i, ptr %twait77.i, align 1
  %tCS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 16
  %31 = ptrtoint ptr %tCS_min.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tCS_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %27)
  %cmp78.i = icmp ugt i32 %32, %27
  %sub81.i = sub i32 %32, %27
  %33 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %sub81.i) #10
  %tset_mem.0.i = select i1 %cmp78.i, i32 %33, i32 %div3.i
  %tALS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 6
  %34 = ptrtoint ptr %tALS_min.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tALS_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %27)
  %cmp86.i = icmp ugt i32 %35, %27
  %sub90.i = sub i32 %35, %27
  %36 = tail call i32 @llvm.umax.i32(i32 %tset_mem.0.i, i32 %sub90.i) #10
  %tset_mem.1.i = select i1 %cmp86.i, i32 %36, i32 %tset_mem.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul.i)
  %cmp97.i = icmp ugt i32 %27, %mul.i
  br i1 %cmp97.i, label %land.lhs.true99.i, label %if.end4.if.end113.i_crit_edge

if.end4.if.end113.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

land.lhs.true99.i:                                ; preds = %if.end4
  %tDS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 18
  %37 = ptrtoint ptr %tDS_min.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tDS_min.i, align 8
  %sub100.i = sub i32 %27, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub100.i)
  %cmp101.i = icmp ugt i32 %38, %sub100.i
  br i1 %cmp101.i, label %land.lhs.true103.i, label %land.lhs.true99.i.if.end113.i_crit_edge

land.lhs.true99.i.if.end113.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

land.lhs.true103.i:                               ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub106.i = sub i32 %38, %sub100.i
  %39 = tail call i32 @llvm.umax.i32(i32 %tset_mem.1.i, i32 %sub106.i) #10
  br label %if.end113.i

if.end113.i:                                      ; preds = %land.lhs.true103.i, %land.lhs.true99.i.if.end113.i_crit_edge, %if.end4.if.end113.i_crit_edge
  %tset_mem.2.i = phi i32 [ %tset_mem.1.i, %land.lhs.true99.i.if.end113.i_crit_edge ], [ %tset_mem.1.i, %if.end4.if.end113.i_crit_edge ], [ %39, %land.lhs.true103.i ]
  %sub115.i = add i32 %tset_mem.2.i, %add.i
  %div116.i = udiv i32 %sub115.i, %div3.i
  %40 = tail call i32 @llvm.umax.i32(i32 %div116.i, i32 1) #10
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 255) #10
  %conv131.i = trunc i32 %41 to i8
  %tset_mem132.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 5
  %42 = ptrtoint ptr %tset_mem132.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv131.i, ptr %tset_mem132.i, align 1
  %tCH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 10
  %43 = ptrtoint ptr %tCH_min.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tCH_min.i, align 8
  %45 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %44) #10
  %tREH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %46 = ptrtoint ptr %tREH_min.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tREH_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %tset_mem.2.i)
  %cmp140.i = icmp ugt i32 %47, %tset_mem.2.i
  %sub144.i = sub i32 %47, %tset_mem.2.i
  %48 = tail call i32 @llvm.umax.i32(i32 %45, i32 %sub144.i) #10
  %thold_mem.0.i = select i1 %cmp140.i, i32 %48, i32 %45
  %tRC_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %49 = ptrtoint ptr %tRC_min.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tRC_min.i, align 8
  %add151.i = add i32 %tset_mem.2.i, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add151.i)
  %cmp152.i = icmp ugt i32 %50, %add151.i
  %sub157.i = sub i32 %50, %add151.i
  %51 = tail call i32 @llvm.umax.i32(i32 %thold_mem.0.i, i32 %sub157.i) #10
  %thold_mem.1.i = select i1 %cmp152.i, i32 %51, i32 %thold_mem.0.i
  %tWC_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %52 = ptrtoint ptr %tWC_min.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tWC_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %add151.i)
  %cmp166.i = icmp ugt i32 %53, %add151.i
  %sub171.i = sub i32 %53, %add151.i
  %54 = tail call i32 @llvm.umax.i32(i32 %thold_mem.1.i, i32 %sub171.i) #10
  %thold_mem.2.i = select i1 %cmp166.i, i32 %54, i32 %thold_mem.1.i
  %sub180.i = add i32 %thold_mem.2.i, %add.i
  %div181.i = udiv i32 %sub180.i, %div3.i
  %55 = tail call i32 @llvm.umax.i32(i32 %div181.i, i32 1) #10
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 255) #10
  %conv196.i = trunc i32 %56 to i8
  %thold_mem197.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %thold_mem197.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv196.i, ptr %thold_mem197.i, align 1
  %58 = ptrtoint ptr %tCS_min.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tCS_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %27)
  %cmp199.i = icmp ugt i32 %59, %27
  %sub203.i = sub i32 %59, %27
  %60 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %sub203.i) #10
  %tset_att.0.i = select i1 %cmp199.i, i32 %60, i32 %div3.i
  %tCLS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 14
  %61 = ptrtoint ptr %tCLS_min.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tCLS_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %27)
  %cmp210.i = icmp ugt i32 %62, %27
  %sub214.i = sub i32 %62, %27
  %63 = tail call i32 @llvm.umax.i32(i32 %tset_att.0.i, i32 %sub214.i) #10
  %tset_att.1.i = select i1 %cmp210.i, i32 %63, i32 %tset_att.0.i
  %64 = ptrtoint ptr %tALS_min.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tALS_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %27)
  %cmp222.i = icmp ugt i32 %65, %27
  %sub226.i = sub i32 %65, %27
  %66 = tail call i32 @llvm.umax.i32(i32 %tset_att.1.i, i32 %sub226.i) #10
  %tset_att.2.i = select i1 %cmp222.i, i32 %66, i32 %tset_att.1.i
  %tRHW_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 26
  %67 = ptrtoint ptr %tRHW_min.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tRHW_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %thold_mem.2.i)
  %cmp233.i = icmp ugt i32 %68, %thold_mem.2.i
  %sub237.i = sub i32 %68, %thold_mem.2.i
  %69 = tail call i32 @llvm.umax.i32(i32 %tset_att.2.i, i32 %sub237.i) #10
  %tset_att.3.i = select i1 %cmp233.i, i32 %69, i32 %tset_att.2.i
  br i1 %cmp97.i, label %land.lhs.true246.i, label %if.end113.i.stm32_fmc2_nfc_timings_init.exit_crit_edge

if.end113.i.stm32_fmc2_nfc_timings_init.exit_crit_edge: ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_timings_init.exit

land.lhs.true246.i:                               ; preds = %if.end113.i
  %tDS_min247.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 18
  %70 = ptrtoint ptr %tDS_min247.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tDS_min247.i, align 8
  %sub248.i = sub i32 %27, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %sub248.i)
  %cmp249.i = icmp ugt i32 %71, %sub248.i
  br i1 %cmp249.i, label %land.lhs.true251.i, label %land.lhs.true246.i.stm32_fmc2_nfc_timings_init.exit_crit_edge

land.lhs.true246.i.stm32_fmc2_nfc_timings_init.exit_crit_edge: ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_timings_init.exit

land.lhs.true251.i:                               ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub254.i = sub i32 %71, %sub248.i
  %72 = tail call i32 @llvm.umax.i32(i32 %tset_att.3.i, i32 %sub254.i) #10
  br label %stm32_fmc2_nfc_timings_init.exit

stm32_fmc2_nfc_timings_init.exit:                 ; preds = %land.lhs.true251.i, %land.lhs.true246.i.stm32_fmc2_nfc_timings_init.exit_crit_edge, %if.end113.i.stm32_fmc2_nfc_timings_init.exit_crit_edge
  %tset_att.4.i = phi i32 [ %tset_att.3.i, %land.lhs.true246.i.stm32_fmc2_nfc_timings_init.exit_crit_edge ], [ %tset_att.3.i, %if.end113.i.stm32_fmc2_nfc_timings_init.exit_crit_edge ], [ %72, %land.lhs.true251.i ]
  %sub263.i = add i32 %tset_att.4.i, %add.i
  %div264.i = udiv i32 %sub263.i, %div3.i
  %73 = tail call i32 @llvm.umax.i32(i32 %div264.i, i32 1) #10
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 255) #10
  %conv279.i = trunc i32 %74 to i8
  %tset_att280.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 7
  %75 = ptrtoint ptr %tset_att280.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv279.i, ptr %tset_att280.i, align 1
  %tALH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 4
  %76 = ptrtoint ptr %tALH_min.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tALH_min.i, align 8
  %78 = tail call i32 @llvm.umax.i32(i32 %div3.i, i32 %77) #10
  %79 = ptrtoint ptr %tCH_min.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tCH_min.i, align 8
  %81 = tail call i32 @llvm.umax.i32(i32 %78, i32 %80) #10
  %tCLH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 12
  %82 = ptrtoint ptr %tCLH_min.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tCLH_min.i, align 8
  %84 = tail call i32 @llvm.umax.i32(i32 %81, i32 %83) #10
  %tCOH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 15
  %85 = ptrtoint ptr %tCOH_min.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tCOH_min.i, align 4
  %87 = tail call i32 @llvm.umax.i32(i32 %84, i32 %86) #10
  %tDH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 17
  %88 = ptrtoint ptr %tDH_min.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tDH_min.i, align 4
  %90 = tail call i32 @llvm.umax.i32(i32 %87, i32 %89) #10
  %tWB_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %91 = ptrtoint ptr %tWB_max.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tWB_max.i, align 8
  %add318.i = add i32 %92, 11000
  call void @__sanitizer_cov_trace_cmp4(i32 %add318.i, i32 %tset_mem.2.i)
  %cmp319.i = icmp ugt i32 %add318.i, %tset_mem.2.i
  %sub325.i = sub i32 %add318.i, %tset_mem.2.i
  %93 = tail call i32 @llvm.umax.i32(i32 %90, i32 %sub325.i) #10
  %thold_att.0.i = select i1 %cmp319.i, i32 %93, i32 %90
  %tADL_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %94 = ptrtoint ptr %tADL_min.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tADL_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %tset_mem.2.i)
  %cmp334.i = icmp ugt i32 %95, %tset_mem.2.i
  %sub338.i = sub i32 %95, %tset_mem.2.i
  %96 = tail call i32 @llvm.umax.i32(i32 %thold_att.0.i, i32 %sub338.i) #10
  %thold_att.1.i = select i1 %cmp334.i, i32 %96, i32 %thold_att.0.i
  %tWH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %97 = ptrtoint ptr %tWH_min.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tWH_min.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %tset_mem.2.i)
  %cmp345.i = icmp ugt i32 %98, %tset_mem.2.i
  %sub349.i = sub i32 %98, %tset_mem.2.i
  %99 = tail call i32 @llvm.umax.i32(i32 %thold_att.1.i, i32 %sub349.i) #10
  %thold_att.2.i = select i1 %cmp345.i, i32 %99, i32 %thold_att.1.i
  %tWHR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %100 = ptrtoint ptr %tWHR_min.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tWHR_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %tset_mem.2.i)
  %cmp356.i = icmp ugt i32 %101, %tset_mem.2.i
  %sub360.i = sub i32 %101, %tset_mem.2.i
  %102 = tail call i32 @llvm.umax.i32(i32 %thold_att.2.i, i32 %sub360.i) #10
  %thold_att.3.i = select i1 %cmp356.i, i32 %102, i32 %thold_att.2.i
  %103 = ptrtoint ptr %tRC_min.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tRC_min.i, align 8
  %add368.i = add i32 %tset_att.4.i, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %add368.i)
  %cmp369.i = icmp ugt i32 %104, %add368.i
  %sub374.i = sub i32 %104, %add368.i
  %105 = tail call i32 @llvm.umax.i32(i32 %thold_att.3.i, i32 %sub374.i) #10
  %thold_att.4.i = select i1 %cmp369.i, i32 %105, i32 %thold_att.3.i
  %106 = ptrtoint ptr %tWC_min.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tWC_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %add368.i)
  %cmp384.i = icmp ugt i32 %107, %add368.i
  %sub389.i = sub i32 %107, %add368.i
  %108 = tail call i32 @llvm.umax.i32(i32 %thold_att.4.i, i32 %sub389.i) #10
  %thold_att.5.i = select i1 %cmp384.i, i32 %108, i32 %thold_att.4.i
  %sub398.i = add i32 %thold_att.5.i, %add.i
  %div399.i = udiv i32 %sub398.i, %div3.i
  %109 = tail call i32 @llvm.umax.i32(i32 %div399.i, i32 1) #10
  %110 = tail call i32 @llvm.umin.i32(i32 %109, i32 255) #10
  %conv414.i = trunc i32 %110 to i8
  %thold_att415.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 6
  %111 = ptrtoint ptr %thold_att415.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv414.i, ptr %thold_att415.i, align 1
  %112 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %controller.i, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap.i, align 8
  %shl.i = shl nuw nsw i32 %16, 9
  %shl45.i = shl nuw nsw i32 %11, 13
  %or.i = or i32 %shl.i, %shl45.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 128, i32 noundef 130560, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %116 = ptrtoint ptr %tset_mem132.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tset_mem132.i, align 1
  %conv73.i = zext i8 %117 to i32
  %118 = ptrtoint ptr %twait77.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %twait77.i, align 1
  %conv101.i = zext i8 %119 to i32
  %shl102.i = shl nuw nsw i32 %conv101.i, 8
  %or104.i = or i32 %shl102.i, %conv73.i
  %120 = ptrtoint ptr %thold_mem197.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %thold_mem197.i, align 1
  %conv130.i = zext i8 %121 to i32
  %shl131.i = shl nuw nsw i32 %conv130.i, 16
  %or133.i = or i32 %or104.i, %shl131.i
  %122 = ptrtoint ptr %thiz33.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %thiz33.i, align 1
  %conv159.i = zext i8 %123 to i32
  %shl160.i = shl nuw i32 %conv159.i, 24
  %or162.i = or i32 %or133.i, %shl160.i
  %124 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap.i, align 8
  %call164.i = tail call i32 @regmap_write(ptr noundef %125, i32 noundef 136, i32 noundef %or162.i) #10
  %126 = ptrtoint ptr %tset_att280.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tset_att280.i, align 1
  %128 = ptrtoint ptr %twait77.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %twait77.i, align 1
  %130 = ptrtoint ptr %thold_att415.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %thold_att415.i, align 1
  %132 = ptrtoint ptr %thiz33.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %thiz33.i, align 1
  %conv219.i = zext i8 %129 to i32
  %shl220.i = shl nuw nsw i32 %conv219.i, 8
  %conv190.i = zext i8 %127 to i32
  %or222.i = or i32 %shl220.i, %conv190.i
  %conv248.i = zext i8 %131 to i32
  %shl249.i = shl nuw nsw i32 %conv248.i, 16
  %or251.i = or i32 %or222.i, %shl249.i
  %conv278.i = zext i8 %133 to i32
  %shl279.i = shl nuw i32 %conv278.i, 24
  %or281.i = or i32 %or251.i, %shl279.i
  %134 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap.i, align 8
  %call283.i = tail call i32 @regmap_write(ptr noundef %135, i32 noundef 140, i32 noundef %or281.i) #10
  br label %cleanup

cleanup:                                          ; preds = %stm32_fmc2_nfc_timings_init.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %stm32_fmc2_nfc_timings_init.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_fmc2_nfc_calc_ecc_bytes(i32 noundef %step_size, i32 noundef %strength) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %strength)
  %switch.selectcmp = icmp eq i32 %strength, 8
  %switch.select = select i1 %switch.selectcmp, i32 14, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %strength)
  %switch.selectcmp5 = icmp eq i32 %strength, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 4, i32 %switch.select
  ret i32 %switch.select6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_correct(ptr nocapture noundef %chip, ptr noundef %dat, ptr noundef %read_ecc, ptr nocapture noundef %calc_ecc) #2 align 64 {
entry:
  %pos.i = alloca [8 x i16], align 2
  %csqemsr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steps, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strength, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %ecc_buf = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ecc_buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csqemsr.i) #10
  %12 = ptrtoint ptr %csqemsr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %csqemsr.i, align 4, !annotation !175
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 560, ptr noundef nonnull %csqemsr.i) #10
  %15 = ptrtoint ptr %csqemsr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %csqemsr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csqemsr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp73 = icmp sgt i32 %5, 0
  br i1 %cmp73, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp6 = icmp eq i32 %7, 1
  %conv11 = and i32 %16, 65535
  %17 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 1
  %18 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 2
  %19 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 3
  %20 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 4
  %21 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 5
  %22 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 6
  %23 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 7
  %mul.i = shl i32 %9, 3
  %ecc_stats29 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %dat.addr.080 = phi ptr [ %dat, %for.body.lr.ph ], [ %add.ptr35, %if.end32.for.body_crit_edge ]
  %max_bitflips.079 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %if.end32.for.body_crit_edge ]
  %ecc_sta.077 = phi ptr [ %11, %for.body.lr.ph ], [ %add.ptr, %if.end32.for.body_crit_edge ]
  %s.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %if.end32.for.body_crit_edge ]
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %add34, %if.end32.for.body_crit_edge ]
  %shl = shl nuw i32 1, %s.075
  %and = and i32 %conv11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %if.then7

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ecc_sta.077 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ecc_sta.077, align 4
  %arrayidx = getelementptr i8, ptr %calc_ecc, i32 %i.074
  %conv.i70 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i70, ptr %arrayidx, align 1
  %shr.i = lshr i32 %25, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr i8, ptr %arrayidx, i32 1
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %25, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr i8, ptr %arrayidx, i32 2
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %arrayidx8 = getelementptr i8, ptr %read_ecc, i32 %i.074
  %call10 = call i32 @stm32_fmc2_nfc_ham_correct(ptr noundef %chip, ptr noundef %dat.addr.080, ptr noundef %arrayidx8, ptr noundef %arrayidx)
  br label %if.end18

if.else:                                          ; preds = %for.body
  br i1 %tobool.not, label %if.else.if.end18_crit_edge, label %if.then15

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.else
  %29 = ptrtoint ptr %ecc_sta.077 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ecc_sta.077, align 4
  %arrayidx1.i = getelementptr i32, ptr %ecc_sta.077, i32 1
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i71 = getelementptr i32, ptr %ecc_sta.077, i32 2
  %33 = ptrtoint ptr %arrayidx2.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i71, align 4
  %arrayidx3.i = getelementptr i32, ptr %ecc_sta.077, i32 3
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %ecc_sta.077, i32 4
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos.i) #10
  %and.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then15.stm32_fmc2_nfc_bch_decode.exit_crit_edge, label %if.end.i, !prof !176

if.then15.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

if.end.i:                                         ; preds = %if.then15
  %and8.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.end29.i, label %if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, !prof !176

if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

do.end29.i:                                       ; preds = %if.end.i
  %39 = trunc i32 %32 to i16
  %conv.i72 = and i16 %39, 8191
  %40 = ptrtoint ptr %pos.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i72, ptr %pos.i, align 2
  %and48.i = lshr i32 %32, 16
  %41 = trunc i32 %and48.i to i16
  %conv50.i = and i16 %41, 8191
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv50.i, ptr %17, align 2
  %43 = trunc i32 %34 to i16
  %conv70.i = and i16 %43, 8191
  %44 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv70.i, ptr %18, align 2
  %and88.i = lshr i32 %34, 16
  %45 = trunc i32 %and88.i to i16
  %conv90.i = and i16 %45, 8191
  %46 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv90.i, ptr %19, align 2
  %47 = trunc i32 %36 to i16
  %conv110.i = and i16 %47, 8191
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv110.i, ptr %20, align 2
  %and128.i = lshr i32 %36, 16
  %49 = trunc i32 %and128.i to i16
  %conv130.i = and i16 %49, 8191
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv130.i, ptr %21, align 2
  %51 = trunc i32 %38 to i16
  %conv150.i = and i16 %51, 8191
  %52 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv150.i, ptr %22, align 2
  %and168.i = lshr i32 %38, 16
  %53 = trunc i32 %and168.i to i16
  %conv170.i = and i16 %53, 8191
  %54 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv170.i, ptr %23, align 2
  %and188.i = lshr i32 %30, 4
  %shr189.i = and i32 %and188.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr189.i)
  %cmp222.not.i = icmp eq i32 %shr189.i, 0
  br i1 %cmp222.not.i, label %do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, label %do.end29.i.for.body.i_crit_edge

do.end29.i.for.body.i_crit_edge:                  ; preds = %do.end29.i
  br label %for.body.i

do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end29.i.for.body.i_crit_edge
  %i.0224.i = phi i32 [ %inc199.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end29.i.for.body.i_crit_edge ]
  %nb_errs.0223.i = phi i32 [ %nb_errs.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end29.i.for.body.i_crit_edge ]
  %arrayidx191.i = getelementptr [8 x i16], ptr %pos.i, i32 0, i32 %i.0224.i
  %55 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx191.i, align 2
  %conv192.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv192.i)
  %cmp193.i = icmp sgt i32 %mul.i, %conv192.i
  br i1 %cmp193.i, label %if.then195.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then195.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_change_bit(i32 noundef %conv192.i, ptr noundef %dat.addr.080) #10
  %inc.i = add i32 %nb_errs.0223.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then195.i, %for.body.i.for.inc.i_crit_edge
  %nb_errs.1.i = phi i32 [ %inc.i, %if.then195.i ], [ %nb_errs.0223.i, %for.body.i.for.inc.i_crit_edge ]
  %inc199.i = add nuw nsw i32 %i.0224.i, 1
  %exitcond.not.i = icmp eq i32 %inc199.i, %shr189.i
  br i1 %exitcond.not.i, label %for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

stm32_fmc2_nfc_bch_decode.exit:                   ; preds = %for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, %do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, %if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, %if.then15.stm32_fmc2_nfc_bch_decode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then15.stm32_fmc2_nfc_bch_decode.exit_crit_edge ], [ -74, %if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge ], [ 0, %do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge ], [ %nb_errs.1.i, %for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i) #10
  br label %if.end18

if.end18:                                         ; preds = %stm32_fmc2_nfc_bch_decode.exit, %if.else.if.end18_crit_edge, %if.then7, %if.then.if.end18_crit_edge
  %.sink = phi i32 [ 1, %if.then7 ], [ 1, %if.then.if.end18_crit_edge ], [ 5, %stm32_fmc2_nfc_bch_decode.exit ], [ 5, %if.else.if.end18_crit_edge ]
  %stat.2 = phi i32 [ %call10, %if.then7 ], [ 0, %if.then.if.end18_crit_edge ], [ %retval.0.i, %stm32_fmc2_nfc_bch_decode.exit ], [ 0, %if.else.if.end18_crit_edge ]
  %add.ptr = getelementptr i32, ptr %ecc_sta.077, i32 %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %stat.2)
  %cmp19 = icmp eq i32 %stat.2, -74
  br i1 %cmp19, label %if.then21, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22 = getelementptr i8, ptr %read_ecc, i32 %i.074
  %call23 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %dat.addr.080, i32 noundef %9, ptr noundef %arrayidx22, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef %7) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %stat.3 = phi i32 [ %call23, %if.then21 ], [ %stat.2, %if.end18.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.3)
  %cmp25 = icmp slt i32 %stat.3, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %failed, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end32

if.else28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %ecc_stats29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ecc_stats29, align 4
  %add = add i32 %60, %stat.3
  store i32 %add, ptr %ecc_stats29, align 4
  %61 = call i32 @llvm.umax.i32(i32 %max_bitflips.079, i32 %stat.3)
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then27
  %max_bitflips.1 = phi i32 [ %max_bitflips.079, %if.then27 ], [ %61, %if.else28 ]
  %inc33 = add nuw nsw i32 %s.075, 1
  %add34 = add i32 %i.074, %3
  %add.ptr35 = getelementptr i8, ptr %dat.addr.080, i32 %9
  %exitcond.not = icmp eq i32 %inc33, %5
  br i1 %exitcond.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %entry.for.end_crit_edge
  %max_bitflips.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %max_bitflips.1, %if.end32.for.end_crit_edge ]
  ret i32 %max_bitflips.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %call = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %chip, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %chip, i32 noundef %page, i32 noundef 0, i1 noundef zeroext true) #10
  %call1.i = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %chip, ptr noundef %buf, i32 noundef 0, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool2.not.i = icmp eq i32 %oob_required, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize.i, align 4
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize.i, align 4
  %call4.i = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %3, ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call9.i, %if.end8.i ], [ %call1.i, %if.end.cleanup_crit_edge ], [ %call4.i, %if.then3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %csqemsr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %calc_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 11
  %2 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %calc_buf, align 4
  %code_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 12
  %4 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %code_buf, align 8
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %6 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_cs, align 4
  %call3 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %chip, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %chip, i32 noundef %page, i32 noundef 0, i1 noundef zeroext false)
  %call4 = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %chip, ptr noundef %buf, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csqemsr.i) #10
  %8 = ptrtoint ptr %csqemsr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %csqemsr.i, align 4, !annotation !175
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 560, ptr noundef nonnull %csqemsr.i) #10
  %11 = ptrtoint ptr %csqemsr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %csqemsr.i, align 4
  %conv.i = trunc i32 %12 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csqemsr.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool9.not = icmp eq i16 %conv.i, 0
  br i1 %tobool9.not, label %if.then13, label %if.end18, !prof !176

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool14.not = icmp eq i32 %oob_required, 0
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %if.then15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %15 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobsize, align 4
  %call16 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %14, ptr noundef %16, i32 noundef %18, i1 noundef zeroext false) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %writesize19 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %19 = ptrtoint ptr %writesize19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %writesize19, align 4
  %oob_poi20 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %21 = ptrtoint ptr %oob_poi20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %oob_poi20, align 4
  %oobsize21 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %23 = ptrtoint ptr %oobsize21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobsize21, align 4
  %call22 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %20, ptr noundef %22, i32 noundef %24, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %oob_poi20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oob_poi20, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 6
  %27 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total, align 8
  %call28 = call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %chip, ptr noundef %5, ptr noundef %26, i32 noundef 0, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %29 = ptrtoint ptr %correct to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %correct, align 4
  %call33 = call i32 %30(ptr noundef %chip, ptr noundef %buf, ptr noundef %5, ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then15, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ %call33, %if.end31 ], [ %call3, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ %call22, %if.end18.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %call = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %chip, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %chip, i32 noundef %page, i32 noundef 1, i1 noundef zeroext true) #10
  %call1.i = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %chip, ptr noundef %buf, i32 noundef 1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool2.not.i = icmp eq i32 %oob_required, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize.i, align 4
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize.i, align 4
  %call4.i = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %3, ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call9.i, %if.end8.i ], [ %call1.i, %if.end.cleanup_crit_edge ], [ %call4.i, %if.then3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_seq_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %call1 = tail call fastcc i32 @stm32_fmc2_nfc_select_chip(ptr noundef %chip, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @stm32_fmc2_nfc_rw_page_init(ptr noundef %chip, i32 noundef %page, i32 noundef 1, i1 noundef zeroext false)
  %call2 = tail call fastcc i32 @stm32_fmc2_nfc_xfer(ptr noundef %chip, ptr noundef %buf, i32 noundef 1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool6.not = icmp eq i32 %oob_required, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  %call8 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %3, ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_fmc2_nfc_hwctl(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp1 = icmp eq i32 %mode, 1
  %cond = select i1 %cmp1, i32 33554432, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 128, i32 noundef 33554432, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %complete, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 8
  %call.i11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 600, i32 noundef 31) #10
  %irq_state.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %irq_state.i, align 4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  br i1 %cmp1, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 592, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 592, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 8
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 128, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ham_calculate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %ecc) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  %heccr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #10
  %2 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sr, align 4, !annotation !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %heccr) #10
  %3 = ptrtoint ptr %heccr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %heccr, align 4, !annotation !175
  %call1 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call1, 5000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 499) #10
  %regmap = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call969 = call i32 @regmap_read(ptr noundef %5, i32 noundef 132, ptr noundef nonnull %sr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call969)
  %tobool.not70 = icmp eq i32 %call969, 0
  br i1 %tobool.not70, label %entry.lor.lhs.false_crit_edge, label %entry.do.end34_crit_edge

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call9 = call i32 @regmap_read(ptr noundef %9, i32 noundef 132, ptr noundef nonnull %sr) #10
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.do.end34_crit_edge

if.then22.do.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call19 = call i32 @regmap_read(ptr noundef %11, i32 noundef 132, ptr noundef nonnull %sr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end34_crit_edge

for.end.do.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %12 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sr, align 4
  %and25 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.rhs.do.end34_crit_edge, label %if.end35

lor.rhs.do.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end34:                                         ; preds = %lor.rhs.do.end34_crit_edge, %for.end.do.end34_crit_edge, %if.then22.do.end34_crit_edge, %entry.do.end34_crit_edge
  %tobool24.not56.ph = phi i32 [ %call969, %entry.do.end34_crit_edge ], [ %call19, %for.end.do.end34_crit_edge ], [ -110, %lor.rhs.do.end34_crit_edge ], [ %call9, %if.then22.do.end34_crit_edge ]
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end35:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call37 = call i32 @regmap_read(ptr noundef %17, i32 noundef 148, ptr noundef nonnull %heccr) #10
  %18 = ptrtoint ptr %heccr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %heccr, align 4
  %conv.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %ecc to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %ecc, align 1
  %shr.i = lshr i32 %19, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr i8, ptr %ecc, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %19, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr i8, ptr %ecc, i32 2
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end34
  %tobool24.not5674 = phi i32 [ 0, %if.end35 ], [ %tobool24.not56.ph, %do.end34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %heccr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #10
  ret i32 %tobool24.not5674
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ham_correct(ptr nocapture noundef readnone %chip, ptr nocapture noundef %dat, ptr nocapture noundef readonly %read_ecc, ptr nocapture noundef readonly %calc_ecc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %read_ecc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_ecc, align 1
  %2 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %calc_ecc, align 1
  %xor71 = xor i8 %3, %1
  %arrayidx4 = getelementptr i8, ptr %read_ecc, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr i8, ptr %calc_ecc, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %xor872 = xor i8 %7, %5
  %arrayidx10 = getelementptr i8, ptr %read_ecc, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr i8, ptr %calc_ecc, i32 2
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %xor1473 = xor i8 %11, %9
  %conv16 = zext i8 %xor71 to i32
  %conv17 = zext i8 %xor872 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %or = or i32 %shl, %conv16
  %conv18 = zext i8 %xor1473 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %shl19, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or20)
  %tobool.not = icmp eq i32 %or20, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader, !prof !176

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %rem = and i32 %conv16, 3
  %12 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %rem, label %for.body.preheader.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %for.body.preheader.sw.epilog_crit_edge
  ]

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.preheader.sw.epilog_crit_edge
  %bit_position.1 = phi i8 [ 0, %for.body.preheader.sw.epilog_crit_edge ], [ 1, %sw.bb ]
  %shr = lshr i32 %conv16, 2
  %rem.1 = and i32 %shr, 3
  %13 = zext i32 %rem.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %rem.1, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.bb.1
    i32 1, label %sw.epilog.sw.epilog.1_crit_edge
  ]

sw.epilog.sw.epilog.1_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.1

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.1:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.1 = or i8 %bit_position.1, 2
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %sw.epilog.sw.epilog.1_crit_edge
  %bit_position.1.1 = phi i8 [ %bit_position.1, %sw.epilog.sw.epilog.1_crit_edge ], [ %conv26.1, %sw.bb.1 ]
  %shr.1 = lshr i32 %conv16, 4
  %rem.2 = and i32 %shr.1, 3
  %14 = zext i32 %rem.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %rem.2, label %sw.epilog.1.cleanup_crit_edge [
    i32 2, label %sw.bb.2
    i32 1, label %sw.epilog.1.sw.epilog.2_crit_edge
  ]

sw.epilog.1.sw.epilog.2_crit_edge:                ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.2

sw.epilog.1.cleanup_crit_edge:                    ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.2:                                          ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #12
  %conv26.2 = add nsw i8 %bit_position.1.1, 4
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb.2, %sw.epilog.1.sw.epilog.2_crit_edge
  %bit_position.1.2 = phi i8 [ %bit_position.1.1, %sw.epilog.1.sw.epilog.2_crit_edge ], [ %conv26.2, %sw.bb.2 ]
  %shr.2 = lshr i32 %conv16, 6
  %15 = zext i32 %shr.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %shr.2, label %sw.epilog.2.cleanup_crit_edge [
    i32 2, label %sw.bb33
    i32 1, label %sw.epilog.2.sw.epilog36_crit_edge
  ]

sw.epilog.2.sw.epilog36_crit_edge:                ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36

sw.epilog.2.cleanup_crit_edge:                    ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33:                                          ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb33, %sw.epilog.2.sw.epilog36_crit_edge
  %byte_addr.1 = phi i32 [ 0, %sw.epilog.2.sw.epilog36_crit_edge ], [ 1, %sw.bb33 ]
  %rem32.1 = and i32 %conv17, 3
  %16 = zext i32 %rem32.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %rem32.1, label %sw.epilog36.cleanup_crit_edge [
    i32 2, label %sw.bb33.1
    i32 1, label %sw.epilog36.sw.epilog36.1_crit_edge
  ]

sw.epilog36.sw.epilog36.1_crit_edge:              ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.1

sw.epilog36.cleanup_crit_edge:                    ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.1:                                        ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #12
  %add34.1 = or i32 %byte_addr.1, 2
  br label %sw.epilog36.1

sw.epilog36.1:                                    ; preds = %sw.bb33.1, %sw.epilog36.sw.epilog36.1_crit_edge
  %byte_addr.1.1 = phi i32 [ %byte_addr.1, %sw.epilog36.sw.epilog36.1_crit_edge ], [ %add34.1, %sw.bb33.1 ]
  %shr38.1 = lshr i32 %conv17, 2
  %rem32.2 = and i32 %shr38.1, 3
  %17 = zext i32 %rem32.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %rem32.2, label %sw.epilog36.1.cleanup_crit_edge [
    i32 2, label %sw.bb33.2
    i32 1, label %sw.epilog36.1.sw.epilog36.2_crit_edge
  ]

sw.epilog36.1.sw.epilog36.2_crit_edge:            ; preds = %sw.epilog36.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.2

sw.epilog36.1.cleanup_crit_edge:                  ; preds = %sw.epilog36.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.2:                                        ; preds = %sw.epilog36.1
  call void @__sanitizer_cov_trace_pc() #12
  %add34.2 = add nsw i32 %byte_addr.1.1, 4
  br label %sw.epilog36.2

sw.epilog36.2:                                    ; preds = %sw.bb33.2, %sw.epilog36.1.sw.epilog36.2_crit_edge
  %byte_addr.1.2 = phi i32 [ %byte_addr.1.1, %sw.epilog36.1.sw.epilog36.2_crit_edge ], [ %add34.2, %sw.bb33.2 ]
  %shr38.2 = lshr i32 %conv17, 4
  %rem32.3 = and i32 %shr38.2, 3
  %18 = zext i32 %rem32.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %rem32.3, label %sw.epilog36.2.cleanup_crit_edge [
    i32 2, label %sw.bb33.3
    i32 1, label %sw.epilog36.2.sw.epilog36.3_crit_edge
  ]

sw.epilog36.2.sw.epilog36.3_crit_edge:            ; preds = %sw.epilog36.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.3

sw.epilog36.2.cleanup_crit_edge:                  ; preds = %sw.epilog36.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.3:                                        ; preds = %sw.epilog36.2
  call void @__sanitizer_cov_trace_pc() #12
  %add34.3 = add nsw i32 %byte_addr.1.2, 8
  br label %sw.epilog36.3

sw.epilog36.3:                                    ; preds = %sw.bb33.3, %sw.epilog36.2.sw.epilog36.3_crit_edge
  %byte_addr.1.3 = phi i32 [ %byte_addr.1.2, %sw.epilog36.2.sw.epilog36.3_crit_edge ], [ %add34.3, %sw.bb33.3 ]
  %shr38.3 = lshr i32 %conv17, 6
  %19 = zext i32 %shr38.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %shr38.3, label %sw.epilog36.3.cleanup_crit_edge [
    i32 2, label %sw.bb33.4
    i32 1, label %sw.epilog36.3.sw.epilog36.4_crit_edge
  ]

sw.epilog36.3.sw.epilog36.4_crit_edge:            ; preds = %sw.epilog36.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.4

sw.epilog36.3.cleanup_crit_edge:                  ; preds = %sw.epilog36.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.4:                                        ; preds = %sw.epilog36.3
  call void @__sanitizer_cov_trace_pc() #12
  %add34.4 = add i32 %byte_addr.1.3, 16
  br label %sw.epilog36.4

sw.epilog36.4:                                    ; preds = %sw.bb33.4, %sw.epilog36.3.sw.epilog36.4_crit_edge
  %byte_addr.1.4 = phi i32 [ %byte_addr.1.3, %sw.epilog36.3.sw.epilog36.4_crit_edge ], [ %add34.4, %sw.bb33.4 ]
  %rem32.5 = and i32 %conv18, 3
  %20 = zext i32 %rem32.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %rem32.5, label %sw.epilog36.4.cleanup_crit_edge [
    i32 2, label %sw.bb33.5
    i32 1, label %sw.epilog36.4.sw.epilog36.5_crit_edge
  ]

sw.epilog36.4.sw.epilog36.5_crit_edge:            ; preds = %sw.epilog36.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.5

sw.epilog36.4.cleanup_crit_edge:                  ; preds = %sw.epilog36.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.5:                                        ; preds = %sw.epilog36.4
  call void @__sanitizer_cov_trace_pc() #12
  %add34.5 = add i32 %byte_addr.1.4, 32
  br label %sw.epilog36.5

sw.epilog36.5:                                    ; preds = %sw.bb33.5, %sw.epilog36.4.sw.epilog36.5_crit_edge
  %byte_addr.1.5 = phi i32 [ %byte_addr.1.4, %sw.epilog36.4.sw.epilog36.5_crit_edge ], [ %add34.5, %sw.bb33.5 ]
  %shr38.5 = lshr i32 %conv18, 2
  %rem32.6 = and i32 %shr38.5, 3
  %21 = zext i32 %rem32.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %rem32.6, label %sw.epilog36.5.cleanup_crit_edge [
    i32 2, label %sw.bb33.6
    i32 1, label %sw.epilog36.5.sw.epilog36.6_crit_edge
  ]

sw.epilog36.5.sw.epilog36.6_crit_edge:            ; preds = %sw.epilog36.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.6

sw.epilog36.5.cleanup_crit_edge:                  ; preds = %sw.epilog36.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.6:                                        ; preds = %sw.epilog36.5
  call void @__sanitizer_cov_trace_pc() #12
  %add34.6 = add i32 %byte_addr.1.5, 64
  br label %sw.epilog36.6

sw.epilog36.6:                                    ; preds = %sw.bb33.6, %sw.epilog36.5.sw.epilog36.6_crit_edge
  %byte_addr.1.6 = phi i32 [ %byte_addr.1.5, %sw.epilog36.5.sw.epilog36.6_crit_edge ], [ %add34.6, %sw.bb33.6 ]
  %shr38.6 = lshr i32 %conv18, 4
  %rem32.7 = and i32 %shr38.6, 3
  %22 = zext i32 %rem32.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %rem32.7, label %sw.epilog36.6.cleanup_crit_edge [
    i32 2, label %sw.bb33.7
    i32 1, label %sw.epilog36.6.sw.epilog36.7_crit_edge
  ]

sw.epilog36.6.sw.epilog36.7_crit_edge:            ; preds = %sw.epilog36.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.7

sw.epilog36.6.cleanup_crit_edge:                  ; preds = %sw.epilog36.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.7:                                        ; preds = %sw.epilog36.6
  call void @__sanitizer_cov_trace_pc() #12
  %add34.7 = add i32 %byte_addr.1.6, 128
  br label %sw.epilog36.7

sw.epilog36.7:                                    ; preds = %sw.bb33.7, %sw.epilog36.6.sw.epilog36.7_crit_edge
  %byte_addr.1.7 = phi i32 [ %byte_addr.1.6, %sw.epilog36.6.sw.epilog36.7_crit_edge ], [ %add34.7, %sw.bb33.7 ]
  %shr38.7 = lshr i32 %conv18, 6
  %23 = zext i32 %shr38.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %shr38.7, label %sw.epilog36.7.cleanup_crit_edge [
    i32 2, label %sw.bb33.8
    i32 1, label %sw.epilog36.7.sw.epilog36.8_crit_edge
  ]

sw.epilog36.7.sw.epilog36.8_crit_edge:            ; preds = %sw.epilog36.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36.8

sw.epilog36.7.cleanup_crit_edge:                  ; preds = %sw.epilog36.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb33.8:                                        ; preds = %sw.epilog36.7
  call void @__sanitizer_cov_trace_pc() #12
  %add34.8 = add i32 %byte_addr.1.7, 256
  br label %sw.epilog36.8

sw.epilog36.8:                                    ; preds = %sw.bb33.8, %sw.epilog36.7.sw.epilog36.8_crit_edge
  %byte_addr.1.8 = phi i32 [ %byte_addr.1.7, %sw.epilog36.7.sw.epilog36.8_crit_edge ], [ %add34.8, %sw.bb33.8 ]
  %conv42 = zext i8 %bit_position.1.2 to i32
  %shl43 = shl nuw i32 1, %conv42
  %arrayidx44 = getelementptr i8, ptr %dat, i32 %byte_addr.1.8
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx44, align 1
  %26 = trunc i32 %shl43 to i8
  %conv47 = xor i8 %25, %26
  store i8 %conv47, ptr %arrayidx44, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog36.8, %sw.epilog36.7.cleanup_crit_edge, %sw.epilog36.6.cleanup_crit_edge, %sw.epilog36.5.cleanup_crit_edge, %sw.epilog36.4.cleanup_crit_edge, %sw.epilog36.3.cleanup_crit_edge, %sw.epilog36.2.cleanup_crit_edge, %sw.epilog36.1.cleanup_crit_edge, %sw.epilog36.cleanup_crit_edge, %sw.epilog.2.cleanup_crit_edge, %sw.epilog.1.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog36.8 ], [ 0, %entry.cleanup_crit_edge ], [ -74, %sw.epilog36.7.cleanup_crit_edge ], [ -74, %sw.epilog36.6.cleanup_crit_edge ], [ -74, %sw.epilog36.5.cleanup_crit_edge ], [ -74, %sw.epilog36.4.cleanup_crit_edge ], [ -74, %sw.epilog36.3.cleanup_crit_edge ], [ -74, %sw.epilog36.2.cleanup_crit_edge ], [ -74, %sw.epilog36.1.cleanup_crit_edge ], [ -74, %sw.epilog36.cleanup_crit_edge ], [ -74, %sw.epilog.2.cleanup_crit_edge ], [ -74, %sw.epilog.1.cleanup_crit_edge ], [ -74, %sw.epilog.cleanup_crit_edge ], [ -74, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_bch_calculate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %ecc) #2 align 64 {
entry:
  %bchpbr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bchpbr) #10
  %2 = ptrtoint ptr %bchpbr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bchpbr, align 4, !annotation !175
  %complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.36) #13
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 592, i32 noundef 18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %irq_state.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %irq_state.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_read(ptr noundef %9, i32 noundef 608, ptr noundef nonnull %bchpbr) #10
  %10 = ptrtoint ptr %bchpbr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bchpbr, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %ecc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %ecc, align 1
  %shr = lshr i32 %11, 8
  %conv4 = trunc i32 %shr to i8
  %arrayidx5 = getelementptr i8, ptr %ecc, i32 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %arrayidx5, align 1
  %shr6 = lshr i32 %11, 16
  %conv7 = trunc i32 %shr6 to i8
  %arrayidx8 = getelementptr i8, ptr %ecc, i32 2
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %arrayidx8, align 1
  %shr9 = lshr i32 %11, 24
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr i8, ptr %ecc, i32 3
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %arrayidx11, align 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call13 = call i32 @regmap_read(ptr noundef %17, i32 noundef 612, ptr noundef nonnull %bchpbr) #10
  %18 = ptrtoint ptr %bchpbr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bchpbr, align 4
  %conv14 = trunc i32 %19 to i8
  %arrayidx15 = getelementptr i8, ptr %ecc, i32 4
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv14, ptr %arrayidx15, align 1
  %shr16 = lshr i32 %19, 8
  %conv17 = trunc i32 %shr16 to i8
  %arrayidx18 = getelementptr i8, ptr %ecc, i32 5
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %arrayidx18, align 1
  %shr19 = lshr i32 %19, 16
  %conv20 = trunc i32 %shr19 to i8
  %arrayidx21 = getelementptr i8, ptr %ecc, i32 6
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv20, ptr %arrayidx21, align 1
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %23 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp = icmp eq i32 %24, 8
  br i1 %cmp, label %if.then24, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr25 = lshr i32 %19, 24
  %conv26 = trunc i32 %shr25 to i8
  %arrayidx27 = getelementptr i8, ptr %ecc, i32 7
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv26, ptr %arrayidx27, align 1
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 8
  %call29 = call i32 @regmap_read(ptr noundef %27, i32 noundef 616, ptr noundef nonnull %bchpbr) #10
  %28 = ptrtoint ptr %bchpbr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bchpbr, align 4
  %conv30 = trunc i32 %29 to i8
  %arrayidx31 = getelementptr i8, ptr %ecc, i32 8
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv30, ptr %arrayidx31, align 1
  %shr32 = lshr i32 %29, 8
  %conv33 = trunc i32 %shr32 to i8
  %arrayidx34 = getelementptr i8, ptr %ecc, i32 9
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv33, ptr %arrayidx34, align 1
  %shr35 = lshr i32 %29, 16
  %conv36 = trunc i32 %shr35 to i8
  %arrayidx37 = getelementptr i8, ptr %ecc, i32 10
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv36, ptr %arrayidx37, align 1
  %shr38 = lshr i32 %29, 24
  %conv39 = trunc i32 %shr38 to i8
  %arrayidx40 = getelementptr i8, ptr %ecc, i32 11
  %33 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv39, ptr %arrayidx40, align 1
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 8
  %call42 = call i32 @regmap_read(ptr noundef %35, i32 noundef 620, ptr noundef nonnull %bchpbr) #10
  %36 = ptrtoint ptr %bchpbr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bchpbr, align 4
  %conv43 = trunc i32 %37 to i8
  %arrayidx44 = getelementptr i8, ptr %ecc, i32 12
  %38 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv43, ptr %arrayidx44, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then24, %if.end.if.end45_crit_edge
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 8
  %call.i.i68 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -110, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bchpbr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_bch_correct(ptr nocapture noundef readonly %chip, ptr noundef %dat, ptr nocapture noundef readnone %read_ecc, ptr nocapture noundef readnone %calc_ecc) #2 align 64 {
entry:
  %pos.i = alloca [8 x i16], align 2
  %ecc_sta = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ecc_sta) #10
  %complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 19
  %2 = call ptr @memset(ptr %ecc_sta, i32 255, i32 20)
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.36) #13
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 592, i32 noundef 18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %irq_state.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %irq_state.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds [5 x i32], ptr %ecc_sta, i32 0, i32 4
  %9 = getelementptr inbounds [5 x i32], ptr %ecc_sta, i32 0, i32 3
  %10 = getelementptr inbounds [5 x i32], ptr %ecc_sta, i32 0, i32 2
  %11 = getelementptr inbounds [5 x i32], ptr %ecc_sta, i32 0, i32 1
  %regmap = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 636, ptr noundef nonnull %ecc_sta, i32 noundef 5) #10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %call.i.i13 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 128, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %18 = ptrtoint ptr %ecc_sta to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc_sta, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos.i) #10
  %28 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 1
  %29 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 2
  %30 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 3
  %31 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 4
  %32 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 5
  %33 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 6
  %34 = getelementptr inbounds [8 x i16], ptr %pos.i, i32 0, i32 7
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.stm32_fmc2_nfc_bch_decode.exit_crit_edge, label %if.end.i, !prof !176

if.end.stm32_fmc2_nfc_bch_decode.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

if.end.i:                                         ; preds = %if.end
  %and8.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.end29.i, label %if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, !prof !176

if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

do.end29.i:                                       ; preds = %if.end.i
  %35 = trunc i32 %21 to i16
  %conv.i = and i16 %35, 8191
  %36 = ptrtoint ptr %pos.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %pos.i, align 2
  %and48.i = lshr i32 %21, 16
  %37 = trunc i32 %and48.i to i16
  %conv50.i = and i16 %37, 8191
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv50.i, ptr %28, align 2
  %39 = trunc i32 %23 to i16
  %conv70.i = and i16 %39, 8191
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv70.i, ptr %29, align 2
  %and88.i = lshr i32 %23, 16
  %41 = trunc i32 %and88.i to i16
  %conv90.i = and i16 %41, 8191
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv90.i, ptr %30, align 2
  %43 = trunc i32 %25 to i16
  %conv110.i = and i16 %43, 8191
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv110.i, ptr %31, align 2
  %and128.i = lshr i32 %25, 16
  %45 = trunc i32 %and128.i to i16
  %conv130.i = and i16 %45, 8191
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv130.i, ptr %32, align 2
  %47 = trunc i32 %27 to i16
  %conv150.i = and i16 %47, 8191
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv150.i, ptr %33, align 2
  %and168.i = lshr i32 %27, 16
  %49 = trunc i32 %and168.i to i16
  %conv170.i = and i16 %49, 8191
  %50 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv170.i, ptr %34, align 2
  %and188.i = lshr i32 %19, 4
  %shr189.i = and i32 %and188.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr189.i)
  %cmp222.not.i = icmp eq i32 %shr189.i, 0
  br i1 %cmp222.not.i, label %do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, label %for.body.lr.ph.i

do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

for.body.lr.ph.i:                                 ; preds = %do.end29.i
  %mul.i = shl i32 %17, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0224.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc199.i, %for.inc.i.for.body.i_crit_edge ]
  %nb_errs.0223.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nb_errs.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx191.i = getelementptr [8 x i16], ptr %pos.i, i32 0, i32 %i.0224.i
  %51 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx191.i, align 2
  %conv192.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv192.i)
  %cmp193.i = icmp sgt i32 %mul.i, %conv192.i
  br i1 %cmp193.i, label %if.then195.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then195.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_change_bit(i32 noundef %conv192.i, ptr noundef %dat) #10
  %inc.i = add i32 %nb_errs.0223.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then195.i, %for.body.i.for.inc.i_crit_edge
  %nb_errs.1.i = phi i32 [ %inc.i, %if.then195.i ], [ %nb_errs.0223.i, %for.body.i.for.inc.i_crit_edge ]
  %inc199.i = add nuw nsw i32 %i.0224.i, 1
  %exitcond.not.i = icmp eq i32 %inc199.i, %shr189.i
  br i1 %exitcond.not.i, label %for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_fmc2_nfc_bch_decode.exit

stm32_fmc2_nfc_bch_decode.exit:                   ; preds = %for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, %do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, %if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge, %if.end.stm32_fmc2_nfc_bch_decode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.stm32_fmc2_nfc_bch_decode.exit_crit_edge ], [ -74, %if.end.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge ], [ 0, %do.end29.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge ], [ %nb_errs.1.i, %for.inc.i.stm32_fmc2_nfc_bch_decode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos.i) #10
  br label %cleanup

cleanup:                                          ; preds = %stm32_fmc2_nfc_bch_decode.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %stm32_fmc2_nfc_bch_decode.exit ], [ -110, %do.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ecc_sta) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strength, align 4
  %calc_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 11
  %8 = ptrtoint ptr %calc_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calc_buf, align 4
  %code_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 12
  %10 = ptrtoint ptr %code_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %code_buf, align 8
  %call6 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp96 = icmp sgt i32 %5, 0
  br i1 %cmp96, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  %add = add i32 %13, 2
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %ecc_stats24 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %max_bitflips.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %for.inc.for.body_crit_edge ]
  %p.099 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %s.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.inc.for.body_crit_edge ]
  %i.097 = phi i32 [ %add, %for.body.lr.ph ], [ %add29, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %hwctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwctl, align 4
  tail call void %15(ptr noundef %chip, i32 noundef 0) #10
  %mul = mul i32 %s.098, %1
  %call8 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul, ptr noundef %p.099, i32 noundef %1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %call12 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %i.097, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %correct to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %correct, align 4
  %call17 = tail call i32 %17(ptr noundef %chip, ptr noundef %p.099, ptr noundef %11, ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -74
  br i1 %cmp18, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %p.099, i32 noundef %1, ptr noundef %11, i32 noundef %3, ptr noundef null, i32 noundef 0, i32 noundef %7) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %stat.0 = phi i32 [ %call20, %if.then19 ], [ %call17, %if.end15.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.0)
  %cmp22 = icmp slt i32 %stat.0, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %failed, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %failed, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ecc_stats24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ecc_stats24, align 4
  %add25 = add i32 %21, %stat.0
  store i32 %add25, ptr %ecc_stats24, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0100, i32 %stat.0)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then23
  %max_bitflips.1 = phi i32 [ %max_bitflips.0100, %if.then23 ], [ %22, %if.else ]
  %inc28 = add nuw nsw i32 %s.098, 1
  %add29 = add i32 %i.097, %3
  %add.ptr = getelementptr i8, ptr %p.099, i32 %1
  %exitcond.not = icmp eq i32 %inc28, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %max_bitflips.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %max_bitflips.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool30.not = icmp eq i32 %oob_required, 0
  br i1 %tobool30.not, label %for.end.if.end37_crit_edge, label %if.then31

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then31:                                        ; preds = %for.end
  %23 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %25 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %27 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oobsize, align 4
  %call33 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %24, ptr noundef %26, i32 noundef %28, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %for.end.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then31.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %max_bitflips.0.lcssa, %if.end37 ], [ %call6, %entry.cleanup_crit_edge ], [ %call33, %if.then31.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_fmc2_nfc_select_chip(ptr nocapture noundef readonly %chip, i32 noundef %chipnr) unnamed_addr #2 align 64 {
entry:
  %dma_cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_cfg) #10
  %arrayidx = getelementptr %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 3, i32 %chipnr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %cs_sel = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %cs_sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs_sel, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %cs_sel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %cs_sel, align 8
  %7 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller, align 4
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %9 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %switch.selectcmp.i = icmp eq i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %switch.selectcmp55.i = icmp eq i32 %10, 8
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %11 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options.i, align 8
  %and.i = shl i32 %12, 3
  %13 = and i32 %and.i, 16
  %switch.select.op.i = select i1 %switch.selectcmp.i, i32 131328, i32 131072
  %14 = select i1 %switch.selectcmp55.i, i32 16908544, i32 %switch.select.op.i
  %or42.i = or i32 %14, %13
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 128, i32 noundef 17695024, i32 noundef %or42.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controller, align 4
  %timings2.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1
  %regmap.i79 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i79, align 8
  %21 = ptrtoint ptr %timings2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %timings2.i, align 1
  %tar.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %tar.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tar.i, align 1
  %conv17.i = zext i8 %22 to i32
  %shl.i = shl nuw nsw i32 %conv17.i, 9
  %and18.i = and i32 %shl.i, 7680
  %conv44.i = zext i8 %24 to i32
  %shl45.i = shl nuw nsw i32 %conv44.i, 13
  %and46.i = and i32 %shl45.i, 122880
  %or.i = or i32 %and46.i, %and18.i
  %call.i.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 128, i32 noundef 130560, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %tset_mem.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %tset_mem.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tset_mem.i, align 1
  %conv73.i = zext i8 %26 to i32
  %twait.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %twait.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %twait.i, align 1
  %conv101.i = zext i8 %28 to i32
  %shl102.i = shl nuw nsw i32 %conv101.i, 8
  %or104.i = or i32 %shl102.i, %conv73.i
  %thold_mem.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %thold_mem.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %thold_mem.i, align 1
  %conv130.i = zext i8 %30 to i32
  %shl131.i = shl nuw nsw i32 %conv130.i, 16
  %or133.i = or i32 %or104.i, %shl131.i
  %thiz.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %thiz.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %thiz.i, align 1
  %conv159.i = zext i8 %32 to i32
  %shl160.i = shl nuw i32 %conv159.i, 24
  %or162.i = or i32 %or133.i, %shl160.i
  %33 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i79, align 8
  %call164.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 136, i32 noundef %or162.i) #10
  %tset_att.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %tset_att.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tset_att.i, align 1
  %37 = ptrtoint ptr %twait.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %twait.i, align 1
  %thold_att.i = getelementptr inbounds %struct.stm32_fmc2_nand, ptr %chip, i32 0, i32 1, i32 6
  %39 = ptrtoint ptr %thold_att.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %thold_att.i, align 1
  %41 = ptrtoint ptr %thiz.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %thiz.i, align 1
  %conv219.i = zext i8 %38 to i32
  %shl220.i = shl nuw nsw i32 %conv219.i, 8
  %conv190.i = zext i8 %36 to i32
  %or222.i = or i32 %shl220.i, %conv190.i
  %conv248.i = zext i8 %40 to i32
  %shl249.i = shl nuw nsw i32 %conv248.i, 16
  %or251.i = or i32 %or222.i, %shl249.i
  %conv278.i = zext i8 %42 to i32
  %shl279.i = shl nuw i32 %conv278.i, 24
  %or281.i = or i32 %or251.i, %shl279.i
  %43 = ptrtoint ptr %regmap.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i79, align 8
  %call283.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 140, i32 noundef %or281.i) #10
  %dma_tx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 12
  %45 = ptrtoint ptr %dma_tx_ch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_tx_ch, align 8
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %dma_rx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 13
  %47 = ptrtoint ptr %dma_rx_ch to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_rx_ch, align 4
  %tobool5.not = icmp eq ptr %48, null
  br i1 %tobool5.not, label %land.lhs.true.if.end26_crit_edge, label %if.then6

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then6:                                         ; preds = %land.lhs.true
  %49 = call ptr @memset(ptr %dma_cfg, i32 0, i32 48)
  %50 = ptrtoint ptr %cs_sel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cs_sel, align 8
  %arrayidx8 = getelementptr %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 9, i32 %51
  %52 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx8, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 1
  %54 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %src_addr, align 4
  %55 = load i32, ptr %arrayidx8, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 2
  %56 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 3
  %57 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 4
  %58 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 5
  %59 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 6
  %60 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 32, ptr %dst_maxburst, align 4
  %61 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %46, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i81 = icmp eq ptr %64, null
  br i1 %tobool.not.i81, label %if.then6.do.end_crit_edge, label %dmaengine_slave_config.exit

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.then6
  %call.i = call i32 %64(ptr noundef nonnull %46, ptr noundef nonnull %dma_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %dmaengine_slave_config.exit.do.end_crit_edge

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.then6.do.end_crit_edge
  %retval.0.i97 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.end_crit_edge ], [ -38, %if.then6.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end16:                                         ; preds = %dmaengine_slave_config.exit
  %67 = ptrtoint ptr %dma_rx_ch to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_rx_ch, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %device_config.i83 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %device_config.i83 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device_config.i83, align 4
  %tobool.not.i84 = icmp eq ptr %72, null
  br i1 %tobool.not.i84, label %if.end16.do.end23_crit_edge, label %dmaengine_slave_config.exit88

if.end16.do.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

dmaengine_slave_config.exit88:                    ; preds = %if.end16
  %call.i85 = call i32 %72(ptr noundef %68, ptr noundef nonnull %dma_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool19.not = icmp eq i32 %call.i85, 0
  br i1 %tobool19.not, label %dmaengine_slave_config.exit88.if.end26_crit_edge, label %dmaengine_slave_config.exit88.do.end23_crit_edge

dmaengine_slave_config.exit88.do.end23_crit_edge: ; preds = %dmaengine_slave_config.exit88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

dmaengine_slave_config.exit88.if.end26_crit_edge: ; preds = %dmaengine_slave_config.exit88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end23:                                         ; preds = %dmaengine_slave_config.exit88.do.end23_crit_edge, %if.end16.do.end23_crit_edge
  %retval.0.i87100 = phi i32 [ %call.i85, %dmaengine_slave_config.exit88.do.end23_crit_edge ], [ -38, %if.end16.do.end23_crit_edge ]
  %dev24 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.21) #13
  br label %cleanup

if.end26:                                         ; preds = %dmaengine_slave_config.exit88.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %dma_ecc_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 14
  %75 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_ecc_ch, align 8
  %tobool27.not = icmp eq ptr %76, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  %77 = call ptr @memset(ptr %dma_cfg, i32 0, i32 48)
  %io_phys_addr = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 8
  %78 = ptrtoint ptr %io_phys_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %io_phys_addr, align 4
  %src_addr29 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 1
  %80 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp30 = icmp eq i32 %81, 1
  %cond = select i1 %cmp30, i32 148, i32 636
  %add = add i32 %cond, %79
  %82 = ptrtoint ptr %src_addr29 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add, ptr %src_addr29, align 4
  %src_addr_width32 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_cfg, i32 0, i32 3
  %83 = ptrtoint ptr %src_addr_width32 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %src_addr_width32, align 4
  %84 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %76, align 4
  %device_config.i89 = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 44
  %86 = ptrtoint ptr %device_config.i89 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_config.i89, align 4
  %tobool.not.i90 = icmp eq ptr %87, null
  br i1 %tobool.not.i90, label %if.then28.do.end39_crit_edge, label %dmaengine_slave_config.exit94

if.then28.do.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

dmaengine_slave_config.exit94:                    ; preds = %if.then28
  %call.i91 = call i32 %87(ptr noundef nonnull %76, ptr noundef nonnull %dma_cfg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool35.not = icmp eq i32 %call.i91, 0
  br i1 %tobool35.not, label %if.end41, label %dmaengine_slave_config.exit94.do.end39_crit_edge

dmaengine_slave_config.exit94.do.end39_crit_edge: ; preds = %dmaengine_slave_config.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

do.end39:                                         ; preds = %dmaengine_slave_config.exit94.do.end39_crit_edge, %if.then28.do.end39_crit_edge
  %retval.0.i93103 = phi i32 [ %call.i91, %dmaengine_slave_config.exit94.do.end39_crit_edge ], [ -38, %if.then28.do.end39_crit_edge ]
  %dev40 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev40, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end41:                                         ; preds = %dmaengine_slave_config.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp44 = icmp eq i32 %91, 1
  %cond45 = select i1 %cmp44, i32 4, i32 20
  %dma_ecc_len = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 18
  %92 = ptrtoint ptr %dma_ecc_len to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond45, ptr %dma_ecc_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end39, %if.end26.cleanup_crit_edge, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i97, %do.end ], [ %retval.0.i87100, %do.end23 ], [ %retval.0.i93103, %do.end39 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end41 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_fmc2_nfc_rw_page_init(ptr nocapture noundef readonly %chip, i32 noundef %page, i32 noundef %raw, i1 noundef zeroext %write_data) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %add = add i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg) #10
  %4 = getelementptr inbounds [5 x i32], ptr %cfg, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i32], ptr %cfg, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i32], ptr %cfg, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i32], ptr %cfg, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cfg, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %cond = select i1 %write_data, i32 33554432, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 128, i32 noundef 33554432, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %. = select i1 %write_data, i32 16809988, i32 53477382
  %storemerge404 = select i1 %write_data, i32 34048, i32 65012994
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool112.not = icmp eq i32 %raw, 0
  %or119 = select i1 %write_data, i32 34049, i32 65012999
  %spec.select = select i1 %tobool112.not, i32 %or119, i32 %storemerge404
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %4, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %12 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %steps, align 4
  %sub145 = shl i32 %13, 8
  %shl = add i32 %sub145, 16128
  %and146 = and i32 %shl, 16128
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and146, ptr %5, align 4
  br i1 %write_data, label %if.then149, label %entry.do.end208_crit_edge

entry.do.end208_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end208

if.then149:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %15 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %options, align 8
  %and152 = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %.418 = select i1 %tobool153.not, i32 8912896, i32 9437184
  %or159 = or i32 %and146, %.418
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or159, ptr %5, align 4
  br label %do.end208

do.end208:                                        ; preds = %if.then149, %entry.do.end208_crit_edge
  %shl184 = shl i32 %page, 16
  %and185 = and i32 %shl184, 16711680
  %18 = shl i32 %page, 16
  %shl211 = and i32 %18, -16777216
  %or214 = or i32 %and185, %shl211
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or214, ptr %6, align 4
  %cs_sel = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %cs_sel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cs_sel, align 8
  %shl239 = shl i32 %21, 10
  %and240 = and i32 %shl239, 3072
  %options242 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %22 = ptrtoint ptr %options242 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %options242, align 8
  %and243 = lshr i32 %23, 1
  %and243.lobit = and i32 %and243, 1
  %shl298.pn.in = lshr i32 %add, %and243.lobit
  %shl298.pn = shl i32 %shl298.pn.in, 16
  %storemerge405 = or i32 %shl298.pn, %and240
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge405, ptr %7, align 4
  %and304 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %do.end369, label %do.end321

do.end321:                                        ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #12
  %or324 = or i32 %., 80
  %25 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or324, ptr %cfg, align 4
  %26 = lshr i32 %page, 16
  %and351 = and i32 %26, 255
  %or353 = or i32 %storemerge405, %and351
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or353, ptr %7, align 4
  br label %if.end373

do.end369:                                        ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #12
  %or372 = or i32 %., 64
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or372, ptr %cfg, align 4
  br label %if.end373

if.end373:                                        ; preds = %do.end369, %do.end321
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 8
  %call375 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 516, ptr noundef nonnull %cfg, i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_fmc2_nfc_xfer(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %raw, i1 noundef zeroext %write_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %dma_rx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 13
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %dma_tx_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 12
  %spec.select = select i1 %write_data, ptr %dma_tx_ch, ptr %dma_rx_ch
  %spec.select282 = select i1 %write_data, i32 1, i32 2
  %6 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %6)
  %dma_ch.0 = load ptr, ptr %spec.select, align 4
  %dma_data_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp283 = icmp sgt i32 %3, 0
  br i1 %cmp283, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %dma_data_sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_data_sg, align 4
  br label %for.body

for.body:                                         ; preds = %sg_set_buf.exit.for.body_crit_edge, %for.body.preheader
  %s.0286 = phi i32 [ %inc, %sg_set_buf.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %p.0285 = phi ptr [ %add.ptr, %sg_set_buf.exit.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %sg.0284 = phi ptr [ %call3, %sg_set_buf.exit.for.body_crit_edge ], [ %8, %for.body.preheader ]
  %9 = ptrtoint ptr %p.0285 to i32
  %cmp.i = icmp ugt ptr %p.0285, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.do.body5.i_crit_edge, !prof !176

for.body.do.body5.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %10 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %10, %p.0285
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !176

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %11, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !184

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %for.body.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !185
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %13 = ptrtoint ptr %sg.0284 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg.0284, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !176

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !186
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !176

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %9, 4095
  %and.i.i.i = and i32 %14, 3
  %or.i.i.i = or i32 %and.i.i.i, %15
  %16 = ptrtoint ptr %sg.0284 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i.i, ptr %sg.0284, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0284, i32 0, i32 1
  %17 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0284, i32 0, i32 2
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %length.i.i, align 4
  %add.ptr = getelementptr i8, ptr %p.0285, i32 %5
  %inc = add nuw nsw i32 %s.0286, 1
  %call3 = tail call ptr @sg_next(ptr noundef %sg.0284) #10
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %sg_set_buf.exit.for.end_crit_edge, label %sg_set_buf.exit.for.body_crit_edge

sg_set_buf.exit.for.body_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sg_set_buf.exit.for.end_crit_edge:                ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sg_set_buf.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %dma_data_sg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_data_sg, align 4
  %call6 = tail call i32 @dma_map_sg_attrs(ptr noundef %20, ptr noundef %22, i32 noundef %3, i32 noundef %spec.select282, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %23 = ptrtoint ptr %dma_data_sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_data_sg, align 4
  %tobool.not.i = icmp eq ptr %dma_ch.0, null
  br i1 %tobool.not.i, label %if.end9.err_unmap_data_crit_edge, label %lor.lhs.false.i

if.end9.err_unmap_data_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

lor.lhs.false.i:                                  ; preds = %if.end9
  %25 = ptrtoint ptr %dma_ch.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_ch.0, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_unmap_data_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err_unmap_data_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 39
  %27 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err_unmap_data_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.err_unmap_data_crit_edge:        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i209 = tail call ptr %28(ptr noundef nonnull %dma_ch.0, ptr noundef %24, i32 noundef %3, i32 noundef %spec.select282, i32 noundef 1, ptr noundef null) #10
  %tobool13.not = icmp eq ptr %call.i209, null
  br i1 %tobool13.not, label %dmaengine_prep_slave_sg.exit.err_unmap_data_crit_edge, label %if.end15

dmaengine_prep_slave_sg.exit.err_unmap_data_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

if.end15:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %dma_data_complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %dma_data_complete to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma_data_complete, align 4
  %complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 19
  %30 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %complete, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i209, i32 0, i32 6
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stm32_fmc2_nfc_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i209, i32 0, i32 8
  %32 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dma_data_complete, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i209, i32 0, i32 4
  %33 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_submit.i, align 4
  %call.i210 = tail call i32 %34(ptr noundef nonnull %call.i209) #10
  %35 = tail call i32 @llvm.smin.i32(i32 %call.i210, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i210)
  %tobool19.not = icmp sgt i32 %call.i210, -1
  br i1 %tobool19.not, label %if.end21, label %if.end15.err_unmap_data_crit_edge

if.end15.err_unmap_data_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

if.end21:                                         ; preds = %if.end15
  %36 = ptrtoint ptr %dma_ch.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_ch.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 50
  %38 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %39(ptr noundef nonnull %dma_ch.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool23.not = icmp ne i32 %raw, 0
  %40 = or i1 %tobool23.not, %write_data
  br i1 %40, label %if.end21.if.end57_crit_edge, label %if.then24

if.end21.if.end57_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then24:                                        ; preds = %if.end21
  %dma_ecc_sg = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 16
  br i1 %cmp283, label %for.body28.lr.ph, label %if.then24.for.end34_crit_edge

if.then24.for.end34_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

for.body28.lr.ph:                                 ; preds = %if.then24
  %41 = ptrtoint ptr %dma_ecc_sg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_ecc_sg, align 8
  %ecc_buf = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 17
  %43 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ecc_buf, align 4
  %dma_ecc_len = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 18
  br label %for.body28

for.body28:                                       ; preds = %sg_set_buf.exit235.for.body28_crit_edge, %for.body28.lr.ph
  %s.1290 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc32, %sg_set_buf.exit235.for.body28_crit_edge ]
  %p.1289 = phi ptr [ %44, %for.body28.lr.ph ], [ %add.ptr30, %sg_set_buf.exit235.for.body28_crit_edge ]
  %sg.1288 = phi ptr [ %42, %for.body28.lr.ph ], [ %call33, %sg_set_buf.exit235.for.body28_crit_edge ]
  %45 = ptrtoint ptr %dma_ecc_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_ecc_len, align 8
  %47 = ptrtoint ptr %p.1289 to i32
  %cmp.i211 = icmp ugt ptr %p.1289, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i211, label %land.lhs.true.i213, label %for.body28.do.body5.i220_crit_edge, !prof !176

for.body28.do.body5.i220_crit_edge:               ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i220

land.lhs.true.i213:                               ; preds = %for.body28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %48 = load ptr, ptr @high_memory, align 4
  %cmp1.i212 = icmp ugt ptr %48, %p.1289
  br i1 %cmp1.i212, label %land.rhs.i219, label %land.lhs.true.i213.do.body5.i220_crit_edge, !prof !176

land.lhs.true.i213.do.body5.i220_crit_edge:       ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i220

land.rhs.i219:                                    ; preds = %land.lhs.true.i213
  %sub.i214 = add i32 %47, 1073741824
  %shr.i215 = lshr i32 %sub.i214, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i216 = add i32 %49, %shr.i215
  %call.i217 = tail call i32 @pfn_valid(i32 noundef %add.i216) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.i218 = icmp eq i32 %call.i217, 0
  br i1 %tobool.i218, label %land.rhs.i219.do.body5.i220_crit_edge, label %do.end8.i224, !prof !184

land.rhs.i219.do.body5.i220_crit_edge:            ; preds = %land.rhs.i219
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i220

do.body5.i220:                                    ; preds = %land.rhs.i219.do.body5.i220_crit_edge, %land.lhs.true.i213.do.body5.i220_crit_edge, %for.body28.do.body5.i220_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !185
  unreachable

do.end8.i224:                                     ; preds = %land.rhs.i219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %add.ptr.i221 = getelementptr %struct.page, ptr %50, i32 %shr.i215
  %51 = ptrtoint ptr %sg.1288 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg.1288, align 4
  %53 = ptrtoint ptr %add.ptr.i221 to i32
  %and2.i.i.i222 = and i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i222)
  %tobool.not.i.i.i223 = icmp eq i32 %and2.i.i.i222, 0
  br i1 %tobool.not.i.i.i223, label %do.body11.i.i.i228, label %do.body5.i.i.i225, !prof !176

do.body5.i.i.i225:                                ; preds = %do.end8.i224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !186
  unreachable

do.body11.i.i.i228:                               ; preds = %do.end8.i224
  %and.i.i.i.i226 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i226)
  %tobool.i.not.i.i.i227 = icmp eq i32 %and.i.i.i.i226, 0
  br i1 %tobool.i.not.i.i.i227, label %sg_set_buf.exit235, label %do.body19.i.i.i229, !prof !176

do.body19.i.i.i229:                               ; preds = %do.body11.i.i.i228
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

sg_set_buf.exit235:                               ; preds = %do.body11.i.i.i228
  %and.i230 = and i32 %47, 4095
  %and.i.i.i231 = and i32 %52, 3
  %or.i.i.i232 = or i32 %and.i.i.i231, %53
  %54 = ptrtoint ptr %sg.1288 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i.i.i232, ptr %sg.1288, align 4
  %offset1.i.i233 = getelementptr inbounds %struct.scatterlist, ptr %sg.1288, i32 0, i32 1
  %55 = ptrtoint ptr %offset1.i.i233 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i230, ptr %offset1.i.i233, align 4
  %length.i.i234 = getelementptr inbounds %struct.scatterlist, ptr %sg.1288, i32 0, i32 2
  %56 = ptrtoint ptr %length.i.i234 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %46, ptr %length.i.i234, align 4
  %57 = ptrtoint ptr %dma_ecc_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_ecc_len, align 8
  %add.ptr30 = getelementptr i8, ptr %p.1289, i32 %58
  %inc32 = add nuw nsw i32 %s.1290, 1
  %call33 = tail call ptr @sg_next(ptr noundef %sg.1288) #10
  %exitcond291.not = icmp eq i32 %inc32, %3
  br i1 %exitcond291.not, label %sg_set_buf.exit235.for.end34_crit_edge, label %sg_set_buf.exit235.for.body28_crit_edge

sg_set_buf.exit235.for.body28_crit_edge:          ; preds = %sg_set_buf.exit235
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

sg_set_buf.exit235.for.end34_crit_edge:           ; preds = %sg_set_buf.exit235
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

for.end34:                                        ; preds = %sg_set_buf.exit235.for.end34_crit_edge, %if.then24.for.end34_crit_edge
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %61 = ptrtoint ptr %dma_ecc_sg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_ecc_sg, align 8
  %call38 = tail call i32 @dma_map_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef %3, i32 noundef %spec.select282, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %for.end34.err_unmap_data_crit_edge, label %if.end41

for.end34.err_unmap_data_crit_edge:               ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

if.end41:                                         ; preds = %for.end34
  %dma_ecc_ch = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_ecc_ch, align 8
  %65 = ptrtoint ptr %dma_ecc_sg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_ecc_sg, align 8
  %tobool.not.i236 = icmp eq ptr %64, null
  br i1 %tobool.not.i236, label %if.end41.if.then102_crit_edge, label %lor.lhs.false.i238

if.end41.if.then102_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

lor.lhs.false.i238:                               ; preds = %if.end41
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %tobool1.not.i237 = icmp eq ptr %68, null
  br i1 %tobool1.not.i237, label %lor.lhs.false.i238.if.then102_crit_edge, label %lor.lhs.false2.i241

lor.lhs.false.i238.if.then102_crit_edge:          ; preds = %lor.lhs.false.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

lor.lhs.false2.i241:                              ; preds = %lor.lhs.false.i238
  %device_prep_slave_sg.i239 = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 39
  %69 = ptrtoint ptr %device_prep_slave_sg.i239 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device_prep_slave_sg.i239, align 4
  %tobool4.not.i240 = icmp eq ptr %70, null
  br i1 %tobool4.not.i240, label %lor.lhs.false2.i241.if.then102_crit_edge, label %dmaengine_prep_slave_sg.exit245

lor.lhs.false2.i241.if.then102_crit_edge:         ; preds = %lor.lhs.false2.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

dmaengine_prep_slave_sg.exit245:                  ; preds = %lor.lhs.false2.i241
  %call.i242 = tail call ptr %70(ptr noundef nonnull %64, ptr noundef %66, i32 noundef %3, i32 noundef %spec.select282, i32 noundef 1, ptr noundef null) #10
  %tobool45.not = icmp eq ptr %call.i242, null
  br i1 %tobool45.not, label %dmaengine_prep_slave_sg.exit245.if.then102_crit_edge, label %if.end47

dmaengine_prep_slave_sg.exit245.if.then102_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.end47:                                         ; preds = %dmaengine_prep_slave_sg.exit245
  %dma_ecc_complete = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 21
  %71 = ptrtoint ptr %dma_ecc_complete to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %dma_ecc_complete, align 4
  %callback48 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i242, i32 0, i32 6
  %72 = ptrtoint ptr %callback48 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @stm32_fmc2_nfc_dma_callback, ptr %callback48, align 4
  %callback_param50 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i242, i32 0, i32 8
  %73 = ptrtoint ptr %callback_param50 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dma_ecc_complete, ptr %callback_param50, align 4
  %tx_submit.i246 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i242, i32 0, i32 4
  %74 = ptrtoint ptr %tx_submit.i246 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_submit.i246, align 4
  %call.i247 = tail call i32 %75(ptr noundef nonnull %call.i242) #10
  %76 = tail call i32 @llvm.smin.i32(i32 %call.i247, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i247)
  %tobool53.not = icmp sgt i32 %call.i247, -1
  br i1 %tobool53.not, label %if.end55, label %if.end47.if.then102_crit_edge

if.end47.if.then102_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %dma_ecc_ch to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_ecc_ch, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %device_issue_pending.i248 = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 50
  %81 = ptrtoint ptr %device_issue_pending.i248 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device_issue_pending.i248, align 4
  tail call void %82(ptr noundef %78) #10
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %if.end21.if.end57_crit_edge
  %regmap.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i, align 8
  %call.i249 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 552, i32 noundef 31) #10
  %irq_state.i = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 11
  %85 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 2, ptr %irq_state.i, align 4
  %86 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 544, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %88 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i, align 8
  %call.i251 = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 512, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call60 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end, label %if.end72

do.end:                                           ; preds = %if.end57
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.26) #13
  %92 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap.i, align 8
  %call.i.i253 = tail call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 544, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %94 = ptrtoint ptr %irq_state.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %irq_state.i, align 4
  %95 = ptrtoint ptr %dma_ch.0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma_ch.0, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %96, i32 0, i32 47
  %97 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i255 = icmp eq ptr %98, null
  br i1 %tobool.not.i255, label %do.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

do.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i256 = tail call i32 %98(ptr noundef nonnull %dma_ch.0) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %do.end.dmaengine_terminate_all.exit_crit_edge
  br i1 %40, label %dmaengine_terminate_all.exit.err_unmap_data_crit_edge, label %if.then68

dmaengine_terminate_all.exit.err_unmap_data_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

if.then68:                                        ; preds = %dmaengine_terminate_all.exit
  %dma_ecc_ch69 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 14
  %99 = ptrtoint ptr %dma_ecc_ch69 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma_ecc_ch69, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %device_terminate_all.i257 = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 47
  %103 = ptrtoint ptr %device_terminate_all.i257 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device_terminate_all.i257, align 4
  %tobool.not.i258 = icmp eq ptr %104, null
  br i1 %tobool.not.i258, label %if.then68.if.then102_crit_edge, label %if.then.i260

if.then68.if.then102_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.then.i260:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %call.i259 = tail call i32 %104(ptr noundef %100) #10
  br label %if.then102

if.end72:                                         ; preds = %if.end57
  %call74 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_data_complete, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.end79, label %if.end72.if.end82_crit_edge

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end79:                                         ; preds = %if.end72
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.29) #13
  %107 = ptrtoint ptr %dma_ch.0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_ch.0, align 4
  %device_terminate_all.i262 = getelementptr inbounds %struct.dma_device, ptr %108, i32 0, i32 47
  %109 = ptrtoint ptr %device_terminate_all.i262 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device_terminate_all.i262, align 4
  %tobool.not.i263 = icmp eq ptr %110, null
  br i1 %tobool.not.i263, label %do.end79.if.end82_crit_edge, label %if.then.i265

do.end79.if.end82_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then.i265:                                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  %call.i264 = tail call i32 %110(ptr noundef nonnull %dma_ch.0) #10
  br label %if.end82

if.end82:                                         ; preds = %if.then.i265, %do.end79.if.end82_crit_edge, %if.end72.if.end82_crit_edge
  %ret.1 = phi i32 [ 0, %if.end72.if.end82_crit_edge ], [ -110, %do.end79.if.end82_crit_edge ], [ -110, %if.then.i265 ]
  br i1 %40, label %if.end82.err_unmap_data_crit_edge, label %if.then86

if.end82.err_unmap_data_crit_edge:                ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap_data

if.then86:                                        ; preds = %if.end82
  %dma_ecc_complete87 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 21
  %call88 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_ecc_complete87, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.end93, label %if.then86.if.then102_crit_edge

if.then86.if.then102_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

do.end93:                                         ; preds = %if.then86
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.32) #13
  %dma_ecc_ch95 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 14
  %113 = ptrtoint ptr %dma_ecc_ch95 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dma_ecc_ch95, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %device_terminate_all.i267 = getelementptr inbounds %struct.dma_device, ptr %116, i32 0, i32 47
  %117 = ptrtoint ptr %device_terminate_all.i267 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device_terminate_all.i267, align 4
  %tobool.not.i268 = icmp eq ptr %118, null
  br i1 %tobool.not.i268, label %do.end93.if.then102_crit_edge, label %if.then.i270

do.end93.if.then102_crit_edge:                    ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.then.i270:                                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #12
  %call.i269 = tail call i32 %118(ptr noundef %114) #10
  br label %if.then102

if.then102:                                       ; preds = %if.then.i270, %do.end93.if.then102_crit_edge, %if.then86.if.then102_crit_edge, %if.then.i260, %if.then68.if.then102_crit_edge, %if.end47.if.then102_crit_edge, %dmaengine_prep_slave_sg.exit245.if.then102_crit_edge, %lor.lhs.false2.i241.if.then102_crit_edge, %lor.lhs.false.i238.if.then102_crit_edge, %if.end41.if.then102_crit_edge
  %ret.2277 = phi i32 [ -110, %if.then.i270 ], [ -110, %do.end93.if.then102_crit_edge ], [ -110, %if.then.i260 ], [ -110, %if.then68.if.then102_crit_edge ], [ %ret.1, %if.then86.if.then102_crit_edge ], [ %76, %if.end47.if.then102_crit_edge ], [ -12, %dmaengine_prep_slave_sg.exit245.if.then102_crit_edge ], [ -12, %lor.lhs.false2.i241.if.then102_crit_edge ], [ -12, %lor.lhs.false.i238.if.then102_crit_edge ], [ -12, %if.end41.if.then102_crit_edge ]
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 8
  %dma_ecc_sg104 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 16
  %121 = ptrtoint ptr %dma_ecc_sg104 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dma_ecc_sg104, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %120, ptr noundef %122, i32 noundef %3, i32 noundef %spec.select282, i32 noundef 0) #10
  br label %err_unmap_data

err_unmap_data:                                   ; preds = %if.then102, %if.end82.err_unmap_data_crit_edge, %dmaengine_terminate_all.exit.err_unmap_data_crit_edge, %for.end34.err_unmap_data_crit_edge, %if.end15.err_unmap_data_crit_edge, %dmaengine_prep_slave_sg.exit.err_unmap_data_crit_edge, %lor.lhs.false2.i.err_unmap_data_crit_edge, %lor.lhs.false.i.err_unmap_data_crit_edge, %if.end9.err_unmap_data_crit_edge
  %ret.3 = phi i32 [ %35, %if.end15.err_unmap_data_crit_edge ], [ %ret.2277, %if.then102 ], [ %call38, %for.end34.err_unmap_data_crit_edge ], [ -12, %dmaengine_prep_slave_sg.exit.err_unmap_data_crit_edge ], [ -12, %lor.lhs.false2.i.err_unmap_data_crit_edge ], [ -12, %lor.lhs.false.i.err_unmap_data_crit_edge ], [ -12, %if.end9.err_unmap_data_crit_edge ], [ -110, %dmaengine_terminate_all.exit.err_unmap_data_crit_edge ], [ %ret.1, %if.end82.err_unmap_data_crit_edge ]
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 8
  %125 = ptrtoint ptr %dma_data_sg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_data_sg, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %124, ptr noundef %126, i32 noundef %3, i32 noundef %spec.select282, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %err_unmap_data, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_unmap_data ], [ %call6, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_fmc2_nfc_dma_callback(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %arg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %length, align 4
  %3 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_fmc2_nfc_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %0 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oobsize, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %2 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total, align 4
  %sub = add i32 %1, -2
  %sub2 = sub i32 %sub, %3
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub2, ptr %length, align 4
  %5 = load i32, ptr %total, align 4
  %add = add i32 %5, 2
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_fmc2_nfc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nand1 = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  %clk = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call fastcc void @stm32_fmc2_nfc_init(ptr noundef %1)
  %cs_assigned = getelementptr inbounds %struct.stm32_fmc2_nfc, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %cs_assigned to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cs_assigned, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @nand_reset(ptr noundef %nand1, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.end.for.inc_crit_edge
  %7 = ptrtoint ptr %cs_assigned to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cs_assigned, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.1 = icmp eq i8 %9, 0
  br i1 %tobool4.not.1, label %for.inc.cleanup_crit_edge, label %if.end6.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call7.1 = tail call i32 @nand_reset(ptr noundef %nand1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6.1, %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end6.1 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !135, !137, !139, !140, !141, !142, !144, !146, !147, !148, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_stm32_fmc2_nand__509_2074_stm32_fmc2_nfc_driver_init6, !1, !"__initcall__kmod_stm32_fmc2_nand__509_2074_stm32_fmc2_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2074, i32 1}
!2 = !{ptr @__exitcall_stm32_fmc2_nfc_driver_exit, !1, !"__exitcall_stm32_fmc2_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias510, !4, !"__UNIQUE_ID_alias510", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2076, i32 1}
!5 = !{ptr @__UNIQUE_ID_author511, !6, !"__UNIQUE_ID_author511", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2077, i32 1}
!7 = !{ptr @__UNIQUE_ID_description512, !8, !"__UNIQUE_ID_description512", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2078, i32 1}
!9 = !{ptr @__UNIQUE_ID_file513, !10, !"__UNIQUE_ID_file513", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2079, i32 1}
!11 = !{ptr @__UNIQUE_ID_license514, !10, !"__UNIQUE_ID_license514", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2069, i32 11}
!14 = !{ptr @stm32_fmc2_nfc_driver, !15, !"stm32_fmc2_nfc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2065, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1918, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_fmc2_nfc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_fmc2_nfc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1930, i32 3}
!26 = !{ptr @stm32_fmc2_nfc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_fmc2_nfc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @nand_controller_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @stm32_fmc2_nfc_controller_ops, !32, !"stm32_fmc2_nfc_controller_ops", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1744, i32 41}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1708, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stm32_fmc2_nfc_attach_chip._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_fmc2_nfc_attach_chip._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1723, i32 3}
!40 = !{ptr @stm32_fmc2_nfc_attach_chip._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @stm32_fmc2_nfc_attach_chip._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1728, i32 3}
!44 = !{ptr @stm32_fmc2_nfc_attach_chip._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @stm32_fmc2_nfc_attach_chip._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @stm32_fmc2_nfc_ecc_caps, !47, !"stm32_fmc2_nfc_ecc_caps", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1690, i32 1}
!48 = !{ptr @stm32_fmc2_nfc_ecc_caps_stepinfo, !47, !"stm32_fmc2_nfc_ecc_caps_stepinfo", i1 false, i1 false}
!49 = !{ptr @stm32_fmc2_nfc_ecc_caps_strengths, !47, !"stm32_fmc2_nfc_ecc_caps_strengths", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 359, i32 4}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @stm32_fmc2_nfc_select_chip._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @stm32_fmc2_nfc_select_chip._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 365, i32 4}
!57 = !{ptr @stm32_fmc2_nfc_select_chip._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @stm32_fmc2_nfc_select_chip._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 383, i32 4}
!61 = !{ptr @stm32_fmc2_nfc_select_chip._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32_fmc2_nfc_select_chip._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 925, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stm32_fmc2_nfc_xfer._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @stm32_fmc2_nfc_xfer._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 936, i32 3}
!70 = !{ptr @stm32_fmc2_nfc_xfer._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @stm32_fmc2_nfc_xfer._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 945, i32 4}
!74 = !{ptr @stm32_fmc2_nfc_xfer._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @stm32_fmc2_nfc_xfer._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 501, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stm32_fmc2_nfc_ham_calculate._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @stm32_fmc2_nfc_ham_calculate._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 580, i32 3}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stm32_fmc2_nfc_bch_calculate._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stm32_fmc2_nfc_bch_calculate._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 663, i32 3}
!88 = !{ptr @stm32_fmc2_nfc_bch_correct._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @stm32_fmc2_nfc_bch_correct._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @stm32_fmc2_nfc_ooblayout_ops, !91, !"stm32_fmc2_nfc_ooblayout_ops", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1671, i32 39}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1279, i32 3}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @stm32_fmc2_nfc_waitrdy._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @stm32_fmc2_nfc_waitrdy._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1827, i32 10}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1830, i32 44}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1801, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @stm32_fmc2_nfc_parse_dt._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @stm32_fmc2_nfc_parse_dt._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1806, i32 3}
!109 = !{ptr @stm32_fmc2_nfc_parse_dt._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @stm32_fmc2_nfc_parse_dt._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1757, i32 27}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1762, i32 3}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @stm32_fmc2_nfc_parse_child._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @stm32_fmc2_nfc_parse_child._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1769, i32 4}
!120 = !{ptr @stm32_fmc2_nfc_parse_child._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stm32_fmc2_nfc_parse_child._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1775, i32 4}
!124 = !{ptr @stm32_fmc2_nfc_parse_child._entry.55, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @stm32_fmc2_nfc_parse_child._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1780, i32 4}
!128 = !{ptr @stm32_fmc2_nfc_parse_child._entry.58, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @stm32_fmc2_nfc_parse_child._entry_ptr.60, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!132 = !{ptr @init_completion.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../include/linux/completion.h", i32 87, i32 2}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1543, i32 46}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1547, i32 4}
!139 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @stm32_fmc2_nfc_dma_setup._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @stm32_fmc2_nfc_dma_setup._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1553, i32 46}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1557, i32 4}
!146 = !{ptr @stm32_fmc2_nfc_dma_setup._entry.67, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @stm32_fmc2_nfc_dma_setup._entry_ptr.69, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1563, i32 47}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1567, i32 4}
!152 = !{ptr @stm32_fmc2_nfc_dma_setup._entry.71, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @stm32_fmc2_nfc_dma_setup._entry_ptr.73, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 1593, i32 3}
!156 = !{ptr @stm32_fmc2_nfc_dma_setup._entry.74, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @stm32_fmc2_nfc_dma_setup._entry_ptr.76, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @stm32_fmc2_nfc_match, !159, !"stm32_fmc2_nfc_match", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2058, i32 34}
!160 = !{ptr @stm32_fmc2_nfc_pm_ops, !161, !"stm32_fmc2_nfc_pm_ops", i1 false, i1 false}
!161 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2055, i32 8}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/nand/raw/stm32_fmc2_nand.c", i32 2039, i32 3}
!164 = !{ptr @stm32_fmc2_nfc_resume._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @stm32_fmc2_nfc_resume._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 6378541}
!178 = !{i8 0, i8 2}
!179 = !{i64 6378936}
!180 = !{i64 6378318}
!181 = !{i64 6379156}
!182 = !{i64 6378118}
!183 = !{i64 6378738}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2153943183, i64 2153943675, i64 2153943220, i64 2153943276, i64 2153943310, i64 2153943334, i64 2153943375, i64 2153943396, i64 2153943424, i64 2153943458}
!186 = !{i64 2153936864, i64 2153937356, i64 2153936901, i64 2153936957, i64 2153936991, i64 2153937015, i64 2153937056, i64 2153937077, i64 2153937105, i64 2153937139}
!187 = !{i64 2153938474, i64 2153938966, i64 2153938511, i64 2153938567, i64 2153938601, i64 2153938625, i64 2153938666, i64 2153938687, i64 2153938715, i64 2153938749}
