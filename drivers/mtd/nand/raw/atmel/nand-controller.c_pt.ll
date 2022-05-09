; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/atmel/nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/atmel/nand-controller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_nand_controller_caps = type { i8, i8, i32, i32, ptr, ptr }
%struct.atmel_nand_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.89 }
%union.anon.89 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atmel_smc_nand_ebi_csa_cfg = type { i32, i32 }
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.atmel_nand_controller = type { %struct.nand_controller, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atmel_hsmc_nand_controller = type { %struct.atmel_nand_controller, %struct.anon.83, ptr, ptr, %struct.atmel_nfc_op, %struct.completion, i32, i32, ptr }
%struct.anon.83 = type { ptr, ptr, i32 }
%struct.atmel_nfc_op = type { i8, i8, [2 x i8], i8, [5 x i8], i32, i32, i32 }
%struct.atmel_nand = type { %struct.list_head, ptr, %struct.nand_chip, ptr, ptr, ptr, i32, [0 x %struct.atmel_nand_cs] }
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
%struct.atmel_nand_cs = type { i32, %struct.atmel_nand_rb, ptr, %struct.anon.82, %struct.atmel_smc_cs_conf }
%struct.atmel_nand_rb = type { i32, %union.anon.81 }
%union.anon.81 = type { ptr }
%struct.anon.82 = type { ptr, i32 }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.atmel_pmecc_user_req = type { i32, i32, %struct.anon.87 }
%struct.anon.87 = type { i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.atmel_smc_nand_controller = type { %struct.atmel_nand_controller, ptr, ptr }
%struct.nand_operation = type { i32, ptr, i32 }

@__UNIQUE_ID_avoiddma249 = internal constant [52 x i8] c"atmel_nand_controller.parm=avoiddma:Avoid using DMA\00", section ".modinfo", align 1
@__param_str_avoiddma = internal constant [31 x i8] c"atmel_nand_controller.avoiddma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@atmel_nand_avoid_dma = internal global i8 0, section ".data..read_mostly", align 1
@__param_avoiddma = internal constant %struct.kernel_param { ptr @__param_str_avoiddma, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.68 { ptr @atmel_nand_avoid_dma } }, section "__param", align 4
@__UNIQUE_ID_avoiddmatype250 = internal constant [45 x i8] c"atmel_nand_controller.parmtype=avoiddma:bool\00", section ".modinfo", align 1
@__initcall__kmod_atmel_nand_controller__274_2657_atmel_nand_controller_driver_init6 = internal global ptr @atmel_nand_controller_driver_init, section ".initcall6.init", align 4
@atmel_nand_controller_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_nand_controller_probe, ptr @atmel_nand_controller_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_nand_controller_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_nand_controller_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_nand_controller_driver_exit = internal global ptr @atmel_nand_controller_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file275 = internal constant [76 x i8] c"atmel_nand_controller.file=drivers/mtd/nand/raw/atmel/atmel-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [34 x i8] c"atmel_nand_controller.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [82 x i8] c"atmel_nand_controller.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [78 x i8] c"atmel_nand_controller.description=NAND Flash Controller driver for Atmel SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [59 x i8] c"atmel_nand_controller.alias=platform:atmel-nand-controller\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel-nand-controller\00", [42 x i8] zeroinitializer }, align 32
@atmel_nand_controller_of_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9260_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9261_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9g45_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @microchip_sam9x60_nc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nand_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nand_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_rm9200_nand_caps }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@atmel_nand_controller_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @atmel_nand_controller_resume, ptr null, ptr @atmel_nand_controller_resume, ptr null, ptr @atmel_nand_controller_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_nand_controller_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not retrieve NFC caps\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_nand_controller_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/mtd/nand/raw/atmel/nand-controller.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_nand_controller_probe._entry_ptr = internal global ptr @atmel_nand_controller_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,sama5d3-nfc\00", [46 x i8] zeroinitializer }, align 32
@atmel_sama5_nand_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 1, i8 1, i32 2097152, i32 4194304, ptr null, ptr @atmel_hsmc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel,nand-has-dma\00", [45 x i8] zeroinitializer }, align 32
@atmel_sam9g45_nand_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 1, i8 1, i32 2097152, i32 4194304, ptr null, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,nand-addr-offset\00", [41 x i8] zeroinitializer }, align 32
@atmel_sam9261_nand_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 0, i8 1, i32 4194304, i32 2097152, ptr null, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@atmel_hsmc_nc_ops = internal constant { %struct.atmel_nand_controller_ops, [40 x i8] } { %struct.atmel_nand_controller_ops { ptr @atmel_hsmc_nand_controller_probe, ptr @atmel_hsmc_nand_controller_remove, ptr @atmel_nand_init, ptr @atmel_hsmc_nand_ecc_init, ptr @atmel_hsmc_nand_setup_interface, ptr @atmel_hsmc_nand_exec_op }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Could not get register NFC interrupt handler (err = %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"atmel_hsmc_nand_controller_probe\00", [63 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_probe._entry_ptr = internal global ptr @atmel_hsmc_nand_controller_probe._entry, section ".printk_index", align 4
@atmel_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @atmel_nand_attach_chip, ptr null, ptr @atmel_nand_exec_op, ptr @atmel_nand_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get PMECC object\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_nand_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 2053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request DMA channel\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel_nand_controller_init\00", [37 x i8] zeroinitializer }, align 32
@atmel_nand_controller_init._entry_ptr = internal global ptr @atmel_nand_controller_init._entry, section ".printk_index", align 4
@atmel_nand_controller_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 2062, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to retrieve MCK clk\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_nand_controller_init._entry_ptr.17 = internal global ptr @atmel_nand_controller_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel,smc\00", [22 x i8] zeroinitializer }, align 32
@atmel_nand_controller_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.3, i32 2068, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing or invalid atmel,smc property\0A\00", [57 x i8] zeroinitializer }, align 32
@atmel_nand_controller_init._entry_ptr.21 = internal global ptr @atmel_nand_controller_init._entry.19, section ".printk_index", align 4
@atmel_nand_controller_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.3, i32 2076, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not get SMC regmap (err = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@atmel_nand_controller_init._entry_ptr.24 = internal global ptr @atmel_nand_controller_init._entry.22, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel_nand\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:nand.%d\00", [21 x i8] zeroinitializer }, align 32
@atmel_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 2010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate mtd->name\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel_nand_attach_chip\00", [41 x i8] zeroinitializer }, align 32
@atmel_nand_attach_chip._entry_ptr = internal global ptr @atmel_nand_attach_chip._entry, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 2145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not find device node for sama5d3-nfc\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atmel_hsmc_nand_controller_legacy_init\00", [57 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 2153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to retrieve HSMC clock (err = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.34 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.32, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 2160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to enable the HSMC clock (err = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.37 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.35, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.3, i32 2169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get IRQ number (err = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.40 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.38, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.3, i32 2176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid or missing NFC IO resource (err = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.43 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfc-io\00", [25 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nand_controller:2188:(&regmap_conf)->lock\00", [54 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.31, ptr @.str.3, i32 2192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not create NFC IO regmap (err = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.48 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.46, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.31, ptr @.str.3, i32 2199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid or missing HSMC resource (err = %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.51 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smc\00", [28 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nand_controller:2211:(&regmap_conf)->lock\00", [54 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.31, ptr @.str.3, i32 2215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.56 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.55, section ".printk_index", align 4
@atmel_hsmc_nand_controller_legacy_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.31, ptr @.str.3, i32 2222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid or missing SRAM resource (err = %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_legacy_init._entry_ptr.59 = internal global ptr @atmel_hsmc_nand_controller_legacy_init._entry.57, section ".printk_index", align 4
@atmel_hsmc_nand_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.60, ptr @.str.3, i32 2249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel_hsmc_nand_controller_init\00", [32 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry_ptr = internal global ptr @atmel_hsmc_nand_controller_init._entry, section ".printk_index", align 4
@atmel_hsmc_nand_controller_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.60, ptr @.str.3, i32 2261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry_ptr.62 = internal global ptr @atmel_hsmc_nand_controller_init._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel,nfc-io\00", [19 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 2267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing or invalid atmel,nfc-io property\0A\00", [54 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry_ptr.66 = internal global ptr @atmel_hsmc_nand_controller_init._entry.64, section ".printk_index", align 4
@atmel_hsmc_nand_controller_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.3, i32 2275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not get NFC IO regmap (err = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry_ptr.69 = internal global ptr @atmel_hsmc_nand_controller_init._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel,nfc-sram\00", [17 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.60, ptr @.str.3, i32 2282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Missing SRAM\0A\00", [18 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry_ptr.73 = internal global ptr @atmel_hsmc_nand_controller_init._entry.71, section ".printk_index", align 4
@atmel_hsmc_nand_controller_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.60, ptr @.str.3, i32 2291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not allocate memory from the NFC SRAM pool\0A\00", [46 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_controller_init._entry_ptr.76 = internal global ptr @atmel_hsmc_nand_controller_init._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nands._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 1864, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing #address-cells property\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel_nand_controller_add_nands\00", [32 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nands._entry_ptr = internal global ptr @atmel_nand_controller_add_nands._entry, section ".printk_index", align 4
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nands._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.79, ptr @.str.3, i32 1872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing #size-cells property\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nands._entry_ptr.83 = internal global ptr @atmel_nand_controller_add_nands._entry.81, section ".printk_index", align 4
@atmel_nand_controller_legacy_add_nands._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 1814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get R/B gpio (err = %ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"atmel_nand_controller_legacy_add_nands\00", [57 x i8] zeroinitializer }, align 32
@atmel_nand_controller_legacy_add_nands._entry_ptr = internal global ptr @atmel_nand_controller_legacy_add_nands._entry, section ".printk_index", align 4
@atmel_nand_controller_legacy_add_nands._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 1827, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get CS gpio (err = %ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_nand_controller_legacy_add_nands._entry_ptr.88 = internal global ptr @atmel_nand_controller_legacy_add_nands._entry.86, section ".printk_index", align 4
@atmel_nand_controller_legacy_add_nands._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.3, i32 1838, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get detect gpio (err = %ld)\0A\00", [57 x i8] zeroinitializer }, align 32
@atmel_nand_controller_legacy_add_nands._entry_ptr.91 = internal global ptr @atmel_nand_controller_legacy_add_nands._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing or invalid reg property\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_nand_create\00", [46 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry_ptr = internal global ptr @atmel_nand_create._entry, section ".printk_index", align 4
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"det\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand-det\00", [23 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.95, ptr @.str.3, i32 1647, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry_ptr.99 = internal global ptr @atmel_nand_create._entry.98, section ".printk_index", align 4
@atmel_nand_create._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.95, ptr @.str.3, i32 1661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid reg property (err = %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry_ptr.102 = internal global ptr @atmel_nand_create._entry.100, section ".printk_index", align 4
@atmel_nand_create._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.95, ptr @.str.3, i32 1669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry_ptr.104 = internal global ptr @atmel_nand_create._entry.103, section ".printk_index", align 4
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atmel,rb\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rb\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nand-rb\00", [24 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.95, ptr @.str.3, i32 1694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry_ptr.109 = internal global ptr @atmel_nand_create._entry.108, section ".printk_index", align 4
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nand-cs\00", [24 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.95, ptr @.str.3, i32 1711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@atmel_nand_create._entry_ptr.113 = internal global ptr @atmel_nand_create._entry.112, section ".printk_index", align 4
@atmel_nand_controller_add_nand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1734, ptr @.str.116, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No SmartMedia card inserted.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_nand_controller_add_nand\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nand._entry_ptr = internal global ptr @atmel_nand_controller_add_nand._entry, section ".printk_index", align 4
@atmel_nand_controller_add_nand._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.115, ptr @.str.3, i32 1742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND scan failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nand._entry_ptr.119 = internal global ptr @atmel_nand_controller_add_nand._entry.117, section ".printk_index", align 4
@atmel_nand_controller_add_nand._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.3, i32 1748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register mtd device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_nand_controller_add_nand._entry_ptr.122 = internal global ptr @atmel_nand_controller_add_nand._entry.120, section ".printk_index", align 4
@atmel_nand_ecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported ECC mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_nand_ecc_init\00", [44 x i8] zeroinitializer }, align 32
@atmel_nand_ecc_init._entry_ptr = internal global ptr @atmel_nand_ecc_init._entry, section ".printk_index", align 4
@atmel_nand_pmecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW ECC not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_nand_pmecc_init\00", [42 x i8] zeroinitializer }, align 32
@atmel_nand_pmecc_init._entry_ptr = internal global ptr @atmel_nand_pmecc_init._entry, section ".printk_index", align 4
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,pmecc-cap\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel,pmecc-sector-size\00", [40 x i8] zeroinitializer }, align 32
@atmel_nand_pmecc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable ECC engine (err = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_nand_pmecc_enable\00", [40 x i8] zeroinitializer }, align 32
@atmel_nand_pmecc_enable._entry_ptr = internal global ptr @atmel_nand_pmecc_enable._entry, section ".printk_index", align 4
@atmel_nand_pmecc_correct_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read NAND page data (err = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atmel_nand_pmecc_correct_data\00", [34 x i8] zeroinitializer }, align 32
@atmel_nand_pmecc_correct_data._entry_ptr = internal global ptr @atmel_nand_pmecc_correct_data._entry, section ".printk_index", align 4
@atmel_nand_pmecc_generate_eccbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to transfer NAND page data (err = %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atmel_nand_pmecc_generate_eccbytes\00", [61 x i8] zeroinitializer }, align 32
@atmel_nand_pmecc_generate_eccbytes._entry_ptr = internal global ptr @atmel_nand_pmecc_generate_eccbytes._entry, section ".printk_index", align 4
@atmel_hsmc_nand_pmecc_read_pg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to load NAND page data (err = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atmel_hsmc_nand_pmecc_read_pg\00", [34 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_pmecc_read_pg._entry_ptr = internal global ptr @atmel_hsmc_nand_pmecc_read_pg._entry, section ".printk_index", align 4
@atmel_nfc_exec_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to send NAND command (err = %d)!\00", [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_nfc_exec_op\00", [46 x i8] zeroinitializer }, align 32
@atmel_nfc_exec_op._entry_ptr = internal global ptr @atmel_nfc_exec_op._entry, section ".printk_index", align 4
@atmel_nfc_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Waiting NAND R/B Timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel_nfc_wait\00", [17 x i8] zeroinitializer }, align 32
@atmel_nfc_wait._entry_ptr = internal global ptr @atmel_nfc_wait._entry, section ".printk_index", align 4
@atmel_nfc_wait._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Access to an undefined area\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_nfc_wait._entry_ptr.143 = internal global ptr @atmel_nfc_wait._entry.141, section ".printk_index", align 4
@atmel_nfc_wait._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Access while busy\0A\00", [45 x i8] zeroinitializer }, align 32
@atmel_nfc_wait._entry_ptr.146 = internal global ptr @atmel_nfc_wait._entry.144, section ".printk_index", align 4
@atmel_nfc_wait._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong access size\0A\00", [45 x i8] zeroinitializer }, align 32
@atmel_nfc_wait._entry_ptr.149 = internal global ptr @atmel_nfc_wait._entry.147, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@atmel_nand_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to prepare a buffer for DMA access\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_nand_dma_transfer\00", [40 x i8] zeroinitializer }, align 32
@atmel_nand_dma_transfer._entry_ptr = internal global ptr @atmel_nand_dma_transfer._entry, section ".printk_index", align 4
@atmel_nand_dma_transfer._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare DMA memcpy\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_nand_dma_transfer._entry_ptr.155 = internal global ptr @atmel_nand_dma_transfer._entry.153, section ".printk_index", align 4
@atmel_nand_dma_transfer._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.3, i32 402, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to do DMA tx_submit\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_nand_dma_transfer._entry_ptr.158 = internal global ptr @atmel_nand_dma_transfer._entry.156, section ".printk_index", align 4
@atmel_nand_dma_transfer.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.159, ptr @.str.152, ptr @.str.3, ptr @.str.160, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_nand_controller\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fall back to CPU I/O\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.161 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@atmel_hsmc_nand_pmecc_write_pg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.163, ptr @.str.3, i32 1010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_hsmc_nand_pmecc_write_pg\00", [33 x i8] zeroinitializer }, align 32
@atmel_hsmc_nand_pmecc_write_pg._entry_ptr = internal global ptr @atmel_hsmc_nand_pmecc_write_pg._entry, section ".printk_index", align 4
@atmel_hsmc_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.167, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [3 x %struct.nand_op_parser_pattern_elem], [60 x i8] } { [3 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.89 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.89 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.89 zeroinitializer }], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.89 zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal constant { [4 x %struct.nand_op_parser_pattern], [48 x i8] } { [4 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 3, ptr @atmel_hsmc_exec_cmd_addr }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.164, i32 1, ptr @atmel_hsmc_exec_rw }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.165, i32 1, ptr @atmel_hsmc_exec_rw }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.166, i32 1, ptr @atmel_hsmc_exec_waitrdy }], [48 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atmel_smc_nc_ops = internal constant { %struct.atmel_nand_controller_ops, [40 x i8] } { %struct.atmel_nand_controller_ops { ptr @atmel_smc_nand_controller_probe, ptr @atmel_smc_nand_controller_remove, ptr @atmel_smc_nand_init, ptr @atmel_nand_ecc_init, ptr @atmel_smc_nand_setup_interface, ptr @atmel_smc_nand_exec_op }, [40 x i8] zeroinitializer }, align 32
@atmel_ebi_csa_regmap_of_ids = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9260_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9261-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9261_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9263_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9n12_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-matrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ebi_csa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-sfr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ebi_csa }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@atmel_smc_nand_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.3, i32 2110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not get EBICSA regmap (err = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_smc_nand_controller_init\00", [33 x i8] zeroinitializer }, align 32
@atmel_smc_nand_controller_init._entry_ptr = internal global ptr @atmel_smc_nand_controller_init._entry, section ".printk_index", align 4
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,at91sam9263-ebi1\00", [41 x i8] zeroinitializer }, align 32
@at91sam9260_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 284, i32 0 }, [24 x i8] zeroinitializer }, align 32
@at91sam9261_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 48, i32 0 }, [24 x i8] zeroinitializer }, align 32
@at91sam9263_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 288, i32 0 }, [24 x i8] zeroinitializer }, align 32
@at91sam9rl_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 288, i32 0 }, [24 x i8] zeroinitializer }, align 32
@at91sam9g45_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 296, i32 0 }, [24 x i8] zeroinitializer }, align 32
@at91sam9n12_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 280, i32 0 }, [24 x i8] zeroinitializer }, align 32
@at91sam9x5_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 288, i32 0 }, [24 x i8] zeroinitializer }, align 32
@sam9x60_ebi_csa = internal constant { %struct.atmel_smc_nand_ebi_csa_cfg, [24 x i8] } { %struct.atmel_smc_nand_ebi_csa_cfg { i32 4, i32 16777216 }, [24 x i8] zeroinitializer }, align 32
@atmel_rm9200_nc_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 0, i8 0, i32 2097152, i32 4194304, ptr @.str.171, ptr @at91rm9200_nc_ops }, [44 x i8] zeroinitializer }, align 32
@atmel_sam9260_nc_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 0, i8 0, i32 2097152, i32 4194304, ptr @.str.171, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@atmel_sam9261_nc_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 0, i8 0, i32 4194304, i32 2097152, ptr @.str.171, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@atmel_sam9g45_nc_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 1, i8 0, i32 2097152, i32 4194304, ptr @.str.171, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@atmel_sama5_nc_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 1, i8 0, i32 2097152, i32 4194304, ptr null, ptr @atmel_hsmc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@microchip_sam9x60_nc_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 1, i8 0, i32 2097152, i32 4194304, ptr @.str.172, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@atmel_rm9200_nand_caps = internal constant { %struct.atmel_nand_controller_caps, [44 x i8] } { %struct.atmel_nand_controller_caps { i8 0, i8 1, i32 2097152, i32 4194304, ptr null, ptr @atmel_smc_nc_ops }, [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel,matrix\00", [19 x i8] zeroinitializer }, align 32
@at91rm9200_nc_ops = internal constant { %struct.atmel_nand_controller_ops, [40 x i8] } { %struct.atmel_nand_controller_ops { ptr @atmel_smc_nand_controller_probe, ptr @atmel_smc_nand_controller_remove, ptr @atmel_smc_nand_init, ptr @atmel_nand_ecc_init, ptr null, ptr @atmel_smc_nand_exec_op }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"microchip,sfr\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967262]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.175 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.176 = private unnamed_addr constant [29 x i8] c"atmel_nand_controller_driver\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2648, i32 31 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2650, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [29 x i8] c"atmel_nand_controller_of_ids\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2524, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant [29 x i8] c"atmel_nand_controller_pm_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2645, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2576, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2589, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant [22 x i8] c"atmel_sama5_nand_caps\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2396, i32 48 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2603, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [24 x i8] c"atmel_sam9g45_nand_caps\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2516, i32 48 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2612, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"atmel_sam9261_nand_caps\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2509, i32 48 }
@___asan_gen_.224 = private unnamed_addr constant [18 x i8] c"atmel_hsmc_nc_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2379, i32 47 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2353, i32 24 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2355, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [26 x i8] c"atmel_nand_controller_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2018, i32 41 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2043, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2053, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2062, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2066, i32 46 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2068, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2076, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1105, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1994, i32 15 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2007, i32 9 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2010, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2145, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2152, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2159, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2168, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2175, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2186, i32 21 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2188, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2191, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2198, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2209, i32 21 }
@___asan_gen_.353 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2211, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2214, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2221, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2249, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2260, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2265, i32 38 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2267, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2275, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2280, i32 7 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2282, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2290, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1862, i32 33 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1864, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1870, i32 33 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1872, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1813, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1826, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1836, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 464, i32 31 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1629, i32 46 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1632, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1643, i32 10 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1643, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1645, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1660, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1668, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1680, i32 33 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1689, i32 11 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1690, i32 11 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1692, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1706, i32 10 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1707, i32 10 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1709, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1734, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1742, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1748, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1210, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1122, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1129, i32 47 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1134, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 800, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 865, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 830, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1079, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 460, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 337, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 342, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 347, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 352, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 87, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 377, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 393, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 402, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 415, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 326, i32 6 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1008, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [21 x i8] c"atmel_hsmc_op_parser\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 686, i32 36 }
@___asan_gen_.671 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [17 x i8] c"atmel_smc_nc_ops\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2462, i32 47 }
@___asan_gen_.679 = private unnamed_addr constant [28 x i8] c"atmel_ebi_csa_regmap_of_ids\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1941, i32 34 }
@___asan_gen_.682 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2110, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2121, i32 9 }
@___asan_gen_.694 = private unnamed_addr constant [20 x i8] c"at91sam9260_ebi_csa\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1908, i32 48 }
@___asan_gen_.697 = private unnamed_addr constant [20 x i8] c"at91sam9261_ebi_csa\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1912, i32 48 }
@___asan_gen_.700 = private unnamed_addr constant [20 x i8] c"at91sam9263_ebi_csa\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1916, i32 48 }
@___asan_gen_.703 = private unnamed_addr constant [19 x i8] c"at91sam9rl_ebi_csa\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1920, i32 48 }
@___asan_gen_.706 = private unnamed_addr constant [20 x i8] c"at91sam9g45_ebi_csa\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1924, i32 48 }
@___asan_gen_.709 = private unnamed_addr constant [20 x i8] c"at91sam9n12_ebi_csa\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1928, i32 48 }
@___asan_gen_.712 = private unnamed_addr constant [19 x i8] c"at91sam9x5_ebi_csa\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1932, i32 48 }
@___asan_gen_.715 = private unnamed_addr constant [16 x i8] c"sam9x60_ebi_csa\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1936, i32 48 }
@___asan_gen_.718 = private unnamed_addr constant [21 x i8] c"atmel_rm9200_nc_caps\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2455, i32 48 }
@___asan_gen_.721 = private unnamed_addr constant [22 x i8] c"atmel_sam9260_nc_caps\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2471, i32 48 }
@___asan_gen_.724 = private unnamed_addr constant [22 x i8] c"atmel_sam9261_nc_caps\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2478, i32 48 }
@___asan_gen_.727 = private unnamed_addr constant [22 x i8] c"atmel_sam9g45_nc_caps\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2485, i32 48 }
@___asan_gen_.730 = private unnamed_addr constant [20 x i8] c"atmel_sama5_nc_caps\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2388, i32 48 }
@___asan_gen_.733 = private unnamed_addr constant [26 x i8] c"microchip_sam9x60_nc_caps\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2493, i32 48 }
@___asan_gen_.736 = private unnamed_addr constant [23 x i8] c"atmel_rm9200_nand_caps\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2502, i32 48 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2458, i32 25 }
@___asan_gen_.742 = private unnamed_addr constant [18 x i8] c"at91rm9200_nc_ops\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2447, i32 47 }
@___asan_gen_.745 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.746 = private constant [48 x i8] c"../drivers/mtd/nand/raw/atmel/nand-controller.c\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 2497, i32 25 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_avoiddma249, ptr @__UNIQUE_ID_avoiddmatype250, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_atmel_nand_controller_driver_exit, ptr @__initcall__kmod_atmel_nand_controller__274_2657_atmel_nand_controller_driver_init6, ptr @__param_avoiddma, ptr @atmel_hsmc_nand_controller_init._entry, ptr @atmel_hsmc_nand_controller_init._entry.61, ptr @atmel_hsmc_nand_controller_init._entry.64, ptr @atmel_hsmc_nand_controller_init._entry.67, ptr @atmel_hsmc_nand_controller_init._entry.71, ptr @atmel_hsmc_nand_controller_init._entry.74, ptr @atmel_hsmc_nand_controller_init._entry_ptr, ptr @atmel_hsmc_nand_controller_init._entry_ptr.62, ptr @atmel_hsmc_nand_controller_init._entry_ptr.66, ptr @atmel_hsmc_nand_controller_init._entry_ptr.69, ptr @atmel_hsmc_nand_controller_init._entry_ptr.73, ptr @atmel_hsmc_nand_controller_init._entry_ptr.76, ptr @atmel_hsmc_nand_controller_legacy_init._entry, ptr @atmel_hsmc_nand_controller_legacy_init._entry.32, ptr @atmel_hsmc_nand_controller_legacy_init._entry.35, ptr @atmel_hsmc_nand_controller_legacy_init._entry.38, ptr @atmel_hsmc_nand_controller_legacy_init._entry.41, ptr @atmel_hsmc_nand_controller_legacy_init._entry.46, ptr @atmel_hsmc_nand_controller_legacy_init._entry.49, ptr @atmel_hsmc_nand_controller_legacy_init._entry.55, ptr @atmel_hsmc_nand_controller_legacy_init._entry.57, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.34, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.37, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.40, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.43, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.48, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.51, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.56, ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.59, ptr @atmel_hsmc_nand_controller_probe._entry, ptr @atmel_hsmc_nand_controller_probe._entry_ptr, ptr @atmel_hsmc_nand_pmecc_read_pg._entry, ptr @atmel_hsmc_nand_pmecc_read_pg._entry_ptr, ptr @atmel_hsmc_nand_pmecc_write_pg._entry, ptr @atmel_hsmc_nand_pmecc_write_pg._entry_ptr, ptr @atmel_nand_attach_chip._entry, ptr @atmel_nand_attach_chip._entry_ptr, ptr @atmel_nand_controller_add_nand._entry, ptr @atmel_nand_controller_add_nand._entry.117, ptr @atmel_nand_controller_add_nand._entry.120, ptr @atmel_nand_controller_add_nand._entry_ptr, ptr @atmel_nand_controller_add_nand._entry_ptr.119, ptr @atmel_nand_controller_add_nand._entry_ptr.122, ptr @atmel_nand_controller_add_nands._entry, ptr @atmel_nand_controller_add_nands._entry.81, ptr @atmel_nand_controller_add_nands._entry_ptr, ptr @atmel_nand_controller_add_nands._entry_ptr.83, ptr @atmel_nand_controller_driver_exit, ptr @atmel_nand_controller_init._entry, ptr @atmel_nand_controller_init._entry.15, ptr @atmel_nand_controller_init._entry.19, ptr @atmel_nand_controller_init._entry.22, ptr @atmel_nand_controller_init._entry_ptr, ptr @atmel_nand_controller_init._entry_ptr.17, ptr @atmel_nand_controller_init._entry_ptr.21, ptr @atmel_nand_controller_init._entry_ptr.24, ptr @atmel_nand_controller_legacy_add_nands._entry, ptr @atmel_nand_controller_legacy_add_nands._entry.86, ptr @atmel_nand_controller_legacy_add_nands._entry.89, ptr @atmel_nand_controller_legacy_add_nands._entry_ptr, ptr @atmel_nand_controller_legacy_add_nands._entry_ptr.88, ptr @atmel_nand_controller_legacy_add_nands._entry_ptr.91, ptr @atmel_nand_controller_probe._entry, ptr @atmel_nand_controller_probe._entry_ptr, ptr @atmel_nand_create._entry, ptr @atmel_nand_create._entry.100, ptr @atmel_nand_create._entry.103, ptr @atmel_nand_create._entry.108, ptr @atmel_nand_create._entry.112, ptr @atmel_nand_create._entry.98, ptr @atmel_nand_create._entry_ptr, ptr @atmel_nand_create._entry_ptr.102, ptr @atmel_nand_create._entry_ptr.104, ptr @atmel_nand_create._entry_ptr.109, ptr @atmel_nand_create._entry_ptr.113, ptr @atmel_nand_create._entry_ptr.99, ptr @atmel_nand_dma_transfer._entry, ptr @atmel_nand_dma_transfer._entry.153, ptr @atmel_nand_dma_transfer._entry.156, ptr @atmel_nand_dma_transfer._entry_ptr, ptr @atmel_nand_dma_transfer._entry_ptr.155, ptr @atmel_nand_dma_transfer._entry_ptr.158, ptr @atmel_nand_ecc_init._entry, ptr @atmel_nand_ecc_init._entry_ptr, ptr @atmel_nand_pmecc_correct_data._entry, ptr @atmel_nand_pmecc_correct_data._entry_ptr, ptr @atmel_nand_pmecc_enable._entry, ptr @atmel_nand_pmecc_enable._entry_ptr, ptr @atmel_nand_pmecc_generate_eccbytes._entry, ptr @atmel_nand_pmecc_generate_eccbytes._entry_ptr, ptr @atmel_nand_pmecc_init._entry, ptr @atmel_nand_pmecc_init._entry_ptr, ptr @atmel_nfc_exec_op._entry, ptr @atmel_nfc_exec_op._entry_ptr, ptr @atmel_nfc_wait._entry, ptr @atmel_nfc_wait._entry.141, ptr @atmel_nfc_wait._entry.144, ptr @atmel_nfc_wait._entry.147, ptr @atmel_nfc_wait._entry_ptr, ptr @atmel_nfc_wait._entry_ptr.143, ptr @atmel_nfc_wait._entry_ptr.146, ptr @atmel_nfc_wait._entry_ptr.149, ptr @atmel_smc_nand_controller_init._entry, ptr @atmel_smc_nand_controller_init._entry_ptr, ptr @atmel_nand_controller_driver, ptr @.str, ptr @atmel_nand_controller_of_ids, ptr @atmel_nand_controller_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @atmel_sama5_nand_caps, ptr @.str.7, ptr @atmel_sam9g45_nand_caps, ptr @.str.8, ptr @atmel_sam9261_nand_caps, ptr @atmel_hsmc_nc_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @atmel_nand_controller_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @nand_controller_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @atmel_hsmc_nand_controller_legacy_init._key, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @atmel_hsmc_nand_controller_legacy_init._key.53, ptr @.str.54, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.101, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @init_completion.__key, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @atmel_hsmc_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @atmel_smc_nc_ops, ptr @atmel_ebi_csa_regmap_of_ids, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @at91sam9260_ebi_csa, ptr @at91sam9261_ebi_csa, ptr @at91sam9263_ebi_csa, ptr @at91sam9rl_ebi_csa, ptr @at91sam9g45_ebi_csa, ptr @at91sam9n12_ebi_csa, ptr @at91sam9x5_ebi_csa, ptr @sam9x60_ebi_csa, ptr @atmel_rm9200_nc_caps, ptr @atmel_sam9260_nc_caps, ptr @atmel_sam9261_nc_caps, ptr @atmel_sam9g45_nc_caps, ptr @atmel_sama5_nc_caps, ptr @microchip_sam9x60_nc_caps, ptr @atmel_rm9200_nand_caps, ptr @.str.171, ptr @at91rm9200_nc_ops, ptr @.str.172], section "llvm.metadata"
@0 = internal global [194 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_of_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sama5_nand_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9g45_nand_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9261_nand_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_legacy_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_controller_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_add_nands._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_add_nands._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_legacy_add_nands._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_legacy_add_nands._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_legacy_add_nands._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_create._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_create._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_create._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_create._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_create._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_add_nand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_add_nand._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_controller_add_nand._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_ecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_pmecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_pmecc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_pmecc_correct_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_pmecc_generate_eccbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_pmecc_read_pg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nfc_exec_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nfc_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nfc_wait._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nfc_wait._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nfc_wait._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_dma_transfer._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_nand_dma_transfer._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_nand_pmecc_write_pg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hsmc_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_smc_nc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ebi_csa_regmap_of_ids to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_smc_nand_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9260_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9261_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9263_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9rl_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9n12_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x60_ebi_csa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_rm9200_nc_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9260_nc_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9261_nc_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9g45_nc_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sama5_nc_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_sam9x60_nc_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_rm9200_nand_caps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_nc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_nand_controller_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_nand_controller_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_nand_controller_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ale_offs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = inttoptr i32 %3 to ptr
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %caps.0 = phi ptr [ %4, %if.then ], [ %call, %if.else ]
  %tobool2.not = icmp eq ptr %caps.0, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %legacy_of_bindings = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %caps.0, i32 0, i32 1
  %5 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %legacy_of_bindings, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end5.if.end24_crit_edge, label %if.then7

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ale_offs) #7
  %7 = ptrtoint ptr %ale_offs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 21, ptr %ale_offs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_get_compatible_child(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then7.if.end12_crit_edge, label %if.then11

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %call9) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then7.if.end12_crit_edge
  %caps.1 = phi ptr [ @atmel_sama5_nand_caps, %if.then11 ], [ %caps.0, %if.then7.if.end12_crit_edge ]
  %10 = ptrtoint ptr %caps.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caps.1, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, ptr %caps.1, ptr @atmel_sam9g45_nand_caps
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end12.if.end18_crit_edge
  %caps.2 = phi ptr [ %caps.1, %if.end12.if.end18_crit_edge ], [ %spec.select, %land.lhs.true ]
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull %ale_offs, i32 noundef 1, i32 noundef 0) #7
  %16 = ptrtoint ptr %ale_offs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ale_offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %17)
  %cmp.not = icmp eq i32 %17, 21
  %spec.select38 = select i1 %cmp.not, ptr %caps.2, ptr @atmel_sam9261_nand_caps
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ale_offs) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.end5.if.end24_crit_edge
  %caps.4 = phi ptr [ %spec.select38, %if.end18 ], [ %caps.0, %if.end5.if.end24_crit_edge ]
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %caps.4, i32 0, i32 5
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call25 = call i32 %21(ptr noundef %pdev, ptr noundef %caps.4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remove, align 4
  %call1 = tail call i32 %7(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_controller_probe(ptr noundef %pdev, ptr noundef %caps) #2 align 64 {
entry:
  %args.i95.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %regmap_conf.i = alloca %struct.regmap_config, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 240, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @atmel_nand_controller_init(ptr noundef nonnull %call.i, ptr noundef %pdev, ptr noundef %caps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %legacy_of_bindings = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %caps, i32 0, i32 1
  %0 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy_of_bindings, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_conf.i) #7
  %2 = call ptr @memset(ptr %regmap_conf.i, i32 0, i32 172)
  %3 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_conf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %3, align 4
  %5 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_conf.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %5, align 4
  %7 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_conf.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %7, align 4
  %dev1.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %11 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %of_node.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %12 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call.i56 = tail call ptr @of_get_compatible_child(ptr noundef %14, ptr noundef nonnull @.str.6) #7
  %tobool.not.i = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.30) #10
  br label %atmel_hsmc_nand_controller_legacy_init.exit

if.end.i:                                         ; preds = %if.then7
  %call3.i = tail call ptr @of_clk_get(ptr noundef nonnull %call.i56, i32 noundef 0) #7
  %clk.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call3.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef %16) #10
  br label %out.i

if.end12.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end12.i.do.end19.i_crit_edge

if.end12.i.do.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19.i

if.end.i.i:                                       ; preds = %if.end12.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end20.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call3.i) #7
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then3.i.i, %if.end12.i.do.end19.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end12.i.do.end19.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i.ph.i) #10
  br label %out.i

if.end20.i:                                       ; preds = %if.end.i.i
  %call21.i = tail call i32 @of_irq_get(ptr noundef %14, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call21.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp.i = icmp slt i32 %call21.i, 1
  br i1 %cmp.i, label %if.then23.i, label %if.end32.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool25.not.i = icmp eq i32 %call21.i, 0
  %..i = select i1 %tobool25.not.i, i32 -6, i32 %call21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %..i)
  %cmp26.not.i = icmp eq i32 %..i, -517
  br i1 %cmp26.not.i, label %if.then23.i.out.i_crit_edge, label %do.end30.i

if.then23.i.out.i_crit_edge:                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

do.end30.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.39, i32 noundef %..i) #10
  br label %out.i

if.end32.i:                                       ; preds = %if.end20.i
  %call33.i = call i32 @of_address_to_resource(ptr noundef nonnull %call.i56, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %call33.i) #10
  br label %out.i

if.end39.i:                                       ; preds = %if.end32.i
  %call40.i = call ptr @devm_ioremap_resource(ptr noundef %10, ptr noundef nonnull %res.i) #7
  %cmp.i164.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164.i, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call40.i to i32
  br label %out.i

if.end44.i:                                       ; preds = %if.end39.i
  %19 = ptrtoint ptr %regmap_conf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.44, ptr %regmap_conf.i, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  %22 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %res.i, align 4
  %add.i.i = add i32 %21, -3
  %sub.i = sub i32 %add.i.i, %23
  %max_register.i = getelementptr inbounds %struct.regmap_config, ptr %regmap_conf.i, i32 0, i32 19
  %24 = ptrtoint ptr %max_register.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %max_register.i, align 4
  %call46.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %10, ptr noundef null, ptr noundef %call40.i, ptr noundef nonnull %regmap_conf.i, ptr noundef nonnull @atmel_hsmc_nand_controller_legacy_init._key, ptr noundef nonnull @.str.45) #7
  %io.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call46.i, ptr %io.i, align 4
  %cmp.i165.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165.i, label %if.then49.i, label %if.end55.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call46.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef %26) #10
  br label %out.i

if.end55.i:                                       ; preds = %if.end44.i
  %call56.i = call i32 @of_address_to_resource(ptr noundef nonnull %call.i56, i32 noundef 1, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end62.i, label %do.end61.i

do.end61.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.50, i32 noundef %call56.i) #10
  br label %out.i

if.end62.i:                                       ; preds = %if.end55.i
  %call63.i = call ptr @devm_ioremap_resource(ptr noundef %10, ptr noundef nonnull %res.i) #7
  %cmp.i166.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %if.then65.i, label %if.end67.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call63.i to i32
  br label %out.i

if.end67.i:                                       ; preds = %if.end62.i
  %28 = ptrtoint ptr %regmap_conf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.52, ptr %regmap_conf.i, align 4
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %11, align 4
  %31 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %res.i, align 4
  %add.i169.i = add i32 %30, -3
  %sub70.i = sub i32 %add.i169.i, %32
  %33 = ptrtoint ptr %max_register.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub70.i, ptr %max_register.i, align 4
  %call73.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %10, ptr noundef null, ptr noundef %call63.i, ptr noundef nonnull %regmap_conf.i, ptr noundef nonnull @atmel_hsmc_nand_controller_legacy_init._key.53, ptr noundef nonnull @.str.54) #7
  %smc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %smc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call73.i, ptr %smc.i, align 4
  %cmp.i170.i = icmp ugt ptr %call73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %if.then78.i, label %if.end85.i

if.then78.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call73.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, i32 noundef %35) #10
  br label %out.i

if.end85.i:                                       ; preds = %if.end67.i
  %call86.i = call i32 @of_address_to_resource(ptr noundef nonnull %call.i56, i32 noundef 2, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end92.i, label %do.end91.i

do.end91.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.58, i32 noundef %call86.i) #10
  br label %out.i

if.end92.i:                                       ; preds = %if.end85.i
  %call93.i = call ptr @devm_ioremap_resource(ptr noundef %10, ptr noundef nonnull %res.i) #7
  %virt.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call93.i, ptr %virt.i, align 4
  %cmp.i171.i = icmp ugt ptr %call93.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171.i, label %if.then97.i, label %if.end101.i

if.then97.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call93.i to i32
  br label %out.i

if.end101.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %res.i, align 4
  %dma.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dma.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end101.i, %if.then97.i, %do.end91.i, %if.then78.i, %if.then65.i, %do.end61.i, %if.then49.i, %if.then42.i, %do.end38.i, %do.end30.i, %if.then23.i.out.i_crit_edge, %do.end19.i, %if.then6.i
  %ret.0.i = phi i32 [ %16, %if.then6.i ], [ %retval.0.i.ph.i, %do.end19.i ], [ %..i, %do.end30.i ], [ -517, %if.then23.i.out.i_crit_edge ], [ %call33.i, %do.end38.i ], [ %18, %if.then42.i ], [ %26, %if.then49.i ], [ %call56.i, %do.end61.i ], [ %27, %if.then65.i ], [ %35, %if.then78.i ], [ %call86.i, %do.end91.i ], [ %37, %if.then97.i ], [ 0, %if.end101.i ]
  call void @of_node_put(ptr noundef nonnull %call.i56) #7
  br label %atmel_hsmc_nand_controller_legacy_init.exit

atmel_hsmc_nand_controller_legacy_init.exit:      ; preds = %out.i, %do.end.i
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_conf.i) #7
  br label %if.end10

if.else:                                          ; preds = %if.end5
  %dev1.i57 = getelementptr inbounds %struct.atmel_nand_controller, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %dev1.i57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i57, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i, align 8
  %of_node.i58 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %of_node.i58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i58, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %47 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i59 = call i32 @__of_parse_phandle_with_args(ptr noundef %46, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %call.i.i59, 0
  br i1 %tobool.not.i.i60, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %do.end.i62

of_parse_phandle.exit.i:                          ; preds = %if.else
  %48 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i61 = icmp eq ptr %49, null
  br i1 %tobool.not.i61, label %of_parse_phandle.exit.i.do.end.i62_crit_edge, label %if.end.i66

of_parse_phandle.exit.i.do.end.i62_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i62

do.end.i62:                                       ; preds = %of_parse_phandle.exit.i.do.end.i62_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end.i66:                                       ; preds = %of_parse_phandle.exit.i
  %call2.i = call ptr @atmel_hsmc_get_reg_layout(ptr noundef nonnull %49) #7
  %hsmc_layout.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %hsmc_layout.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call2.i, ptr %hsmc_layout.i, align 4
  %call3.i63 = call i32 @of_irq_get(ptr noundef nonnull %49, i32 noundef 0) #7
  %irq.i64 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %irq.i64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call3.i63, ptr %irq.i64, align 4
  call void @of_node_put(ptr noundef nonnull %49) #7
  %52 = ptrtoint ptr %irq.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i65 = icmp slt i32 %53, 1
  br i1 %cmp.i65, label %if.then5.i, label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not.i = icmp eq i32 %53, 0
  %..i67 = select i1 %tobool7.not.i, i32 -6, i32 %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %..i67)
  %cmp8.not.i = icmp eq i32 %..i67, -517
  br i1 %cmp8.not.i, label %if.then5.i.cleanup_crit_edge, label %do.end12.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end12.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.39, i32 noundef %..i67) #10
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i66
  %of_node15.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %54 = ptrtoint ptr %of_node15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node15.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i95.i) #7
  %56 = call ptr @memset(ptr %args.i95.i, i32 255, i32 72)
  %call.i96.i = call i32 @__of_parse_phandle_with_args(ptr noundef %55, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i95.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool.not.i97.i, label %of_parse_phandle.exit100.i, label %of_parse_phandle.exit100.thread.i

of_parse_phandle.exit100.thread.i:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i95.i) #7
  br label %do.end21.i

of_parse_phandle.exit100.i:                       ; preds = %if.end14.i
  %57 = ptrtoint ptr %args.i95.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %args.i95.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i95.i) #7
  %tobool17.not.i = icmp eq ptr %58, null
  br i1 %tobool17.not.i, label %of_parse_phandle.exit100.i.do.end21.i_crit_edge, label %if.end22.i

of_parse_phandle.exit100.i.do.end21.i_crit_edge:  ; preds = %of_parse_phandle.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end21.i:                                       ; preds = %of_parse_phandle.exit100.i.do.end21.i_crit_edge, %of_parse_phandle.exit100.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.65) #10
  br label %cleanup

if.end22.i:                                       ; preds = %of_parse_phandle.exit100.i
  %call23.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %58) #7
  %io.i68 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %io.i68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call23.i, ptr %io.i68, align 4
  call void @of_node_put(ptr noundef nonnull %58) #7
  %60 = ptrtoint ptr %io.i68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io.i68, align 4
  %cmp.i.i69 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i69, label %if.then26.i, label %if.end32.i70

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.68, i32 noundef %62) #10
  br label %if.end10

if.end32.i70:                                     ; preds = %if.end22.i
  %63 = ptrtoint ptr %dev1.i57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1.i57, align 4
  %of_node35.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %of_node35.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node35.i, align 8
  %call36.i = call ptr @of_gen_pool_get(ptr noundef %66, ptr noundef nonnull @.str.70, i32 noundef 0) #7
  %sram.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 1
  %67 = ptrtoint ptr %sram.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call36.i, ptr %sram.i, align 4
  %tobool39.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool39.not.i, label %do.end43.i, label %if.end46.i

do.end43.i:                                       ; preds = %if.end32.i70
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %dev1.i57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.72) #10
  br label %cleanup

if.end46.i:                                       ; preds = %if.end32.i70
  %dma.i71 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 1, i32 2
  %call50.i = call ptr @gen_pool_dma_alloc(ptr noundef nonnull %call36.i, i32 noundef 9216, ptr noundef %dma.i71) #7
  %virt.i72 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %virt.i72 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call50.i, ptr %virt.i72, align 4
  %tobool54.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool54.not.i, label %do.end58.i, label %if.end46.i.if.end13_crit_edge

if.end46.i.if.end13_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end58.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dev1.i57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.75) #10
  br label %cleanup

if.end10:                                         ; preds = %if.then26.i, %atmel_hsmc_nand_controller_legacy_init.exit
  %ret.0 = phi i32 [ %retval.0.i, %atmel_hsmc_nand_controller_legacy_init.exit ], [ %62, %if.then26.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.end10.if.end13_crit_edge, %if.end46.i.if.end13_crit_edge
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %call.i, i32 0, i32 3
  %73 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %smc, align 4
  %call15 = call i32 @regmap_write(ptr noundef %74, i32 noundef 16, i32 noundef -1) #7
  %irq = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %call.i, i32 0, i32 7
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 4
  %call.i74 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %76, ptr noundef nonnull @atmel_nfc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool17.not = icmp eq i32 %call.i74, 0
  br i1 %tobool17.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i74) #10
  br label %err

if.end19:                                         ; preds = %if.end13
  %77 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %smc, align 4
  %call22 = call i32 @regmap_write(ptr noundef %78, i32 noundef 0, i32 noundef 8323072) #7
  %79 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %smc, align 4
  %call25 = call i32 @regmap_write(ptr noundef %80, i32 noundef 4, i32 noundef 1) #7
  %call27 = call fastcc i32 @atmel_nand_controller_add_nands(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end19.cleanup_crit_edge, label %if.end19.err_crit_edge

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end19.err_crit_edge, %do.end
  %ret.1 = phi i32 [ %call.i74, %do.end ], [ %call27, %if.end19.err_crit_edge ]
  %call32 = call i32 @atmel_hsmc_nand_controller_remove(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end58.i, %do.end43.i, %do.end21.i, %do.end12.i, %if.then5.i.cleanup_crit_edge, %do.end.i62, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end10.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -517, %if.then5.i.cleanup_crit_edge ], [ %..i67, %do.end12.i ], [ -22, %do.end.i62 ], [ -22, %do.end21.i ], [ -12, %do.end43.i ], [ -12, %do.end58.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_controller_remove(ptr noundef readonly %nc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chips.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6
  %0 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chips.i, align 4
  %cmp.not21.i = icmp eq ptr %1, %chips.i
  br i1 %cmp.not21.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %nand.022.i = phi ptr [ %tmp.024.i, %atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.024.i = load ptr, ptr %nand.022.i, align 8
  %base.i.i = getelementptr inbounds %struct.atmel_nand, ptr %nand.022.i, i32 0, i32 2
  %call1.i.i = tail call i32 @mtd_device_unregister(ptr noundef %base.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i
  tail call void @nand_cleanup(ptr noundef %base.i.i) #7
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nand.022.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge

if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_controller_remove_nand.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %nand.022.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nand.022.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %atmel_nand_controller_remove_nand.exit.i

atmel_nand_controller_remove_nand.exit.i:         ; preds = %if.end.i.i.i.i, %if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge
  %9 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %nand.022.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %nand.022.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.024.i, %chips.i
  br i1 %cmp.not.i, label %atmel_nand_controller_remove_nand.exit.i.if.end_crit_edge, label %atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge

atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge: ; preds = %atmel_nand_controller_remove_nand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

atmel_nand_controller_remove_nand.exit.i.if.end_crit_edge: ; preds = %atmel_nand_controller_remove_nand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %atmel_nand_controller_remove_nand.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 3
  %11 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 4, i32 noundef 2) #7
  %sram = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 1
  %13 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sram, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %virt = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt, align 4
  %17 = ptrtoint ptr %16 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %14, i32 noundef %17, i32 noundef 9216, ptr noundef null) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %clk = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 8
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %19) #7
  tail call void @clk_unprepare(ptr noundef nonnull %19) #7
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %21) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %dmac.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 4
  %22 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmac.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end12.atmel_nand_controller_cleanup.exit_crit_edge, label %if.then.i

if.end12.atmel_nand_controller_cleanup.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_controller_cleanup.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %23) #7
  br label %atmel_nand_controller_cleanup.exit

atmel_nand_controller_cleanup.exit:               ; preds = %if.then.i, %if.end12.atmel_nand_controller_cleanup.exit_crit_edge
  %mck.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 7
  %24 = ptrtoint ptr %mck.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mck.i, align 4
  tail call void @clk_put(ptr noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %atmel_nand_controller_cleanup.exit, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atmel_nand_controller_cleanup.exit ], [ %call1.i.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atmel_nand_init(ptr noundef %nc, ptr nocapture noundef %nand) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 0, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 8
  %controller = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nc, ptr %controller, align 4
  %mck = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 7
  %4 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mck, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 1
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %setup_interface = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %setup_interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setup_interface, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %options = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %options, align 8
  %or = or i32 %13, 8388608
  store i32 %or, ptr %options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %dmac = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 4
  %14 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmac, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %options7 = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %options7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %options7, align 8
  %or8 = or i32 %17, 1048576
  store i32 %or8, ptr %options7, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %pmecc = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 5
  %18 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmecc, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %ecc = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 33
  %20 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %ecc, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_ecc_init(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atmel_nand_ecc_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %2 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @atmel_hsmc_nand_pmecc_read_page, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %3 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atmel_hsmc_nand_pmecc_write_page, ptr %write_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %4 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @atmel_hsmc_nand_pmecc_read_page_raw, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %5 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atmel_hsmc_nand_pmecc_write_page_raw, ptr %write_page_raw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_setup_interface(ptr noundef %nand, i32 noundef %csline, ptr noundef %conf) #2 align 64 {
entry:
  %smcconf = alloca %struct.atmel_smc_cs_conf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %smcconf) #7
  %controller = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %0 = call ptr @memset(ptr %smcconf, i32 255, i32 20)
  %1 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %controller, align 4
  %call1 = call fastcc i32 @atmel_smc_nand_prepare_smcconf(ptr noundef %nand, ptr noundef %conf, ptr noundef nonnull %smcconf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline
  %smcconf5 = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline, i32 4
  %3 = call ptr @memcpy(ptr %smcconf5, ptr %smcconf, i32 20)
  %rb = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline, i32 1
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then7, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline, i32 1, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shl = shl i32 %8, 28
  %timings = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline, i32 4, i32 3
  %9 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timings, align 4
  %or = or i32 %10, %shl
  store i32 %or, ptr %timings, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3.if.end10_crit_edge
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc, align 4
  %hsmc_layout = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %hsmc_layout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsmc_layout, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @atmel_hsmc_cs_conf_apply(ptr noundef %12, ptr noundef %14, i32 noundef %16, ptr noundef %smcconf5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %smcconf) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_exec_op(ptr noundef %nand, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  %writesize.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize.i, align 4
  %div21.i = lshr i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %tobool.not.i.i = icmp ult i32 %3, 512
  %4 = tail call i32 @llvm.ctlz.i32(i32 %div21.i, i1 true) #7, !range !387
  %sub.i.op.i = xor i32 %4, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -513, i32 %sub.i.op.i
  %oobsize.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 0, i32 0, i32 6
  %5 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize.i, align 4
  %7 = shl i32 %6, 22
  %shl.i = and i32 %7, -16777216
  %or.i = or i32 %shl.i, %sub.i
  %or3.i = or i32 %or.i, 512
  %arrayidx.i = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %1
  %activecs.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 3
  %8 = ptrtoint ptr %activecs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %activecs.i, align 8
  %controller.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %9 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller.i, align 4
  %cfg7.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %or3.i)
  %cmp.i = icmp eq i32 %12, %or3.i
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %smc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %smc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 2130707207, i32 noundef %or3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or3.i, ptr %cfg7.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %base1 = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2
  %call2 = tail call i32 @nand_op_parser_exec_op(ptr noundef %base1, ptr noundef nonnull @atmel_hsmc_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_controller_init(ptr noundef %nc, ptr noundef %pdev, ptr noundef %caps) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %nc, ptr noundef nonnull @.str.25, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.nand_controller, ptr %nc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @atmel_nand_controller_ops, ptr %ops, align 4
  %chips = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6
  %1 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chips, ptr %prev.i, align 4
  %dev3 = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 4
  %caps4 = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 1
  %4 = ptrtoint ptr %caps4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %caps, ptr %caps4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nc, ptr %driver_data.i.i, align 4
  %call = tail call ptr @devm_atmel_pmecc_get(ptr noundef %dev1) #7
  %pmecc = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 5
  %6 = ptrtoint ptr %pmecc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %pmecc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %caps4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %12 = load i8, ptr @atmel_nand_avoid_dma, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask) #7
  %call13 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %dmac = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 4
  %14 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13, ptr %dmac, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %do.end, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then12.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %17 = ptrtoint ptr %caps4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps4, align 4
  %legacy_of_bindings = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %legacy_of_bindings, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool21.not = icmp eq i8 %20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %of_node24 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node24, align 8
  %call25 = call ptr @of_clk_get(ptr noundef %24, i32 noundef 0) #7
  %mck = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 7
  %25 = ptrtoint ptr %mck to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call25, ptr %mck, align 4
  %cmp.i87 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  %26 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mck, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  %of_node36 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node36, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %33 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %32, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end42

of_parse_phandle.exit:                            ; preds = %if.end34
  %34 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool38.not = icmp eq ptr %35, null
  br i1 %tobool38.not, label %of_parse_phandle.exit.do.end42_crit_edge, label %if.end43

of_parse_phandle.exit.do.end42_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %of_parse_phandle.exit.do.end42_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end43:                                         ; preds = %of_parse_phandle.exit
  %call44 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %35) #7
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 3
  %36 = ptrtoint ptr %smc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call44, ptr %smc, align 4
  call void @of_node_put(ptr noundef nonnull %35) #7
  %37 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smc, align 4
  %cmp.i88 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end43.cleanup_crit_edge, %do.end42, %do.end31, %if.end19.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ %28, %do.end31 ], [ %39, %if.then47 ], [ -22, %do.end42 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nfc_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #7
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !388
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smc, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %sr) #7
  %3 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sr, align 4
  %wait = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %data, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wait, align 4
  %or = or i32 %6, 15728640
  %and = and i32 %or, %4
  %and.i = and i32 %4, 15728640
  %errors.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %data, i32 0, i32 4, i32 7
  %7 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %errors.i, align 4
  %or.i = or i32 %8, %and.i
  store i32 %or.i, ptr %errors.i, align 4
  %9 = xor i32 %4, -1
  %xor.i = and i32 %6, %9
  store i32 %xor.i, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i = icmp eq i32 %xor.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool5.i = icmp ne i32 %or.i, 0
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %tobool5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smc, align 4
  %call5 = call i32 @regmap_write(ptr noundef %11, i32 noundef 16, i32 noundef %and) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %spec.select.i, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %complete = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %data, i32 0, i32 5
  call void @complete(ptr noundef %complete) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_controller_add_nands(ptr noundef %nc) unnamed_addr #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !388
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 1
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 4
  %legacy_of_bindings = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %legacy_of_bindings, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2244, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup25_crit_edge, label %if.end.i

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end.i:                                         ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %numcs.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %numcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %numcs.i, align 4
  %call3.i = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0) #7
  %call4.i = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %call3.i) #7
  %cs.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 0, i32 7
  %io.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 1, i32 2
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4.i, ptr %io.i, align 8
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end16.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call4.i to i32
  br label %cleanup25

if.end16.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call3.i, align 4
  %dma.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 1, i32 2, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dma.i, align 4
  %13 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %cs.i, align 8
  %call22.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 1) #7
  %cmp.i98.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i, label %do.end.i, label %if.end27.i

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call22.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.84, i32 noundef %14) #10
  br label %cleanup25

if.end27.i:                                       ; preds = %if.end16.i
  %tobool28.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool28.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then29.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %rb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %rb.i, align 4
  %16 = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 1, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22.i, ptr %16, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end35.i_crit_edge
  %call36.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %1, ptr noundef null, i32 noundef 1, i32 noundef 7) #7
  %cmp.i99.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %do.end41.i, label %if.end44.i

do.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call36.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %18) #10
  br label %cleanup25

if.end44.i:                                       ; preds = %if.end35.i
  %csgpio.i = getelementptr inbounds %struct.atmel_nand_cs, ptr %cs.i, i32 0, i32 2
  %19 = ptrtoint ptr %csgpio.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36.i, ptr %csgpio.i, align 4
  %20 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1, align 4
  %call48.i = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %21, ptr noundef null, i32 noundef 2, i32 noundef 1) #7
  %cmp.i100.i = icmp ugt ptr %call48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100.i, label %do.end53.i, label %if.end56.i

do.end53.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call48.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef %22) #10
  br label %cleanup25

if.end56.i:                                       ; preds = %if.end44.i
  %cdgpio.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %cdgpio.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call48.i, ptr %cdgpio.i, align 8
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 56, i32 27
  %28 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 13
  %29 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end56.i.nand_set_flash_node.exit.i_crit_edge

if.end56.i.nand_set_flash_node.exit.i_crit_edge:  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 @of_property_read_string(ptr noundef %27, ptr noundef nonnull @.str.92, ptr noundef %name.i.i.i) #7
  br label %nand_set_flash_node.exit.i

nand_set_flash_node.exit.i:                       ; preds = %if.then.i.i.i, %if.end56.i.nand_set_flash_node.exit.i_crit_edge
  %call58.i = tail call fastcc i32 @atmel_nand_controller_add_nand(ptr noundef %nc, ptr noundef nonnull %call.i.i) #7
  br label %cleanup25

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call.i.i51 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.77, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i51)
  %tobool3.not = icmp sgt i32 %call.i.i51, -1
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.78) #10
  br label %cleanup25

if.end5:                                          ; preds = %if.end
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %call.i.i52 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.80, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i52)
  %tobool7.not = icmp sgt i32 %call.i.i52, -1
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.82) #10
  br label %cleanup25

if.end12:                                         ; preds = %if.end5
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %add = add i32 %36, %34
  %call13 = call ptr @of_get_next_child(ptr noundef %32, ptr noundef null) #7
  %cmp.not92 = icmp eq ptr %call13, null
  br i1 %cmp.not92, label %if.end12.cleanup25_crit_edge, label %for.body.lr.ph

if.end12.cleanup25_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

for.body.lr.ph:                                   ; preds = %if.end12
  %mul.i = shl i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nand_np.093 = phi ptr [ %call13, %for.body.lr.ph ], [ %call23, %for.inc.for.body_crit_edge ]
  %call.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %nand_np.093, ptr noundef nonnull @.str.93, i32 noundef %mul.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  br i1 %cmp.i, label %do.end.i53, label %if.end.i56

do.end.i53:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.94) #10
  br label %if.then16

if.end.i56:                                       ; preds = %for.body
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 44) #7
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %41, i32 2200) #7
  %retval.0.i.i = select i1 %40, i32 -1, i32 %spec.select.i.i
  %call.i.i54 = call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef %retval.0.i.i, i32 noundef 3520) #7
  %tobool.not.i55 = icmp eq ptr %call.i.i54, null
  br i1 %tobool.not.i55, label %if.end.i56.if.then16_crit_edge, label %if.end7.i

if.end.i56.if.then16_crit_edge:                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end7.i:                                        ; preds = %if.end.i56
  %numcs8.i = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 6
  %42 = ptrtoint ptr %numcs8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i, ptr %numcs8.i, align 4
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %nand_np.093, i32 0, i32 3
  %call.i220.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %44, ptr noundef %fwnode.i, ptr noundef nonnull @.str.96, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.97) #7
  %cmp.i.i57 = icmp ugt ptr %call.i220.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i57, label %land.lhs.true.i, label %if.then24.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %cmp14.not.i = icmp eq ptr %call.i220.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp14.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %do.end18.i

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

do.end18.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call.i220.i to i32
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.90, i32 noundef %45) #10
  br label %atmel_nand_create.exit

if.then24.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %cdgpio.i58 = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 5
  %48 = ptrtoint ptr %cdgpio.i58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i220.i, ptr %cdgpio.i58, align 8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then24.i, %land.lhs.true.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0238.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %49 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i, align 4, !annotation !388
  %call27.i = call i32 @of_address_to_resource(ptr noundef nonnull %nand_np.093, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i59 = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i59, label %if.end35.i60, label %do.end32.i

do.end32.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.101, i32 noundef %call27.i) #10
  %53 = inttoptr i32 %call27.i to ptr
  br label %cleanup.thread.i

if.end35.i60:                                     ; preds = %for.body.i
  %mul36.i = mul i32 %i.0238.i, %add
  %call37.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.093, ptr noundef nonnull @.str.93, i32 noundef %mul36.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end45.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end35.i60
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.101, i32 noundef %call37.i) #10
  %56 = inttoptr i32 %call37.i to ptr
  br label %cleanup.thread.i

if.end45.i:                                       ; preds = %if.end35.i60
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i, align 4
  %arrayidx.i = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx.i, align 4
  %60 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %res.i, align 4
  %io.i61 = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 3
  %dma.i62 = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 3, i32 1
  %62 = ptrtoint ptr %dma.i62 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dma.i62, align 4
  %63 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1, align 4
  %call49.i = call ptr @devm_ioremap_resource(ptr noundef %64, ptr noundef nonnull %res.i) #7
  %65 = ptrtoint ptr %io.i61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call49.i, ptr %io.i61, align 4
  %cmp.i222.i = icmp ugt ptr %call49.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.i, label %if.end45.i.cleanup.thread.i_crit_edge, label %if.end64.i

if.end45.i.cleanup.thread.i_crit_edge:            ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end64.i:                                       ; preds = %if.end45.i
  %call.i.i.i63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %nand_np.093, ptr noundef nonnull @.str.105, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i63)
  %tobool66.not.i = icmp sgt i32 %call.i.i.i63, -1
  br i1 %tobool66.not.i, label %if.then67.i, label %if.else.i

if.then67.i:                                      ; preds = %if.end64.i
  %66 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %67)
  %cmp68.i = icmp ugt i32 %67, 7
  br i1 %cmp68.i, label %if.then67.i.cleanup.thread.i_crit_edge, label %if.end71.i

if.then67.i.cleanup.thread.i_crit_edge:           ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end71.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb.i64 = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 1
  %68 = ptrtoint ptr %rb.i64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %rb.i64, align 4
  %69 = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 1, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %69, align 4
  br label %if.end109.i

if.else.i:                                        ; preds = %if.end64.i
  %71 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1, align 4
  %call86.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %72, ptr noundef %fwnode.i, ptr noundef nonnull @.str.106, i32 noundef %i.0238.i, i32 noundef 1, ptr noundef nonnull @.str.107) #7
  %cmp.i223.i = icmp ugt ptr %call86.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223.i, label %land.lhs.true88.i, label %if.then100.i

land.lhs.true88.i:                                ; preds = %if.else.i
  %cmp90.not.i = icmp eq ptr %call86.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp90.not.i, label %land.lhs.true88.i.if.end109.i_crit_edge, label %do.end94.i

land.lhs.true88.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

do.end94.i:                                       ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %call86.i to i32
  %74 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.84, i32 noundef %73) #10
  br label %cleanup.thread.i

if.then100.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb103.i = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 1
  %76 = ptrtoint ptr %rb103.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %rb103.i, align 4
  %77 = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 1, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call86.i, ptr %77, align 4
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then100.i, %land.lhs.true88.i.if.end109.i_crit_edge, %if.end71.i
  %79 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1, align 4
  %call119.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %80, ptr noundef %fwnode.i, ptr noundef nonnull @.str.110, i32 noundef %i.0238.i, i32 noundef 7, ptr noundef nonnull @.str.111) #7
  %cmp.i225.i = icmp ugt ptr %call119.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225.i, label %land.lhs.true121.i, label %if.then133.i

land.lhs.true121.i:                               ; preds = %if.end109.i
  %cmp123.not.i = icmp eq ptr %call119.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp123.not.i, label %land.lhs.true121.i.for.inc.i_crit_edge, label %do.end127.i

land.lhs.true121.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end127.i:                                      ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %call119.i to i32
  %82 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.87, i32 noundef %81) #10
  br label %cleanup.thread.i

if.then133.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  %csgpio.i65 = getelementptr %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 7, i32 %i.0238.i, i32 2
  %84 = ptrtoint ptr %csgpio.i65 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call119.i, ptr %csgpio.i65, align 4
  br label %for.inc.i

cleanup.thread.i:                                 ; preds = %do.end127.i, %do.end94.i, %if.then67.i.cleanup.thread.i_crit_edge, %if.end45.i.cleanup.thread.i_crit_edge, %do.end42.i, %do.end32.i
  %retval.1.ph.i = phi ptr [ %53, %do.end32.i ], [ %56, %do.end42.i ], [ %call86.i, %do.end94.i ], [ %call119.i, %do.end127.i ], [ inttoptr (i32 -22 to ptr), %if.then67.i.cleanup.thread.i_crit_edge ], [ %call49.i, %if.end45.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %atmel_nand_create.exit

for.inc.i:                                        ; preds = %if.then133.i, %land.lhs.true121.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  %inc.i = add nuw nsw i32 %i.0238.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %of_node.i.i.i66 = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 2, i32 0, i32 0, i32 56, i32 27
  %85 = ptrtoint ptr %of_node.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %nand_np.093, ptr %of_node.i.i.i66, align 8
  %name.i.i.i67 = getelementptr inbounds %struct.atmel_nand, ptr %call.i.i54, i32 0, i32 2, i32 0, i32 0, i32 13
  %86 = ptrtoint ptr %name.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name.i.i.i67, align 8
  %tobool.not.i.i.i68 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i68, label %if.then.i.i.i69, label %for.end.i.atmel_nand_create.exit_crit_edge

for.end.i.atmel_nand_create.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_create.exit

if.then.i.i.i69:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i227.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.093, ptr noundef nonnull @.str.92, ptr noundef %name.i.i.i67) #7
  br label %atmel_nand_create.exit

atmel_nand_create.exit:                           ; preds = %if.then.i.i.i69, %for.end.i.atmel_nand_create.exit_crit_edge, %cleanup.thread.i, %do.end18.i
  %retval.2.i = phi ptr [ %call.i220.i, %do.end18.i ], [ %retval.1.ph.i, %cleanup.thread.i ], [ %call.i.i54, %for.end.i.atmel_nand_create.exit_crit_edge ], [ %call.i.i54, %if.then.i.i.i69 ]
  %cmp.i70 = icmp ugt ptr %retval.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %atmel_nand_create.exit.if.then16_crit_edge, label %if.end18

atmel_nand_create.exit.if.then16_crit_edge:       ; preds = %atmel_nand_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %atmel_nand_create.exit.if.then16_crit_edge, %if.end.i56.if.then16_crit_edge, %do.end.i53
  %retval.2.i75 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i53 ], [ inttoptr (i32 -12 to ptr), %if.end.i56.if.then16_crit_edge ], [ %retval.2.i, %atmel_nand_create.exit.if.then16_crit_edge ]
  %88 = ptrtoint ptr %retval.2.i75 to i32
  br label %err

if.end18:                                         ; preds = %atmel_nand_create.exit
  %call19 = call fastcc i32 @atmel_nand_controller_add_nand(ptr noundef %nc, ptr noundef %retval.2.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.inc, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.inc:                                          ; preds = %if.end18
  %call23 = call ptr @of_get_next_child(ptr noundef %32, ptr noundef nonnull %nand_np.093) #7
  %cmp.not = icmp eq ptr %call23, null
  br i1 %cmp.not, label %for.inc.cleanup25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

err:                                              ; preds = %if.end18.err_crit_edge, %if.then16
  %ret.0.ph = phi i32 [ %88, %if.then16 ], [ %call19, %if.end18.err_crit_edge ]
  %chips.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6
  %89 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chips.i, align 4
  %cmp.not21.i = icmp eq ptr %90, %chips.i
  br i1 %cmp.not21.i, label %err.cleanup25_crit_edge, label %err.for.body.i71_crit_edge

err.for.body.i71_crit_edge:                       ; preds = %err
  br label %for.body.i71

err.cleanup25_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

for.body.i71:                                     ; preds = %atmel_nand_controller_remove_nand.exit.i.for.body.i71_crit_edge, %err.for.body.i71_crit_edge
  %nand.022.i = phi ptr [ %tmp.024.i, %atmel_nand_controller_remove_nand.exit.i.for.body.i71_crit_edge ], [ %90, %err.for.body.i71_crit_edge ]
  %91 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %tmp.024.i = load ptr, ptr %nand.022.i, align 8
  %base.i.i = getelementptr inbounds %struct.atmel_nand, ptr %nand.022.i, i32 0, i32 2
  %call1.i.i = call i32 @mtd_device_unregister(ptr noundef %base.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i71.cleanup25_crit_edge

for.body.i71.cleanup25_crit_edge:                 ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end.i.i:                                       ; preds = %for.body.i71
  call void @nand_cleanup(ptr noundef %base.i.i) #7
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %nand.022.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge

if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_controller_remove_nand.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %nand.022.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i.i, align 4
  %94 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %nand.022.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %atmel_nand_controller_remove_nand.exit.i

atmel_nand_controller_remove_nand.exit.i:         ; preds = %if.end.i.i.i.i, %if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge
  %98 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %nand.022.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %nand.022.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.024.i, %chips.i
  br i1 %cmp.not.i, label %atmel_nand_controller_remove_nand.exit.i.cleanup25_crit_edge, label %atmel_nand_controller_remove_nand.exit.i.for.body.i71_crit_edge

atmel_nand_controller_remove_nand.exit.i.for.body.i71_crit_edge: ; preds = %atmel_nand_controller_remove_nand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i71

atmel_nand_controller_remove_nand.exit.i.cleanup25_crit_edge: ; preds = %atmel_nand_controller_remove_nand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

cleanup25:                                        ; preds = %atmel_nand_controller_remove_nand.exit.i.cleanup25_crit_edge, %for.body.i71.cleanup25_crit_edge, %err.cleanup25_crit_edge, %for.inc.cleanup25_crit_edge, %if.end12.cleanup25_crit_edge, %do.end11, %do.end, %nand_set_flash_node.exit.i, %do.end53.i, %do.end41.i, %do.end.i, %if.then10.i, %if.then.cleanup25_crit_edge
  %retval.0 = phi i32 [ %call.i.i51, %do.end ], [ %call.i.i52, %do.end11 ], [ %9, %if.then10.i ], [ %14, %do.end.i ], [ %18, %do.end41.i ], [ %22, %do.end53.i ], [ %call58.i, %nand_set_flash_node.exit.i ], [ -12, %if.then.cleanup25_crit_edge ], [ %ret.0.ph, %err.cleanup25_crit_edge ], [ 0, %if.end12.cleanup25_crit_edge ], [ %ret.0.ph, %for.body.i71.cleanup25_crit_edge ], [ %ret.0.ph, %atmel_nand_controller_remove_nand.exit.i.cleanup25_crit_edge ], [ 0, %for.inc.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_atmel_pmecc_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %ecc_init = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ecc_init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ecc_init, align 4
  %call3 = tail call i32 %7(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps, align 4
  %legacy_of_bindings = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %legacy_of_bindings, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %lor.lhs.false.if.then7_crit_edge, label %if.else

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %name = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 13
  %16 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.26, ptr %name, align 8
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %name8 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 13
  %17 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name8, align 8
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.then10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.else
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.then10.dev_name.exit_crit_edge ]
  %cs = getelementptr i8, ptr %chip, i32 2184
  %23 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cs, align 8
  %call14 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %13, i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i, i32 noundef %24) #7
  %25 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14, ptr %name8, align 8
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
  %controller = getelementptr i8, ptr %chip, i32 2052
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %exec_op = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %exec_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exec_op, align 4
  %call2 = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef %op, i1 noundef zeroext %check_only) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_setup_interface(ptr noundef %chip, i32 noundef %csline, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
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
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %numcs = getelementptr i8, ptr %chip, i32 2180
  %4 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numcs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %csline)
  %cmp.not = icmp sgt i32 %5, %csline
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %csline)
  %6 = icmp sgt i32 %csline, -2
  %or.cond = and i1 %6, %cmp.not
  br i1 %or.cond, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %controller = getelementptr i8, ptr %chip, i32 2052
  %7 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller, align 4
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %setup_interface = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %setup_interface to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %setup_interface, align 4
  %call9 = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef %csline, ptr noundef %conf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call9, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_hsmc_get_reg_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_controller_add_nand(ptr noundef %nc, ptr noundef %nand) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2
  %cdgpio = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 5
  %0 = ptrtoint ptr %cdgpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdgpio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.114) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %caps = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 1
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %nand_init = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nand_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nand_init, align 4
  tail call void %9(ptr noundef %nc, ptr noundef %nand) #7
  %numcs = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 6
  %10 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numcs, align 4
  %call.i = tail call i32 @nand_scan_with_ids(ptr noundef %base, i32 noundef %11, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.118, i32 noundef %call.i) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @mtd_device_parse_register(ptr noundef %base, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.121, i32 noundef %call12) #10
  tail call void @nand_cleanup(ptr noundef %base) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %chips = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %nand, ptr noundef %17, ptr noundef %chips) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %nand, ptr %prev.i, align 4
  %19 = ptrtoint ptr %nand to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chips, ptr %nand, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %nand, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %nand, ptr %17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end19.cleanup_crit_edge, %do.end17, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %do.end9 ], [ %call12, %do.end17 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_ecc_init(ptr noundef %chip) #2 align 64 {
entry:
  %req.i = alloca %struct.atmel_pmecc_user_req, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge23
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req.i) #7
  %5 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 2, i32 2
  %9 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 2, i32 3
  %10 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %req.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %pmecc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pmecc.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %atmel_nand_pmecc_init.exit.thread20, label %if.end.i

atmel_nand_pmecc_init.exit.thread20:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.125) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  %caps.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i, align 4
  %legacy_of_bindings.i = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %legacy_of_bindings.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %legacy_of_bindings.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then6.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then6.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !388
  %dev7.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.127, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool9.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %28 = ptrtoint ptr %strength.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %strength.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.then6.i.if.end11.i_crit_edge
  %29 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev7.i, align 4
  %of_node13.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node13.i, align 8
  %call.i.i138.i = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.128, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i138.i)
  %tobool15.not.i = icmp sgt i32 %call.i.i138.i, -1
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end11.i.if.end18.i_crit_edge

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end11.i.if.end18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %if.end.i.if.end19.i_crit_edge
  %flags.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 2, i32 5
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.else.i, label %if.end19.i.if.end45.i_crit_edge

if.end19.i.if.end45.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end19.i
  %strength26.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %38 = ptrtoint ptr %strength26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %strength26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool27.not.i = icmp eq i32 %39, 0
  br i1 %tobool27.not.i, label %if.else33.i, label %if.else.i.if.end45.i_crit_edge

if.else.i.if.end45.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.else33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %strength34.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %40 = ptrtoint ptr %strength34.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %strength34.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else33.i, %if.else.i.if.end45.i_crit_edge, %if.end19.i.if.end45.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end19.i.if.end45.i_crit_edge ], [ %39, %if.else.i.if.end45.i_crit_edge ], [ %41, %if.else33.i ]
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink.i, ptr %6, align 4
  %size47.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %43 = ptrtoint ptr %size47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size47.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool48.not.i = icmp eq i32 %44, 0
  br i1 %tobool48.not.i, label %if.else53.i, label %if.end45.i.if.end63.i_crit_edge

if.end45.i.if.end63.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.else53.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %step_size.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %45 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %step_size.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else53.i, %if.end45.i.if.end63.i_crit_edge
  %.sink140.i = phi i32 [ %44, %if.end45.i.if.end63.i_crit_edge ], [ %46, %if.else53.i ]
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink140.i, ptr %8, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %48 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %writesize.i, align 4
  %50 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %req.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %51 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %oobsize.i, align 4
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %49)
  %cmp.i = icmp ult i32 %49, 513
  %sub.i = add i32 %52, -2
  %spec.select.i = select i1 %cmp.i, i32 4, i32 %sub.i
  %not.cmp.i = xor i1 %cmp.i, true
  %spec.select139.i = sext i1 %not.cmp.i to i32
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select.i, ptr %7, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select139.i, ptr %10, align 4
  %56 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pmecc.i, align 4
  %call77.i = call ptr @atmel_pmecc_create_user(ptr noundef %57, ptr noundef nonnull %req.i) #7
  %pmecc78.i = getelementptr i8, ptr %chip, i32 2172
  %58 = ptrtoint ptr %pmecc78.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call77.i, ptr %pmecc78.i, align 4
  %cmp.i.i = icmp ugt ptr %call77.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %atmel_nand_pmecc_init.exit, label %atmel_nand_pmecc_init.exit.thread

atmel_nand_pmecc_init.exit.thread:                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %59 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %algo.i, align 8
  %60 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %8, align 4
  %62 = ptrtoint ptr %size47.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %size47.i, align 8
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %7, align 4
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %9, align 4
  %div.i = sdiv i32 %64, %66
  %bytes94.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %67 = ptrtoint ptr %bytes94.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div.i, ptr %bytes94.i, align 4
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %6, align 4
  %strength98.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %70 = ptrtoint ptr %strength98.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %strength98.i, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %71 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %options.i, align 8
  %or.i = or i32 %72, 512
  store i32 %or.i, ptr %options.i, align 8
  %call99.i = call ptr @nand_get_large_page_ooblayout() #7
  %ooblayout1.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %73 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call99.i, ptr %ooblayout1.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req.i) #7
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %74 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @atmel_nand_pmecc_read_page, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %75 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @atmel_nand_pmecc_write_page, ptr %write_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %76 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @atmel_nand_pmecc_read_page_raw, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %77 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @atmel_nand_pmecc_write_page_raw, ptr %write_page_raw, align 4
  br label %cleanup

atmel_nand_pmecc_init.exit:                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %call77.i to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req.i) #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 2
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.123, i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %atmel_nand_pmecc_init.exit, %atmel_nand_pmecc_init.exit.thread, %atmel_nand_pmecc_init.exit.thread20, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge23
  %retval.0 = phi i32 [ -524, %do.end ], [ %78, %atmel_nand_pmecc_init.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge23 ], [ 0, %atmel_nand_pmecc_init.exit.thread ], [ -524, %atmel_nand_pmecc_init.exit.thread20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool = icmp ne i32 %oob_required, 0
  %call = tail call fastcc i32 @atmel_hsmc_nand_pmecc_read_pg(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %tobool, i32 noundef %page, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_hsmc_nand_pmecc_write_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool = icmp ne i32 %oob_required, 0
  %call = tail call fastcc i32 @atmel_hsmc_nand_pmecc_read_pg(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %tobool, i32 noundef %page, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_nand_pmecc_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_hsmc_nand_pmecc_write_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_nand_pmecc_read_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_nand_pmecc_write_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize.i, align 4
  %call5.i = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %buf, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %entry.atmel_nand_pmecc_read_pg.exit_crit_edge

entry.atmel_nand_pmecc_read_pg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_pmecc_read_pg.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize.i, align 4
  %call9.i = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %3, i32 noundef %5, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %atmel_nand_pmecc_read_pg.exit

atmel_nand_pmecc_read_pg.exit:                    ; preds = %if.end8.i, %entry.atmel_nand_pmecc_read_pg.exit_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %entry.atmel_nand_pmecc_read_pg.exit_crit_edge ], [ %call9.i, %if.end8.i ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_pmecc_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_nand_pmecc_write_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atmel_pmecc_create_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_read_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  br i1 %raw, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %pmecc.i = getelementptr i8, ptr %chip, i32 2172
  %2 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmecc.i, align 4
  %call2.i = tail call i32 @atmel_pmecc_enable(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %atmel_nand_pmecc_enable.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

atmel_nand_pmecc_enable.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.129, i32 noundef %call2.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %call5 = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %buf, i32 noundef %7, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out_disable_crit_edge

if.end.out_disable_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable

if.end8:                                          ; preds = %if.end
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %8 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %10 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oobsize, align 4
  %call9 = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %9, i32 noundef %11, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_disable_crit_edge

if.end8.out_disable_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call fastcc i32 @atmel_nand_pmecc_correct_data(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %raw)
  br label %out_disable

out_disable:                                      ; preds = %if.end12, %if.end8.out_disable_crit_edge, %if.end.out_disable_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.out_disable_crit_edge ], [ %call9, %if.end8.out_disable_crit_edge ], [ %call14, %if.end12 ]
  br i1 %raw, label %out_disable.cleanup_crit_edge, label %if.then.i

out_disable.cleanup_crit_edge:                    ; preds = %out_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %out_disable
  call void @__sanitizer_cov_trace_pc() #9
  %pmecc.i1 = getelementptr i8, ptr %chip, i32 2172
  %12 = ptrtoint ptr %pmecc.i1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmecc.i1, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out_disable.cleanup_crit_edge, %atmel_nand_pmecc_enable.exit
  %retval.0 = phi i32 [ %call2.i, %atmel_nand_pmecc_enable.exit ], [ %ret.0, %out_disable.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_correct_data(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  %oobregion = alloca %struct.mtd_oob_region, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #7
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oobregion, align 4, !annotation !388
  %1 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !388
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller, align 4
  br i1 %raw, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pmecc = getelementptr i8, ptr %chip, i32 2172
  %5 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmecc, align 4
  %call3 = tail call i32 @atmel_pmecc_wait_rdy(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.131, i32 noundef %call3) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @mtd_ooblayout_ecc(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %oobregion) #7
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp73 = icmp sgt i32 %10, 0
  br i1 %cmp73, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %11 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oob_poi, align 4
  %13 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobregion, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %eccbuf.081 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr29, %if.end23.for.body_crit_edge ]
  %databuf.077 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr26, %if.end23.for.body_crit_edge ]
  %max_bitflips.075 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %if.end23.for.body_crit_edge ]
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %if.end23.for.body_crit_edge ]
  %15 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmecc, align 4
  %call9 = call i32 @atmel_pmecc_correct_sector(ptr noundef %16, i32 noundef %i.074, ptr noundef %databuf.077, ptr noundef %eccbuf.081) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true, label %for.body.if.then20_crit_edge

for.body.if.then20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pmecc, align 4
  %call12 = call zeroext i1 @atmel_pmecc_correct_erased_chunks(ptr noundef %18) #7
  br i1 %call12, label %land.lhs.true.if.else_crit_edge, label %if.end18

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end18:                                         ; preds = %land.lhs.true
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 8
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes, align 4
  %23 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %strength, align 4
  %call17 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %databuf.077, i32 noundef %20, ptr noundef %eccbuf.081, i32 noundef %22, ptr noundef null, i32 noundef 0, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp19 = icmp sgt i32 %call17, -1
  br i1 %cmp19, label %if.end18.if.then20_crit_edge, label %if.end18.if.else_crit_edge

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %for.body.if.then20_crit_edge
  %ret.069 = phi i32 [ %call17, %if.end18.if.then20_crit_edge ], [ %call9, %for.body.if.then20_crit_edge ]
  %25 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_stats, align 4
  %add = add i32 %26, %ret.069
  store i32 %add, ptr %ecc_stats, align 4
  %27 = call i32 @llvm.smax.i32(i32 %ret.069, i32 %max_bitflips.075)
  br label %if.end23

if.else:                                          ; preds = %if.end18.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %28 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %failed, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %max_bitflips.1 = phi i32 [ %27, %if.then20 ], [ %max_bitflips.075, %if.else ]
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %add.ptr26 = getelementptr i8, ptr %databuf.077, i32 %31
  %32 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes, align 4
  %add.ptr29 = getelementptr i8, ptr %eccbuf.081, i32 %33
  %inc30 = add nuw nsw i32 %i.074, 1
  %34 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc30, %35
  br i1 %cmp, label %if.end23.for.body_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %max_bitflips.1, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pmecc_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pmecc_wait_rdy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pmecc_correct_sector(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atmel_pmecc_correct_erased_chunks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_pmecc_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_write_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  br i1 %raw, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %pmecc.i = getelementptr i8, ptr %chip, i32 2172
  %2 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmecc.i, align 4
  %call2.i = tail call i32 @atmel_pmecc_enable(ptr noundef %3, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %atmel_nand_pmecc_enable.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

atmel_nand_pmecc_enable.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.129, i32 noundef %call2.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %call6 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %buf, i32 noundef %7, i1 noundef zeroext false) #7
  %call8 = tail call fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %chip, i1 noundef zeroext %raw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pmecc = getelementptr i8, ptr %chip, i32 2172
  %8 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmecc, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %9) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  br i1 %raw, label %if.end11.atmel_nand_pmecc_disable.exit_crit_edge, label %if.then.i

if.end11.atmel_nand_pmecc_disable.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_pmecc_disable.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %pmecc.i1 = getelementptr i8, ptr %chip, i32 2172
  %10 = ptrtoint ptr %pmecc.i1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmecc.i1, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %11) #7
  br label %atmel_nand_pmecc_disable.exit

atmel_nand_pmecc_disable.exit:                    ; preds = %if.then.i, %if.end11.atmel_nand_pmecc_disable.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %12 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oobsize, align 4
  %call13 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %13, i32 noundef %15, i1 noundef zeroext false) #7
  %call14 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #7
  br label %cleanup

cleanup:                                          ; preds = %atmel_nand_pmecc_disable.exit, %if.then10, %atmel_nand_pmecc_enable.exit
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %call14, %atmel_nand_pmecc_disable.exit ], [ %call2.i, %atmel_nand_pmecc_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %chip, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  %oobregion = alloca %struct.mtd_oob_region, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion) #7
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oobregion, align 4, !annotation !388
  %1 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !388
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller, align 4
  br i1 %raw, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pmecc = getelementptr i8, ptr %chip, i32 2172
  %5 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmecc, align 4
  %call3 = tail call i32 @atmel_pmecc_wait_rdy(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.133, i32 noundef %call3) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @mtd_ooblayout_ecc(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %oobregion) #7
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp28 = icmp sgt i32 %10, 0
  br i1 %cmp28, label %for.body.lr.ph, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %11 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oob_poi, align 4
  %13 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobregion, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %eccbuf.029 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr10, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmecc, align 4
  call void @atmel_pmecc_get_generated_eccbytes(ptr noundef %16, i32 noundef %i.030, ptr noundef %eccbuf.029) #7
  %17 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes, align 4
  %add.ptr10 = getelementptr i8, ptr %eccbuf.029, i32 %18
  %inc = add nuw nsw i32 %i.030, 1
  %19 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_pmecc_get_generated_eccbytes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_hsmc_nand_pmecc_read_pg(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %oob_required, i32 noundef %page, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %writesize.i = getelementptr i8, ptr %chip, i32 20
  %2 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize.i, align 4
  %div21.i = lshr i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %tobool.not.i.i = icmp ult i32 %3, 512
  %4 = tail call i32 @llvm.ctlz.i32(i32 %div21.i, i1 true) #7, !range !387
  %sub.i.op.i = xor i32 %4, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -513, i32 %sub.i.op.i
  %oobsize.i = getelementptr i8, ptr %chip, i32 28
  %5 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize.i, align 4
  %7 = shl i32 %6, 22
  %shl.i = and i32 %7, -16777216
  %or.i = or i32 %shl.i, %sub.i
  %or3.i = or i32 %or.i, 512
  %arrayidx.i = getelementptr %struct.atmel_nand, ptr %add.ptr.i, i32 0, i32 7, i32 %1
  %activecs.i = getelementptr i8, ptr %chip, i32 2168
  %8 = ptrtoint ptr %activecs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %activecs.i, align 8
  %controller.i = getelementptr i8, ptr %chip, i32 2052
  %9 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller.i, align 4
  %cfg7.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %or3.i)
  %cmp.i = icmp eq i32 %12, %or3.i
  br i1 %cmp.i, label %entry.atmel_hsmc_nand_select_target.exit_crit_edge, label %if.end.i

entry.atmel_hsmc_nand_select_target.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_hsmc_nand_select_target.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %smc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %smc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 2130707207, i32 noundef %or3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or3.i, ptr %cfg7.i, align 4
  br label %atmel_hsmc_nand_select_target.exit

atmel_hsmc_nand_select_target.exit:               ; preds = %if.end.i, %entry.atmel_hsmc_nand_select_target.exit_crit_edge
  %16 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller.i, align 4
  %18 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %activecs.i, align 8
  %rb = getelementptr inbounds %struct.atmel_nand_cs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not = icmp eq i32 %21, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %atmel_hsmc_nand_select_target.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @atmel_nand_pmecc_read_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext %raw)
  br label %cleanup

if.end:                                           ; preds = %atmel_hsmc_nand_select_target.exit
  %op = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4
  %ncmds = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %ncmds to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ncmds, align 1
  %inc = add i8 %23, 1
  store i8 %inc, ptr %ncmds, align 1
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 2, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %26)
  %cmp7 = icmp ugt i32 %26, 512
  br i1 %cmp7, label %if.then8, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc13 = add i8 %23, 2
  %27 = ptrtoint ptr %ncmds to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %inc13, ptr %ncmds, align 1
  %idxprom14 = zext i8 %inc to i32
  %arrayidx15 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 2, i32 %idxprom14
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 48, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end.if.end16_crit_edge
  %29 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller.i, align 4
  %naddrs.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %30, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %naddrs.i, align 4
  %inc.i = add i8 %32, 1
  store i8 %inc.i, ptr %naddrs.i, align 4
  %idxprom.i = zext i8 %32 to i32
  %arrayidx.i68 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %30, i32 0, i32 4, i32 4, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx.i68, align 1
  %34 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %35)
  %cmp3.i = icmp ugt i32 %35, 512
  br i1 %cmp3.i, label %if.then5.i, label %if.end16.if.end14.i_crit_edge

if.end16.if.end14.i_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %inc11.i = add i8 %32, 2
  %36 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %inc11.i, ptr %naddrs.i, align 4
  %idxprom12.i = zext i8 %inc.i to i32
  %arrayidx13.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %30, i32 0, i32 4, i32 4, i32 %idxprom12.i
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx13.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then5.i, %if.end16.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page)
  %cmp15.i = icmp sgt i32 %page, -1
  br i1 %cmp15.i, label %if.then17.i, label %if.end14.i.atmel_nfc_set_op_addr.exit_crit_edge

if.end14.i.atmel_nfc_set_op_addr.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_set_op_addr.exit

if.then17.i:                                      ; preds = %if.end14.i
  %conv18.i = trunc i32 %page to i8
  %38 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %naddrs.i, align 4
  %inc23.i = add i8 %39, 1
  %idxprom24.i = zext i8 %39 to i32
  %arrayidx25.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %30, i32 0, i32 4, i32 4, i32 %idxprom24.i
  %40 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv18.i, ptr %arrayidx25.i, align 1
  %41 = lshr i32 %page, 8
  %conv27.i = trunc i32 %41 to i8
  %inc32.i = add i8 %39, 2
  store i8 %inc32.i, ptr %naddrs.i, align 4
  %idxprom33.i = zext i8 %inc23.i to i32
  %arrayidx34.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %30, i32 0, i32 4, i32 4, i32 %idxprom33.i
  %42 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv27.i, ptr %arrayidx34.i, align 1
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %43 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %options.i, align 8
  %and.i = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then17.i.atmel_nfc_set_op_addr.exit_crit_edge, label %if.then35.i

if.then17.i.atmel_nfc_set_op_addr.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_set_op_addr.exit

if.then35.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = lshr i32 %page, 16
  %conv37.i = trunc i32 %45 to i8
  %inc42.i = add i8 %39, 3
  %46 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %inc42.i, ptr %naddrs.i, align 4
  %idxprom43.i = zext i8 %inc32.i to i32
  %arrayidx44.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %30, i32 0, i32 4, i32 4, i32 %idxprom43.i
  %47 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv37.i, ptr %arrayidx44.i, align 1
  br label %atmel_nfc_set_op_addr.exit

atmel_nfc_set_op_addr.exit:                       ; preds = %if.then35.i, %if.then17.i.atmel_nfc_set_op_addr.exit_crit_edge, %if.end14.i.atmel_nfc_set_op_addr.exit_crit_edge
  %48 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %activecs.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %conv = trunc i32 %51 to i8
  %52 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv, ptr %op, align 4
  %data = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 5
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %data, align 4
  %54 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %controller.i, align 4
  br i1 %raw, label %if.end24, label %if.end.i71

if.end.i71:                                       ; preds = %atmel_nfc_set_op_addr.exit
  %pmecc.i = getelementptr i8, ptr %chip, i32 2172
  %56 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pmecc.i, align 4
  %call2.i = tail call i32 @atmel_pmecc_enable(ptr noundef %57, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end24.thread, label %atmel_nand_pmecc_enable.exit

atmel_nand_pmecc_enable.exit:                     ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.129, i32 noundef %call2.i) #10
  br label %cleanup

if.end24:                                         ; preds = %atmel_nfc_set_op_addr.exit
  %call25 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %17, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.end24.atmel_nand_pmecc_disable.exit_crit_edge

if.end24.atmel_nand_pmecc_disable.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_pmecc_disable.exit

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end24.thread:                                  ; preds = %if.end.i71
  %call2587 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %17, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2587)
  %tobool26.not88 = icmp eq i32 %call2587, 0
  br i1 %tobool26.not88, label %if.end24.thread.if.end29_crit_edge, label %if.then.i

if.end24.thread.if.end29_crit_edge:               ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then.i:                                        ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pmecc.i, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %61) #7
  br label %atmel_nand_pmecc_disable.exit

atmel_nand_pmecc_disable.exit:                    ; preds = %if.then.i, %if.end24.atmel_nand_pmecc_disable.exit_crit_edge
  %call258992 = phi i32 [ %call2587, %if.then.i ], [ %call25, %if.end24.atmel_nand_pmecc_disable.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %17, i32 0, i32 2
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.135, i32 noundef %call258992) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24.thread.if.end29_crit_edge, %if.end24.if.end29_crit_edge
  %64 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %controller.i, align 4
  %dmac.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dmac.i, align 4
  %tobool.not.i75 = icmp eq ptr %67, null
  br i1 %tobool.not.i75, label %if.end29.if.then5.i78_crit_edge, label %if.then.i77

if.end29.if.then5.i78_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i78

if.then.i77:                                      ; preds = %if.end29
  %dma.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %65, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma.i, align 4
  %70 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %writesize.i, align 4
  %call3.i = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %65, ptr noundef %buf, i32 noundef %69, i32 noundef %71, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %phi.cmp.i = icmp eq i32 %call3.i, 0
  br i1 %phi.cmp.i, label %if.then.i77.atmel_nfc_copy_from_sram.exit_crit_edge, label %if.then.i77.if.then5.i78_crit_edge

if.then.i77.if.then5.i78_crit_edge:               ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i78

if.then.i77.atmel_nfc_copy_from_sram.exit_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_copy_from_sram.exit

if.then5.i78:                                     ; preds = %if.then.i77.if.then5.i78_crit_edge, %if.end29.if.then5.i78_crit_edge
  %virt.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %65, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %virt.i, align 4
  %74 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %writesize.i, align 4
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %73, i32 noundef %75) #7
  br label %atmel_nfc_copy_from_sram.exit

atmel_nfc_copy_from_sram.exit:                    ; preds = %if.then5.i78, %if.then.i77.atmel_nfc_copy_from_sram.exit_crit_edge
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %76 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %oob_poi.i, align 4
  %virt12.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %65, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %virt12.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %virt12.i, align 4
  %80 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %writesize.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %79, i32 %81
  %82 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %oobsize.i, align 4
  tail call void @mmiocpy(ptr noundef %77, ptr noundef %add.ptr.i79, i32 noundef %83) #7
  %call31 = tail call fastcc i32 @atmel_nand_pmecc_correct_data(ptr noundef %chip, ptr noundef %buf, i1 noundef zeroext %raw)
  br i1 %raw, label %atmel_nfc_copy_from_sram.exit.cleanup_crit_edge, label %if.then.i82

atmel_nfc_copy_from_sram.exit.cleanup_crit_edge:  ; preds = %atmel_nfc_copy_from_sram.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i82:                                      ; preds = %atmel_nfc_copy_from_sram.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pmecc.i81 = getelementptr i8, ptr %chip, i32 2172
  %84 = ptrtoint ptr %pmecc.i81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pmecc.i81, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %85) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i82, %atmel_nfc_copy_from_sram.exit.cleanup_crit_edge, %atmel_nand_pmecc_disable.exit, %atmel_nand_pmecc_enable.exit, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call258992, %atmel_nand_pmecc_disable.exit ], [ %call2.i, %atmel_nand_pmecc_enable.exit ], [ %call31, %atmel_nfc_copy_from_sram.exit.cleanup_crit_edge ], [ %call31, %if.then.i82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nfc_exec_op(ptr noundef %nc, i1 noundef zeroext %poll) unnamed_addr #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4
  %addrs1 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !388
  %wait = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 6
  %1 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 131072, ptr %wait, align 4
  %ncmds = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %ncmds to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ncmds, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp107.not = icmp eq i8 %3, 0
  br i1 %cmp107.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %op2.0108 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 2, i32 %i.0109
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %5 to i32
  %mul = shl i32 %i.0109, 3
  %add = or i32 %mul, 2
  %shl = shl i32 %conv7, %add
  %or = or i32 %shl, %op2.0108
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %op2.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %naddrs = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %naddrs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %naddrs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp10 = icmp eq i8 %7, 5
  br i1 %cmp10, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 3
  %8 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smc, align 4
  %incdec.ptr = getelementptr %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 4, i32 1
  %10 = ptrtoint ptr %addrs1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addrs1, align 1
  %conv12 = zext i8 %11 to i32
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef %conv12) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %addrs.0 = phi ptr [ %incdec.ptr, %if.then ], [ %addrs1, %for.end.if.end_crit_edge ]
  %12 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %op, align 4
  %conv14 = zext i8 %13 to i32
  %shl15 = shl nuw nsw i32 %conv14, 22
  %14 = ptrtoint ptr %naddrs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %naddrs, align 4
  %conv18 = zext i8 %15 to i32
  %shl19 = shl nuw nsw i32 %conv18, 19
  %or20 = or i32 %shl15, %op2.0.lcssa
  %or21 = or i32 %or20, %shl19
  %16 = ptrtoint ptr %ncmds to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ncmds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp25 = icmp ugt i8 %17, 1
  %or28 = or i32 %or21, 262144
  %spec.select = select i1 %cmp25, i32 %or28, i32 %or21
  %18 = ptrtoint ptr %addrs.0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addrs.0, align 1
  %conv31 = zext i8 %19 to i32
  %arrayidx32 = getelementptr i8, ptr %addrs.0, i32 1
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %21 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or35 = or i32 %shl34, %conv31
  %arrayidx36 = getelementptr i8, ptr %addrs.0, i32 2
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %23 to i32
  %shl38 = shl nuw nsw i32 %conv37, 16
  %or39 = or i32 %or35, %shl38
  %arrayidx40 = getelementptr i8, ptr %addrs.0, i32 3
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %shl42 = shl nuw i32 %conv41, 24
  %or43 = or i32 %or39, %shl42
  %data = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp45.not = icmp eq i32 %27, 0
  br i1 %cmp45.not, label %if.end.if.end59_crit_edge, label %if.then47

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wait, align 4
  %or51 = or i32 %29, 65536
  store i32 %or51, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp54 = icmp eq i32 %27, 2
  %spec.select100.v = select i1 %cmp54, i32 100663296, i32 33554432
  %spec.select100 = or i32 %spec.select100.v, %spec.select
  br label %if.end59

if.end59:                                         ; preds = %if.then47, %if.end.if.end59_crit_edge
  %op2.2 = phi i32 [ %spec.select, %if.end.if.end59_crit_edge ], [ %spec.select100, %if.then47 ]
  %smc61 = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 3
  %30 = ptrtoint ptr %smc61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smc61, align 4
  %call62 = call i32 @regmap_read(ptr noundef %31, i32 noundef 8, ptr noundef nonnull %val) #7
  %io = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 3
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io, align 4
  %call63 = call i32 @regmap_write(ptr noundef %33, i32 noundef %op2.2, i32 noundef %or43) #7
  br i1 %poll, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %status.i, align 4, !annotation !388
  %call.i = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 1000000000
  %errors.i.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.then2.i
  %35 = ptrtoint ptr %smc61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smc61, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 8, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i, label %for.cond.i.lor.end.i_crit_edge

for.cond.i.lor.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i, align 4
  %and.i.i = and i32 %38, 15728640
  %39 = ptrtoint ptr %errors.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %errors.i.i, align 4
  %or.i.i = or i32 %40, %and.i.i
  store i32 %or.i.i, ptr %errors.i.i, align 4
  %41 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wait, align 4
  %43 = xor i32 %38, -1
  %xor.i.i = and i32 %42, %43
  store i32 %xor.i.i, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool5.i.i = icmp ne i32 %or.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool5.i.i
  br i1 %spec.select.i.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call20.i = call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call20.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %44 = ptrtoint ptr %smc61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %smc61, align 4
  %call27.i = call i32 @regmap_read(ptr noundef %45, i32 noundef 8, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool32.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool32.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.lor.end.i_crit_edge

for.end.i.lor.end.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status.i, align 4
  %and.i1.i = and i32 %47, 15728640
  %48 = ptrtoint ptr %errors.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %errors.i.i, align 4
  %or.i3.i = or i32 %49, %and.i1.i
  store i32 %or.i3.i, ptr %errors.i.i, align 4
  %50 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wait, align 4
  %52 = xor i32 %47, -1
  %xor.i5.i = and i32 %51, %52
  store i32 %xor.i5.i, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i5.i)
  %tobool.not.i6.i = icmp eq i32 %xor.i5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i3.i)
  %tobool5.i7.i = icmp ne i32 %or.i3.i, 0
  %spec.select.i8.i = select i1 %tobool.not.i6.i, i1 true, i1 %tobool5.i7.i
  %phi.sel.i = select i1 %spec.select.i8.i, i32 0, i32 -110
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %for.end.i.lor.end.i_crit_edge, %for.cond.i.lor.end.i_crit_edge
  %tobool32.not14.i = phi i32 [ %call27.i, %for.end.i.lor.end.i_crit_edge ], [ %phi.sel.i, %lor.rhs.i ], [ %call13.i, %for.cond.i.lor.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %if.end53.i

if.else.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %complete.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 5
  %53 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %complete.i, align 4
  %wait.i9.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i9.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @init_completion.__key) #7
  %54 = ptrtoint ptr %smc61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smc61, align 4
  %56 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wait, align 4
  %or.i = or i32 %57, 15728640
  %call42.i = call i32 @regmap_write(ptr noundef %55, i32 noundef 12, i32 noundef %or.i) #7
  %call45.i = call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  %..i = select i1 %tobool46.not.i, i32 -110, i32 0
  %58 = ptrtoint ptr %smc61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %smc61, align 4
  %call52.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 16, i32 noundef -1) #7
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else.i, %lor.end.i
  %ret.1.i = phi i32 [ %tobool32.not14.i, %lor.end.i ], [ %..i, %if.else.i ]
  %errors.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %nc, i32 0, i32 4, i32 7
  %60 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %errors.i, align 4
  %and.i = and i32 %61, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool55.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end61.i_crit_edge, label %do.end59.i

if.end53.i.if.end61.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

do.end59.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.139) #10
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end59.i, %if.end53.i.if.end61.i_crit_edge
  %ret.2.i = phi i32 [ -110, %do.end59.i ], [ %ret.1.i, %if.end53.i.if.end61.i_crit_edge ]
  %64 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %errors.i, align 4
  %and64.i = and i32 %65, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end61.i.if.end72.i_crit_edge, label %do.end69.i

if.end61.i.if.end72.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

do.end69.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev71.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %66 = ptrtoint ptr %dev71.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev71.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.142) #10
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end69.i, %if.end61.i.if.end72.i_crit_edge
  %ret.3.i = phi i32 [ -5, %do.end69.i ], [ %ret.2.i, %if.end61.i.if.end72.i_crit_edge ]
  %68 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %errors.i, align 4
  %and75.i = and i32 %69, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end83.i, label %if.end83.i.thread

if.end83.i:                                       ; preds = %if.end72.i
  %70 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %errors.i, align 4
  %and86.i = and i32 %71, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %atmel_nfc_wait.exit, label %if.end83.i.atmel_nfc_wait.exit.thread_crit_edge

if.end83.i.atmel_nfc_wait.exit.thread_crit_edge:  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_wait.exit.thread

if.end83.i.thread:                                ; preds = %if.end72.i
  %dev82.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %72 = ptrtoint ptr %dev82.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev82.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.145) #10
  %74 = ptrtoint ptr %errors.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %errors.i, align 4
  %and86.i113 = and i32 %75, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i113)
  %tobool87.not.i114 = icmp eq i32 %and86.i113, 0
  br i1 %tobool87.not.i114, label %if.end83.i.thread.do.end_crit_edge, label %if.end83.i.thread.atmel_nfc_wait.exit.thread_crit_edge

if.end83.i.thread.atmel_nfc_wait.exit.thread_crit_edge: ; preds = %if.end83.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_wait.exit.thread

if.end83.i.thread.do.end_crit_edge:               ; preds = %if.end83.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

atmel_nfc_wait.exit.thread:                       ; preds = %if.end83.i.thread.atmel_nfc_wait.exit.thread_crit_edge, %if.end83.i.atmel_nfc_wait.exit.thread_crit_edge
  %dev93.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %76 = ptrtoint ptr %dev93.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev93.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.148) #10
  br label %do.end

atmel_nfc_wait.exit:                              ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool65.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool65.not, label %atmel_nfc_wait.exit.if.end68_crit_edge, label %atmel_nfc_wait.exit.do.end_crit_edge

atmel_nfc_wait.exit.do.end_crit_edge:             ; preds = %atmel_nfc_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

atmel_nfc_wait.exit.if.end68_crit_edge:           ; preds = %atmel_nfc_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end:                                           ; preds = %atmel_nfc_wait.exit.do.end_crit_edge, %atmel_nfc_wait.exit.thread, %if.end83.i.thread.do.end_crit_edge
  %ret.5.i103 = phi i32 [ -5, %atmel_nfc_wait.exit.thread ], [ %ret.3.i, %atmel_nfc_wait.exit.do.end_crit_edge ], [ -5, %if.end83.i.thread.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.137, i32 noundef %ret.5.i103) #10
  br label %if.end68

if.end68:                                         ; preds = %do.end, %atmel_nfc_wait.exit.if.end68_crit_edge
  %ret.5.i104 = phi i32 [ %ret.5.i103, %do.end ], [ 0, %atmel_nfc_wait.exit.if.end68_crit_edge ]
  %80 = call ptr @memset(ptr %op, i32 0, i32 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.5.i104
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_nand_dma_transfer(ptr nocapture noundef readonly %nc, ptr noundef %buf, i32 noundef %dev_dma, i32 noundef %len, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %finished = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %finished) #7
  %0 = getelementptr inbounds i8, ptr %finished, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %finished to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %finished, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %finished, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @init_completion.__key) #7
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !389

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %4) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.161, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.162, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @debug_dma_map_single(ptr noundef %4, ptr noundef %buf, i32 noundef %len) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i60 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %12, i32 noundef %dev_dma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dev_dma)
  %cmp.i.not = icmp eq i32 %dev_dma, -1
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.151) #10
  br label %do.body25

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %call.dev_dma = select i1 %cmp, i32 %retval.0.i60, i32 %dev_dma
  %dev_dma.call = select i1 %cmp, i32 %dev_dma, i32 %retval.0.i60
  %dmac = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 4
  %15 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmac, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.err_unmap_crit_edge, label %lor.lhs.false.i

if.end.err_unmap_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

lor.lhs.false.i:                                  ; preds = %if.end
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_unmap_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err_unmap_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 30
  %19 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err_unmap_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.err_unmap_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i61 = call ptr %20(ptr noundef nonnull %16, i32 noundef %call.dev_dma, i32 noundef %dev_dma.call, i32 noundef %len, i32 noundef 3) #7
  %tobool7.not = icmp eq ptr %call.i61, null
  br i1 %tobool7.not, label %dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge, label %if.end13

dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge: ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

if.end13:                                         ; preds = %dmaengine_prep_dma_memcpy.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i61, i32 0, i32 6
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @atmel_nand_dma_transfer_finished, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i61, i32 0, i32 8
  %22 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %finished, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i61, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i, align 4
  %call.i63 = call i32 %24(ptr noundef nonnull %call.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i63)
  %tobool16.not = icmp sgt i32 %call.i63, -1
  br i1 %tobool16.not, label %if.end22, label %if.end13.err_unmap_crit_edge

if.end13.err_unmap_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmac, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 50
  %29 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_issue_pending.i, align 4
  call void %30(ptr noundef %26) #7
  call void @wait_for_completion(ptr noundef nonnull %finished) #7
  br label %cleanup

err_unmap:                                        ; preds = %if.end13.err_unmap_crit_edge, %dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge, %lor.lhs.false2.i.err_unmap_crit_edge, %lor.lhs.false.i.err_unmap_crit_edge, %if.end.err_unmap_crit_edge
  %.str.157.sink = phi ptr [ @.str.154, %if.end.err_unmap_crit_edge ], [ @.str.154, %lor.lhs.false.i.err_unmap_crit_edge ], [ @.str.154, %lor.lhs.false2.i.err_unmap_crit_edge ], [ @.str.154, %dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge ], [ @.str.157, %if.end13.err_unmap_crit_edge ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull %.str.157.sink) #10
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %retval.0.i60, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #7
  br label %do.body25

do.body25:                                        ; preds = %err_unmap, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_nand_dma_transfer.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_nand_dma_transfer, %if.then31)) #7
          to label %cleanup [label %if.then31], !srcloc !390

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_nand_dma_transfer.__UNIQUE_ID_ddebug251, ptr noundef %36, ptr noundef nonnull @.str.160) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body25, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -5, %if.then31 ], [ -5, %do.body25 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %finished) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_nand_dma_transfer_finished(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_hsmc_nand_pmecc_write_pg(ptr noundef %chip, ptr noundef %buf, i32 noundef %page, i1 noundef zeroext %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %writesize.i = getelementptr i8, ptr %chip, i32 20
  %2 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize.i, align 4
  %div21.i = lshr i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %tobool.not.i.i = icmp ult i32 %3, 512
  %4 = tail call i32 @llvm.ctlz.i32(i32 %div21.i, i1 true) #7, !range !387
  %sub.i.op.i = xor i32 %4, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -513, i32 %sub.i.op.i
  %oobsize.i = getelementptr i8, ptr %chip, i32 28
  %5 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize.i, align 4
  %7 = shl i32 %6, 22
  %shl.i = and i32 %7, -16777216
  %or.i = or i32 %shl.i, %sub.i
  %or3.i = or i32 %or.i, 512
  %arrayidx.i = getelementptr %struct.atmel_nand, ptr %add.ptr.i, i32 0, i32 7, i32 %1
  %activecs.i = getelementptr i8, ptr %chip, i32 2168
  %8 = ptrtoint ptr %activecs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %activecs.i, align 8
  %controller.i = getelementptr i8, ptr %chip, i32 2052
  %9 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller.i, align 4
  %cfg7.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %or3.i)
  %cmp.i = icmp eq i32 %12, %or3.i
  br i1 %cmp.i, label %entry.atmel_hsmc_nand_select_target.exit_crit_edge, label %if.end.i

entry.atmel_hsmc_nand_select_target.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_hsmc_nand_select_target.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %smc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %smc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 2130707207, i32 noundef %or3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or3.i, ptr %cfg7.i, align 4
  br label %atmel_hsmc_nand_select_target.exit

atmel_hsmc_nand_select_target.exit:               ; preds = %if.end.i, %entry.atmel_hsmc_nand_select_target.exit_crit_edge
  %16 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller.i, align 4
  %dmac.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmac.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %atmel_hsmc_nand_select_target.exit.if.then5.i_crit_edge, label %if.then.i

atmel_hsmc_nand_select_target.exit.if.then5.i_crit_edge: ; preds = %atmel_hsmc_nand_select_target.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then.i:                                        ; preds = %atmel_hsmc_nand_select_target.exit
  %dma.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma.i, align 4
  %22 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writesize.i, align 4
  %call3.i = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %17, ptr noundef %buf, i32 noundef %21, i32 noundef %23, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %phi.cmp.i = icmp eq i32 %call3.i, 0
  br i1 %phi.cmp.i, label %if.then.i.atmel_nfc_copy_to_sram.exit_crit_edge, label %if.then.i.if.then5.i_crit_edge

if.then.i.if.then5.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then.i.atmel_nfc_copy_to_sram.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_copy_to_sram.exit

if.then5.i:                                       ; preds = %if.then.i.if.then5.i_crit_edge, %atmel_hsmc_nand_select_target.exit.if.then5.i_crit_edge
  %virt.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt.i, align 4
  %26 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize.i, align 4
  tail call void @mmiocpy(ptr noundef %25, ptr noundef %buf, i32 noundef %27) #7
  br label %atmel_nfc_copy_to_sram.exit

atmel_nfc_copy_to_sram.exit:                      ; preds = %if.then5.i, %if.then.i.atmel_nfc_copy_to_sram.exit_crit_edge
  %op = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4
  %cmds = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %cmds to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %cmds, align 2
  %ncmds = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %ncmds to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %ncmds, align 1
  %30 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %controller.i, align 4
  %naddrs.i = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %31, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %naddrs.i, align 4
  %inc.i = add i8 %33, 1
  store i8 %inc.i, ptr %naddrs.i, align 4
  %idxprom.i = zext i8 %33 to i32
  %arrayidx.i4 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %31, i32 0, i32 4, i32 4, i32 %idxprom.i
  %34 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx.i4, align 1
  %35 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %36)
  %cmp3.i = icmp ugt i32 %36, 512
  br i1 %cmp3.i, label %if.then5.i6, label %atmel_nfc_copy_to_sram.exit.if.end14.i_crit_edge

atmel_nfc_copy_to_sram.exit.if.end14.i_crit_edge: ; preds = %atmel_nfc_copy_to_sram.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then5.i6:                                      ; preds = %atmel_nfc_copy_to_sram.exit
  call void @__sanitizer_cov_trace_pc() #9
  %inc11.i = add i8 %33, 2
  %37 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %inc11.i, ptr %naddrs.i, align 4
  %idxprom12.i = zext i8 %inc.i to i32
  %arrayidx13.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %31, i32 0, i32 4, i32 4, i32 %idxprom12.i
  %38 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx13.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then5.i6, %atmel_nfc_copy_to_sram.exit.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page)
  %cmp15.i = icmp sgt i32 %page, -1
  br i1 %cmp15.i, label %if.then17.i, label %if.end14.i.atmel_nfc_set_op_addr.exit_crit_edge

if.end14.i.atmel_nfc_set_op_addr.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_set_op_addr.exit

if.then17.i:                                      ; preds = %if.end14.i
  %conv18.i = trunc i32 %page to i8
  %39 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %naddrs.i, align 4
  %inc23.i = add i8 %40, 1
  %idxprom24.i = zext i8 %40 to i32
  %arrayidx25.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %31, i32 0, i32 4, i32 4, i32 %idxprom24.i
  %41 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv18.i, ptr %arrayidx25.i, align 1
  %42 = lshr i32 %page, 8
  %conv27.i = trunc i32 %42 to i8
  %inc32.i = add i8 %40, 2
  store i8 %inc32.i, ptr %naddrs.i, align 4
  %idxprom33.i = zext i8 %inc23.i to i32
  %arrayidx34.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %31, i32 0, i32 4, i32 4, i32 %idxprom33.i
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv27.i, ptr %arrayidx34.i, align 1
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %44 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %options.i, align 8
  %and.i = and i32 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i7, label %if.then17.i.atmel_nfc_set_op_addr.exit_crit_edge, label %if.then35.i

if.then17.i.atmel_nfc_set_op_addr.exit_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nfc_set_op_addr.exit

if.then35.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = lshr i32 %page, 16
  %conv37.i = trunc i32 %46 to i8
  %inc42.i = add i8 %40, 3
  %47 = ptrtoint ptr %naddrs.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %inc42.i, ptr %naddrs.i, align 4
  %idxprom43.i = zext i8 %inc32.i to i32
  %arrayidx44.i = getelementptr %struct.atmel_hsmc_nand_controller, ptr %31, i32 0, i32 4, i32 4, i32 %idxprom43.i
  %48 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv37.i, ptr %arrayidx44.i, align 1
  br label %atmel_nfc_set_op_addr.exit

atmel_nfc_set_op_addr.exit:                       ; preds = %if.then35.i, %if.then17.i.atmel_nfc_set_op_addr.exit_crit_edge, %if.end14.i.atmel_nfc_set_op_addr.exit_crit_edge
  %49 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %activecs.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %conv = trunc i32 %52 to i8
  %53 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv, ptr %op, align 4
  %data = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %17, i32 0, i32 4, i32 5
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %data, align 4
  %55 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %controller.i, align 4
  br i1 %raw, label %if.end, label %if.end.i9

if.end.i9:                                        ; preds = %atmel_nfc_set_op_addr.exit
  %pmecc.i = getelementptr i8, ptr %chip, i32 2172
  %57 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pmecc.i, align 4
  %call2.i = tail call i32 @atmel_pmecc_enable(ptr noundef %58, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.thread, label %atmel_nand_pmecc_enable.exit

atmel_nand_pmecc_enable.exit:                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.129, i32 noundef %call2.i) #10
  br label %cleanup

if.end:                                           ; preds = %atmel_nfc_set_op_addr.exit
  %call9 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %17, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.end.atmel_nand_pmecc_disable.exit_crit_edge

if.end.atmel_nand_pmecc_disable.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_pmecc_disable.exit

if.end.thread:                                    ; preds = %if.end.i9
  %call919 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %17, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call919)
  %tobool10.not20 = icmp eq i32 %call919, 0
  br i1 %tobool10.not20, label %if.then.i14, label %if.then.i11

if.then.i11:                                      ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pmecc.i, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %62) #7
  br label %atmel_nand_pmecc_disable.exit

atmel_nand_pmecc_disable.exit:                    ; preds = %if.then.i11, %if.end.atmel_nand_pmecc_disable.exit_crit_edge
  %call92124 = phi i32 [ %call919, %if.then.i11 ], [ %call9, %if.end.atmel_nand_pmecc_disable.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.atmel_nand_controller, ptr %17, i32 0, i32 2
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.133, i32 noundef %call92124) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %chip, i1 noundef zeroext true)
  br label %atmel_nand_pmecc_disable.exit16

if.then.i14:                                      ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %call1525 = tail call fastcc i32 @atmel_nand_pmecc_generate_eccbytes(ptr noundef %chip, i1 noundef zeroext false)
  %pmecc.i13 = getelementptr i8, ptr %chip, i32 2172
  %65 = ptrtoint ptr %pmecc.i13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pmecc.i13, align 4
  tail call void @atmel_pmecc_disable(ptr noundef %66) #7
  br label %atmel_nand_pmecc_disable.exit16

atmel_nand_pmecc_disable.exit16:                  ; preds = %if.then.i14, %if.end13
  %call1527 = phi i32 [ %call15, %if.end13 ], [ %call1525, %if.then.i14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1527)
  %tobool17.not = icmp eq i32 %call1527, 0
  br i1 %tobool17.not, label %if.end19, label %atmel_nand_pmecc_disable.exit16.cleanup_crit_edge

atmel_nand_pmecc_disable.exit16.cleanup_crit_edge: ; preds = %atmel_nand_pmecc_disable.exit16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %atmel_nand_pmecc_disable.exit16
  call void @__sanitizer_cov_trace_pc() #9
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %67 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %oob_poi, align 4
  %69 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %oobsize.i, align 4
  %call20 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %68, i32 noundef %70, i1 noundef zeroext false) #7
  %call21 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %atmel_nand_pmecc_disable.exit16.cleanup_crit_edge, %atmel_nand_pmecc_disable.exit, %atmel_nand_pmecc_enable.exit
  %retval.0 = phi i32 [ %call92124, %atmel_nand_pmecc_disable.exit ], [ %call21, %if.end19 ], [ %call2.i, %atmel_nand_pmecc_enable.exit ], [ %call1527, %atmel_nand_pmecc_disable.exit16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_smc_nand_prepare_smcconf(ptr nocapture noundef readonly %nand, ptr noundef readonly %conf, ptr noundef %smcconf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tRC_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 22
  %4 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tRC_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %5)
  %cmp = icmp ult i32 %5, 30000
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @atmel_smc_cs_conf_init(ptr noundef %smcconf) #7
  %mck = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mck, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  %div = udiv i32 1000000000, %call4
  %mul = mul i32 %div, 1000
  %tWP_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 36
  %8 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tWP_min, align 8
  %add = add i32 %mul, -1
  %sub = add i32 %add, %9
  %div6 = udiv i32 %sub, %mul
  %call7 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %smcconf, i32 noundef 0, i32 noundef %div6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %tCLS_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 14
  %10 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tCLS_min, align 8
  %tCS_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 16
  %12 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tCS_min, align 8
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13)
  %tALS_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 6
  %15 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tALS_min, align 8
  %17 = tail call i32 @llvm.umax.i32(i32 %14, i32 %16)
  %tDS_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 18
  %18 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tDS_min, align 8
  %20 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19)
  %sub28 = add i32 %add, %20
  %div29 = udiv i32 %sub28, %mul
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %div29, i32 %div6)
  %call37 = tail call i32 @atmel_smc_cs_conf_set_setup(ptr noundef %smcconf, i32 noundef 0, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end9
  %add36 = add i32 %21, %div6
  %tCLH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 12
  %22 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tCLH_min, align 8
  %tCH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 10
  %24 = ptrtoint ptr %tCH_min to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tCH_min, align 8
  %26 = tail call i32 @llvm.umax.i32(i32 %23, i32 %25)
  %tALH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %tALH_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tALH_min, align 8
  %29 = tail call i32 @llvm.umax.i32(i32 %26, i32 %28)
  %tDH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 17
  %30 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tDH_min, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %29, i32 %31)
  %tWH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 34
  %33 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tWH_min, align 8
  %35 = tail call i32 @llvm.umax.i32(i32 %32, i32 %34)
  %sub71 = add i32 %add, %35
  %div72 = udiv i32 %sub71, %mul
  %add73 = add i32 %add36, %div72
  %tWC_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 33
  %36 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tWC_min, align 4
  %sub76 = add i32 %add, %37
  %div77 = udiv i32 %sub76, %mul
  %38 = tail call i32 @llvm.umax.i32(i32 %add73, i32 %div77)
  %call84 = tail call i32 @atmel_smc_cs_conf_set_cycle(ptr noundef %smcconf, i32 noundef 0, i32 noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end87:                                         ; preds = %if.end40
  %call88 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %smcconf, i32 noundef 8, i32 noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  %tREH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 24
  %39 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tREH_min, align 8
  %tRHOH_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 25
  %41 = ptrtoint ptr %tRHOH_min to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tRHOH_min, align 4
  %43 = tail call i32 @llvm.umax.i32(i32 %40, i32 %42)
  %sub101 = add i32 %add, %43
  %div102 = udiv i32 %sub101, %mul
  %tRHZ_max = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 27
  %44 = ptrtoint ptr %tRHZ_max to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tRHZ_max, align 4
  %sub105 = add i32 %add, %45
  %div106 = udiv i32 %sub105, %mul
  %sub107 = sub i32 %div106, %div102
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub107)
  %cmp108 = icmp ugt i32 %sub107, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %div106, i32 %div102)
  %cmp110 = icmp eq i32 %div106, %div102
  %sub107.op = shl i32 %sub107, 16
  %sub107.op.op = add i32 %sub107.op, -65536
  %sub107.op.op.op = or i32 %sub107.op.op, 1048576
  %spec.select.op.op.op = select i1 %cmp110, i32 1048576, i32 %sub107.op.op.op
  %or = select i1 %cmp108, i32 2031616, i32 %spec.select.op.op.op
  %mode = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %smcconf, i32 0, i32 4
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode, align 4
  %or115 = or i32 %or, %47
  store i32 %or115, ptr %mode, align 4
  %tRP_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 29
  %48 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tRP_min, align 4
  %sub118 = add i32 %add, %49
  %div119 = udiv i32 %sub118, %mul
  %call121 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %smcconf, i32 noundef 16, i32 noundef %div119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end124:                                        ; preds = %if.end91
  %add120 = add i32 %div119, %div102
  %50 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tRC_min, align 8
  %sub128 = add i32 %add, %51
  %div129 = udiv i32 %sub128, %mul
  %52 = tail call i32 @llvm.umax.i32(i32 %add120, i32 %div129)
  %call136 = tail call i32 @atmel_smc_cs_conf_set_cycle(ptr noundef %smcconf, i32 noundef 16, i32 noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end139:                                        ; preds = %if.end124
  %call140 = tail call i32 @atmel_smc_cs_conf_set_pulse(ptr noundef %smcconf, i32 noundef 24, i32 noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end143:                                        ; preds = %if.end139
  %tCLR_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 13
  %53 = ptrtoint ptr %tCLR_min to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tCLR_min, align 4
  %sub146 = add i32 %add, %54
  %div147 = udiv i32 %sub146, %mul
  %call148 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %smcconf, i32 noundef 0, i32 noundef %div147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end151:                                        ; preds = %if.end143
  %tADL_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 5
  %55 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tADL_min, align 4
  %sub154 = add i32 %add, %56
  %div155 = udiv i32 %sub154, %mul
  %call156 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %smcconf, i32 noundef 4, i32 noundef %div155) #7
  %57 = zext i32 %call156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call156, label %if.end151.cleanup_crit_edge [
    i32 0, label %if.end151.if.end160_crit_edge
    i32 -34, label %if.end151.if.end160_crit_edge356
  ]

if.end151.if.end160_crit_edge356:                 ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.end151.if.end160_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end160:                                        ; preds = %if.end151.if.end160_crit_edge, %if.end151.if.end160_crit_edge356
  %tAR_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 7
  %58 = ptrtoint ptr %tAR_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tAR_min, align 4
  %sub163 = add i32 %add, %59
  %div164 = udiv i32 %sub163, %mul
  %call165 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %smcconf, i32 noundef 8, i32 noundef %div164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end160.cleanup_crit_edge

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end168:                                        ; preds = %if.end160
  %tRR_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 30
  %60 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tRR_min, align 8
  %sub171 = add i32 %add, %61
  %div172 = udiv i32 %sub171, %mul
  %call173 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %smcconf, i32 noundef 16, i32 noundef %div172) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end168.cleanup_crit_edge

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end176:                                        ; preds = %if.end168
  %tWB_max = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 32
  %62 = ptrtoint ptr %tWB_max to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tWB_max, align 8
  %sub179 = add i32 %add, %63
  %div180 = udiv i32 %sub179, %mul
  %call181 = tail call i32 @atmel_smc_cs_conf_set_timing(ptr noundef %smcconf, i32 noundef 24, i32 noundef %div180) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end176.cleanup_crit_edge

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end184:                                        ; preds = %if.end176
  %timings185 = getelementptr inbounds %struct.atmel_smc_cs_conf, ptr %smcconf, i32 0, i32 3
  %64 = ptrtoint ptr %timings185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %timings185, align 4
  %or186 = or i32 %65, -2147483648
  store i32 %or186, ptr %timings185, align 4
  %options = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %66 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %options, align 8
  %and = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool188.not = icmp eq i32 %and, 0
  br i1 %tobool188.not, label %if.end184.if.end192_crit_edge, label %if.then189

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then189:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mode, align 4
  %or191 = or i32 %69, 4096
  store i32 %or191, ptr %mode, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.end184.if.end192_crit_edge
  %70 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode, align 4
  %or194 = or i32 %71, 3
  store i32 %or194, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %if.end176.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %if.end151.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end192 ], [ -524, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ %call7, %if.end3.cleanup_crit_edge ], [ %call37, %if.end9.cleanup_crit_edge ], [ %call84, %if.end40.cleanup_crit_edge ], [ %call88, %if.end87.cleanup_crit_edge ], [ %call121, %if.end91.cleanup_crit_edge ], [ %call136, %if.end124.cleanup_crit_edge ], [ %call140, %if.end139.cleanup_crit_edge ], [ %call148, %if.end143.cleanup_crit_edge ], [ %call156, %if.end151.cleanup_crit_edge ], [ %call165, %if.end160.cleanup_crit_edge ], [ %call173, %if.end168.cleanup_crit_edge ], [ %call181, %if.end176.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_hsmc_cs_conf_apply(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_pulse(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_cycle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_smc_cs_conf_set_timing(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_exec_cmd_addr(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %activecs = getelementptr i8, ptr %chip, i32 2168
  %2 = ptrtoint ptr %activecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %activecs, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv = trunc i32 %5 to i8
  %op = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %op, align 4
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %7 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp54.not = icmp eq i32 %8, 0
  br i1 %cmp54.not, label %entry.for.end27_crit_edge, label %for.body.lr.ph

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %naddrs = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4, i32 3
  %ncmds = getelementptr inbounds %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %cleanup.for.body_crit_edge ]
  %9 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.055
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctx = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.055, i32 1
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctx, align 4
  %15 = ptrtoint ptr %ncmds to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ncmds, align 1
  %inc = add i8 %16, 1
  store i8 %inc, ptr %ncmds, align 1
  %idxprom = zext i8 %16 to i32
  %arrayidx7 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4, i32 2, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx7, align 1
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call8 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %i.055) #7
  %call1051 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %i.055) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %call1051)
  %cmp1152 = icmp ult i32 %call8, %call1051
  br i1 %cmp1152, label %for.body13.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body13.lr.ph:                                 ; preds = %if.end
  %addrs = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.055, i32 1, i32 0, i32 1
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %j.053 = phi i32 [ %call8, %for.body13.lr.ph ], [ %inc24, %for.body13.for.body13_crit_edge ]
  %18 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addrs, align 4
  %arrayidx15 = getelementptr i8, ptr %19, i32 %j.053
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %22 = ptrtoint ptr %naddrs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %naddrs, align 4
  %idxprom19 = zext i8 %23 to i32
  %arrayidx20 = getelementptr %struct.atmel_hsmc_nand_controller, ptr %1, i32 0, i32 4, i32 4, i32 %idxprom19
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %arrayidx20, align 1
  %inc23 = add i8 %23, 1
  store i8 %inc23, ptr %naddrs, align 4
  %inc24 = add nuw i32 %j.053, 1
  %call10 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %i.055) #7
  %cmp11 = icmp ult i32 %inc24, %call10
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %for.body13.cleanup_crit_edge

for.body13.cleanup_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

cleanup:                                          ; preds = %for.body13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %inc26 = add nuw i32 %i.055, 1
  %25 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc26, %26
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end27_crit_edge

cleanup.for.end27_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end27:                                        ; preds = %cleanup.for.end27_crit_edge, %entry.for.end27_crit_edge
  %call28 = tail call fastcc i32 @atmel_nfc_exec_op(ptr noundef %1, i1 noundef zeroext true)
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_exec_rw(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %0 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instrs, align 4
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %force_8bit, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @atmel_nand_data_in(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %7, i1 noundef zeroext %tobool)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @atmel_nand_data_out(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %7, i1 noundef zeroext %tobool)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hsmc_exec_waitrdy(ptr noundef %chip, ptr nocapture noundef readonly %subop) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %0 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !388
  %activecs.i = getelementptr i8, ptr %chip, i32 2168
  %5 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %activecs.i, align 8
  %rb.i = getelementptr inbounds %struct.atmel_nand_cs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rb.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %8, label %if.end.i.i [
    i32 1, label %if.end.i
    i32 0, label %if.then.i.i
  ]

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @nand_soft_waitrdy(ptr noundef %chip, i32 noundef %3) #7
  br label %atmel_hsmc_nand_waitrdy.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = getelementptr inbounds %struct.atmel_nand_cs, ptr %6, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call4.i.i = tail call i32 @nand_gpio_waitrdy(ptr noundef %chip, ptr noundef %12, i32 noundef %3) #7
  br label %atmel_hsmc_nand_waitrdy.exit

if.end.i:                                         ; preds = %entry
  %controller.i = getelementptr i8, ptr %chip, i32 2052
  %13 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller.i, align 4
  %15 = getelementptr inbounds %struct.atmel_nand_cs, ptr %6, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.i = add i32 %17, 24
  %shl.i = shl nuw i32 1, %add.i
  %mul.i = mul i32 %3, 1000
  %conv.i = zext i32 %mul.i to i64
  %call4.i = tail call i64 @ktime_get() #7
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i.i = add i64 %call4.i, %mul.i.i
  %smc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %smc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smc.i, align 4
  %call764.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 8, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call764.i)
  %tobool.not65.i = icmp eq i32 %call764.i, 0
  br i1 %tobool.not65.i, label %if.end9.lr.ph.i, label %if.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge

if.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_hsmc_nand_waitrdy.exit

if.end9.lr.ph.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool13.not.i = icmp eq i32 %mul.i, 0
  br label %if.end9.i

if.end9.i:                                        ; preds = %cond.false.i.if.end9.i_crit_edge, %if.end9.lr.ph.i
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %and.i = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.cond.false34.i_crit_edge

if.end9.i.cond.false34.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false34.i

if.end12.i:                                       ; preds = %if.end9.i
  br i1 %tobool13.not.i, label %if.end12.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end12.i.cond.false.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %call14.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.cond.false.i_crit_edge

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end12.i.cond.false.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 2147480) #7
  %23 = ptrtoint ptr %smc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smc.i, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 8, ptr noundef nonnull %status.i) #7
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %cond.false.i.if.end9.i_crit_edge, label %cond.false.i.atmel_hsmc_nand_waitrdy.exit_crit_edge

cond.false.i.atmel_hsmc_nand_waitrdy.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_hsmc_nand_waitrdy.exit

cond.false.i.if.end9.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %25 = ptrtoint ptr %smc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smc.i, align 4
  %call21.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 8, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool32.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool32.not.i, label %for.end.i.cond.false34.i_crit_edge, label %for.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge

for.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_hsmc_nand_waitrdy.exit

for.end.i.cond.false34.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false34.i

cond.false34.i:                                   ; preds = %for.end.i.cond.false34.i_crit_edge, %if.end9.i.cond.false34.i_crit_edge
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 4
  %and35.i = and i32 %28, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond.i = select i1 %tobool36.not.i, i32 -110, i32 0
  br label %atmel_hsmc_nand_waitrdy.exit

atmel_hsmc_nand_waitrdy.exit:                     ; preds = %cond.false34.i, %for.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge, %cond.false.i.atmel_hsmc_nand_waitrdy.exit_crit_edge, %if.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge, %if.end.i.i, %if.then.i.i
  %retval.0.i = phi i32 [ %cond.i, %cond.false34.i ], [ %call21.i, %for.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge ], [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ], [ %call764.i, %if.end.i.atmel_hsmc_nand_waitrdy.exit_crit_edge ], [ %call7.i, %cond.false.i.atmel_hsmc_nand_waitrdy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_nand_data_in(ptr nocapture noundef readonly %nand, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %dmac = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmac, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %5 = load ptr, ptr @high_memory, align 4
  %cmp2 = icmp ugt ptr %5, %buf
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %6, %shr
  %call4 = tail call i32 @pfn_valid(i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp7 = icmp ult i32 %len, 128
  %or.cond.not = or i1 %cmp7, %tobool5.not
  %brmerge = or i1 %or.cond.not, %force_8bit
  br i1 %brmerge, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true10

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true3
  %activecs = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 3
  %7 = ptrtoint ptr %activecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %activecs, align 8
  %dma = getelementptr inbounds %struct.atmel_nand_cs, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  %call11 = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %10, i32 noundef %len, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %options = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options, align 8
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %brmerge39 = or i1 %tobool14.not, %force_8bit
  %activecs20 = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 3
  %13 = ptrtoint ptr %activecs20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %activecs20, align 8
  %io21 = getelementptr inbounds %struct.atmel_nand_cs, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %io21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io21, align 4
  br i1 %brmerge39, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div38 = lshr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %16, ptr noundef %buf, i32 noundef %div38) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_readsb(ptr noundef %16, ptr noundef %buf, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then17, %land.lhs.true10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_nand_data_out(ptr nocapture noundef readonly %nand, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %force_8bit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %dmac = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmac, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %5 = load ptr, ptr @high_memory, align 4
  %cmp2 = icmp ugt ptr %5, %buf
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %6, %shr
  %call4 = tail call i32 @pfn_valid(i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp7 = icmp ult i32 %len, 128
  %or.cond.not = or i1 %cmp7, %tobool5.not
  %brmerge = or i1 %or.cond.not, %force_8bit
  br i1 %brmerge, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true10

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true3
  %activecs = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 3
  %7 = ptrtoint ptr %activecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %activecs, align 8
  %dma = getelementptr inbounds %struct.atmel_nand_cs, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  %call11 = tail call fastcc i32 @atmel_nand_dma_transfer(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %10, i32 noundef %len, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %options = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options, align 8
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %brmerge39 = or i1 %tobool14.not, %force_8bit
  %activecs20 = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 3
  %13 = ptrtoint ptr %activecs20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %activecs20, align 8
  %io21 = getelementptr inbounds %struct.atmel_nand_cs, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %io21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io21, align 4
  br i1 %brmerge39, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div38 = lshr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %16, ptr noundef %buf, i32 noundef %div38) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_writesb(ptr noundef %16, ptr noundef %buf, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then17, %land.lhs.true10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_controller_probe(ptr noundef %pdev, ptr noundef %caps) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @atmel_nand_controller_init(ptr noundef nonnull %call.i, ptr noundef %pdev, ptr noundef %caps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %caps.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 4
  %legacy_of_bindings.i = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %legacy_of_bindings.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %legacy_of_bindings.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i:                                         ; preds = %if.end5
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %ebi_csa_regmap_name.i = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %ebi_csa_regmap_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ebi_csa_regmap_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %12 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %if.end9

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %13 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %of_parse_phandle.exit.i.if.end9_crit_edge, label %if.end7.i

of_parse_phandle.exit.i.if.end9_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end7.i:                                        ; preds = %of_parse_phandle.exit.i
  %call8.i = call ptr @of_match_node(ptr noundef nonnull @atmel_ebi_csa_regmap_of_ids, ptr noundef nonnull %14) #7
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %14) #7
  br label %if.end9

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %14) #7
  %ebi_csa_regmap.i = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %ebi_csa_regmap.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12.i, ptr %ebi_csa_regmap.i, align 4
  call void @of_node_put(ptr noundef nonnull %14) #7
  %16 = ptrtoint ptr %ebi_csa_regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ebi_csa_regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %atmel_smc_nand_controller_init.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end11.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call8.i, i32 0, i32 3
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %ebi_csa.i = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %ebi_csa.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %ebi_csa.i, align 4
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  %of_node20.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node20.i, align 8
  %call21.i = call i32 @of_device_is_compatible(ptr noundef %24, ptr noundef nonnull @.str.170) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end18.i.if.end9_crit_edge, label %if.then23.i

if.end18.i.if.end9_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %ebi_csa.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ebi_csa.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add.i = add i32 %28, 4
  store i32 %add.i, ptr %26, align 4
  br label %if.end9

atmel_smc_nand_controller_init.exit:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.168, i32 noundef %29) #10
  br label %cleanup

if.end9:                                          ; preds = %if.then23.i, %if.end18.i.if.end9_crit_edge, %if.then10.i, %of_parse_phandle.exit.i.if.end9_crit_edge, %of_parse_phandle.exit.thread.i, %if.end5.if.end9_crit_edge
  %call11 = call fastcc i32 @atmel_nand_controller_add_nands(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %atmel_smc_nand_controller_init.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %29, %atmel_smc_nand_controller_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_controller_remove(ptr noundef readonly %nc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chips.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 6
  %0 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chips.i, align 4
  %cmp.not21.i = icmp eq ptr %1, %chips.i
  br i1 %cmp.not21.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %nand.022.i = phi ptr [ %tmp.024.i, %atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.024.i = load ptr, ptr %nand.022.i, align 8
  %base.i.i = getelementptr inbounds %struct.atmel_nand, ptr %nand.022.i, i32 0, i32 2
  %call1.i.i = tail call i32 @mtd_device_unregister(ptr noundef %base.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i
  tail call void @nand_cleanup(ptr noundef %base.i.i) #7
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nand.022.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge

if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_controller_remove_nand.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %nand.022.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nand.022.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %atmel_nand_controller_remove_nand.exit.i

atmel_nand_controller_remove_nand.exit.i:         ; preds = %if.end.i.i.i.i, %if.end.i.i.atmel_nand_controller_remove_nand.exit.i_crit_edge
  %9 = ptrtoint ptr %nand.022.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %nand.022.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %nand.022.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.024.i, %chips.i
  br i1 %cmp.not.i, label %atmel_nand_controller_remove_nand.exit.i.if.end_crit_edge, label %atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge

atmel_nand_controller_remove_nand.exit.i.for.body.i_crit_edge: ; preds = %atmel_nand_controller_remove_nand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

atmel_nand_controller_remove_nand.exit.i.if.end_crit_edge: ; preds = %atmel_nand_controller_remove_nand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %atmel_nand_controller_remove_nand.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dmac.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 4
  %11 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmac.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.atmel_nand_controller_cleanup.exit_crit_edge, label %if.then.i

if.end.atmel_nand_controller_cleanup.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_controller_cleanup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef nonnull %12) #7
  br label %atmel_nand_controller_cleanup.exit

atmel_nand_controller_cleanup.exit:               ; preds = %if.then.i, %if.end.atmel_nand_controller_cleanup.exit_crit_edge
  %mck.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 7
  %13 = ptrtoint ptr %mck.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mck.i, align 4
  tail call void @clk_put(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %atmel_nand_controller_cleanup.exit, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atmel_nand_controller_cleanup.exit ], [ %call1.i.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_smc_nand_init(ptr noundef %nc, ptr nocapture noundef %nand) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 0, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent.i, align 8
  %controller.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nc, ptr %controller.i, align 4
  %mck.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 7
  %4 = ptrtoint ptr %mck.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mck.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 1
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i, align 4
  %ops.i = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %setup_interface.i = getelementptr inbounds %struct.atmel_nand_controller_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %setup_interface.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %setup_interface.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %options.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %options.i, align 8
  %or.i = or i32 %13, 8388608
  store i32 %or.i, ptr %options.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %dmac.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 4
  %14 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmac.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  br i1 %tobool5.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then6.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %options7.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %options7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %options7.i, align 8
  %or8.i = or i32 %17, 1048576
  store i32 %or8.i, ptr %options7.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %pmecc.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %nc, i32 0, i32 5
  %18 = ptrtoint ptr %pmecc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmecc.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %if.end9.i.atmel_nand_init.exit_crit_edge, label %if.then11.i

if.end9.i.atmel_nand_init.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_nand_init.exit

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %ecc.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 33
  %20 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %ecc.i, align 8
  br label %atmel_nand_init.exit

atmel_nand_init.exit:                             ; preds = %if.then11.i, %if.end9.i.atmel_nand_init.exit_crit_edge
  %ebi_csa_regmap = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %nc, i32 0, i32 1
  %21 = ptrtoint ptr %ebi_csa_regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ebi_csa_regmap, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %atmel_nand_init.exit.cleanup_crit_edge, label %for.cond.preheader

atmel_nand_init.exit.cleanup_crit_edge:           ; preds = %atmel_nand_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %atmel_nand_init.exit
  %numcs = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 6
  %23 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36 = icmp sgt i32 %24, 0
  br i1 %cmp36, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ebi_csa = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %nc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %ebi_csa_regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ebi_csa_regmap, align 4
  %27 = ptrtoint ptr %ebi_csa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ebi_csa, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %arrayidx = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %i.037
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %30, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %inc = add nuw nsw i32 %i.037, 1
  %33 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %numcs, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ebi_csa7 = getelementptr inbounds %struct.atmel_smc_nand_controller, ptr %nc, i32 0, i32 2
  %35 = ptrtoint ptr %ebi_csa7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ebi_csa7, align 4
  %nfd0_on_d16 = getelementptr inbounds %struct.atmel_smc_nand_ebi_csa_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %nfd0_on_d16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nfd0_on_d16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool8.not = icmp eq i32 %38, 0
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %if.then9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %ebi_csa_regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ebi_csa_regmap, align 4
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %36, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %42, i32 noundef %38, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.end.cleanup_crit_edge, %atmel_nand_init.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_setup_interface(ptr noundef %nand, i32 noundef %csline, ptr noundef %conf) #2 align 64 {
entry:
  %smcconf = alloca %struct.atmel_smc_cs_conf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %smcconf) #7
  %controller = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %0 = call ptr @memset(ptr %smcconf, i32 255, i32 20)
  %1 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %controller, align 4
  %call1 = call fastcc i32 @atmel_smc_nand_prepare_smcconf(ptr noundef %nand, ptr noundef %conf, ptr noundef nonnull %smcconf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline
  %smcconf5 = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %csline, i32 4
  %3 = call ptr @memcpy(ptr %smcconf5, ptr %smcconf, i32 20)
  %smc = getelementptr inbounds %struct.atmel_nand_controller, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smc, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @atmel_smc_cs_conf_apply(ptr noundef %5, i32 noundef %7, ptr noundef %smcconf5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %smcconf) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_smc_nand_exec_op(ptr noundef %nand, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  %arrayidx.i = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %1
  %activecs.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 3
  %2 = ptrtoint ptr %activecs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx.i, ptr %activecs.i, align 8
  %csgpio = getelementptr %struct.atmel_nand, ptr %nand, i32 0, i32 7, i32 %1, i32 2
  %3 = ptrtoint ptr %csgpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csgpio, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 0) #7
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %5 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp22.not = icmp eq i32 %6, 0
  br i1 %cmp22.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %controller.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2, i32 32
  %base.i.i = getelementptr inbounds %struct.atmel_nand, ptr %nand, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023
  %9 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller.i, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %12, label %for.body.for.end_crit_edge [
    i32 0, label %do.body.i
    i32 1, label %for.cond.preheader.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb16.i
    i32 4, label %sw.bb24.i
  ]

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.i:                             ; preds = %for.body
  %ctx2.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1
  %14 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp46.not.i = icmp eq i32 %15, 0
  br i1 %cmp46.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %do.body3.lr.ph.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body3.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1, i32 0, i32 1
  %caps10.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %10, i32 0, i32 1
  br label %do.body3.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !391
  tail call void @arm_heavy_mb() #7
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1
  %16 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctx.i, align 4
  %18 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %activecs.i, align 8
  %io.i = getelementptr inbounds %struct.atmel_nand_cs, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io.i, align 4
  %caps.i = getelementptr inbounds %struct.atmel_nand_controller, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caps.i, align 4
  %cle_offs.i = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cle_offs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cle_offs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %25
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %17) #7, !srcloc !392
  br label %for.inc

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %do.body3.lr.ph.i
  %i.047.i = phi i32 [ 0, %do.body3.lr.ph.i ], [ %inc.i, %do.body3.i.do.body3.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !393
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i16 = getelementptr i8, ptr %27, i32 %i.047.i
  %28 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i16, align 1
  %30 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %activecs.i, align 8
  %io8.i = getelementptr inbounds %struct.atmel_nand_cs, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %io8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io8.i, align 4
  %34 = ptrtoint ptr %caps10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps10.i, align 4
  %ale_offs.i = getelementptr inbounds %struct.atmel_nand_controller_caps, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ale_offs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ale_offs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %33, i32 %37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %29) #7, !srcloc !392
  %inc.i = add nuw i32 %i.047.i, 1
  %38 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctx2.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %do.body3.i.do.body3.i_crit_edge, label %do.body3.i.for.inc_crit_edge

do.body3.i.for.inc_crit_edge:                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3.i

sw.bb12.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctx13.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1
  %buf.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf.i, align 4
  %42 = ptrtoint ptr %ctx13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctx13.i, align 4
  %force_8bit.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %force_8bit.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.i = icmp ne i8 %45, 0
  tail call fastcc void @atmel_nand_data_in(ptr noundef %nand, ptr noundef %41, i32 noundef %43, i1 noundef zeroext %tobool.i) #7
  br label %for.inc

sw.bb16.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctx17.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1
  %buf18.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %buf18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf18.i, align 4
  %48 = ptrtoint ptr %ctx17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctx17.i, align 4
  %force_8bit22.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %force_8bit22.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %force_8bit22.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool23.i = icmp ne i8 %51, 0
  tail call fastcc void @atmel_nand_data_out(ptr noundef %nand, ptr noundef %47, i32 noundef %49, i1 noundef zeroext %tobool23.i) #7
  br label %for.inc

sw.bb24.i:                                        ; preds = %for.body
  %ctx25.i = getelementptr %struct.nand_op_instr, ptr %8, i32 %i.023, i32 1
  %52 = ptrtoint ptr %ctx25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctx25.i, align 4
  %54 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %activecs.i, align 8
  %rb.i.i = getelementptr inbounds %struct.atmel_nand_cs, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %rb.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @nand_soft_waitrdy(ptr noundef %base.i.i, i32 noundef %53) #7
  br label %atmel_smc_nand_exec_instr.exit

if.end.i.i:                                       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = getelementptr inbounds %struct.atmel_nand_cs, ptr %55, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call4.i.i = tail call i32 @nand_gpio_waitrdy(ptr noundef %base.i.i, ptr noundef %60, i32 noundef %53) #7
  br label %atmel_smc_nand_exec_instr.exit

atmel_smc_nand_exec_instr.exit:                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call4.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %atmel_smc_nand_exec_instr.exit.for.inc_crit_edge, label %atmel_smc_nand_exec_instr.exit.for.end_crit_edge

atmel_smc_nand_exec_instr.exit.for.end_crit_edge: ; preds = %atmel_smc_nand_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

atmel_smc_nand_exec_instr.exit.for.inc_crit_edge: ; preds = %atmel_smc_nand_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %atmel_smc_nand_exec_instr.exit.for.inc_crit_edge, %sw.bb16.i, %sw.bb12.i, %do.body3.i.for.inc_crit_edge, %do.body.i, %for.cond.preheader.i.for.inc_crit_edge
  %inc = add nuw i32 %i.023, 1
  %61 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %atmel_smc_nand_exec_instr.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ -22, %for.body.for.end_crit_edge ], [ %retval.0.i, %atmel_smc_nand_exec_instr.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %63 = ptrtoint ptr %activecs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %activecs.i, align 8
  %csgpio5 = getelementptr inbounds %struct.atmel_nand_cs, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %csgpio5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csgpio5, align 4
  tail call void @gpiod_set_value(ptr noundef %66, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_smc_cs_conf_apply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_nand_controller_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pmecc = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pmecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmecc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @atmel_pmecc_reset(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chips = getelementptr inbounds %struct.atmel_nand_controller, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %4)
  %nand.024 = load ptr, ptr %chips, align 4
  %cmp.not25 = icmp eq ptr %nand.024, %chips
  br i1 %cmp.not25, label %if.end.for.end13_crit_edge, label %if.end.for.cond3.preheader_crit_edge

if.end.for.cond3.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond3.preheader

if.end.for.end13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.cond.loopexit:                                ; preds = %for.body5.for.cond.loopexit_crit_edge, %for.cond3.preheader.for.cond.loopexit_crit_edge
  %5 = ptrtoint ptr %nand.026 to i32
  call void @__asan_load4_noabort(i32 %5)
  %nand.0 = load ptr, ptr %nand.026, align 4
  %cmp.not = icmp eq ptr %nand.0, %chips
  br i1 %cmp.not, label %for.cond.loopexit.for.end13_crit_edge, label %for.cond.loopexit.for.cond3.preheader_crit_edge

for.cond.loopexit.for.cond3.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader

for.cond.loopexit.for.end13_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.cond3.preheader:                              ; preds = %for.cond.loopexit.for.cond3.preheader_crit_edge, %if.end.for.cond3.preheader_crit_edge
  %nand.026 = phi ptr [ %nand.0, %for.cond.loopexit.for.cond3.preheader_crit_edge ], [ %nand.024, %if.end.for.cond3.preheader_crit_edge ]
  %numcs = getelementptr inbounds %struct.atmel_nand, ptr %nand.026, i32 0, i32 6
  %6 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp422 = icmp sgt i32 %7, 0
  br i1 %cmp422, label %for.body5.lr.ph, label %for.cond3.preheader.for.cond.loopexit_crit_edge

for.cond3.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %base = getelementptr inbounds %struct.atmel_nand, ptr %nand.026, i32 0, i32 2
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %i.023 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.body5.for.body5_crit_edge ]
  %call6 = tail call i32 @nand_reset(ptr noundef %base, i32 noundef %i.023) #7
  %inc = add nuw nsw i32 %i.023, 1
  %8 = ptrtoint ptr %numcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numcs, align 4
  %cmp4 = icmp slt i32 %inc, %9
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.cond.loopexit_crit_edge

for.body5.for.cond.loopexit_crit_edge:            ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.end13:                                        ; preds = %for.cond.loopexit.for.end13_crit_edge, %if.end.for.end13_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_pmecc_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !164, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !187, !189, !190, !191, !192, !194, !196, !198, !199, !201, !202, !203, !205, !206, !208, !210, !212, !214, !215, !217, !219, !221, !222, !224, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !324, !326, !328, !329, !330, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @__UNIQUE_ID_avoiddma249, !1, !"__UNIQUE_ID_avoiddma249", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 131, i32 1}
!2 = !{ptr @__param_avoiddma, !3, !"__param_avoiddma", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 132, i32 1}
!4 = !{ptr @__UNIQUE_ID_avoiddmatype250, !3, !"__UNIQUE_ID_avoiddmatype250", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_atmel_nand_controller__274_2657_atmel_nand_controller_driver_init6, !6, !"__initcall__kmod_atmel_nand_controller__274_2657_atmel_nand_controller_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2657, i32 1}
!7 = !{ptr @__exitcall_atmel_nand_controller_driver_exit, !6, !"__exitcall_atmel_nand_controller_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file275, !9, !"__UNIQUE_ID_file275", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2659, i32 1}
!10 = !{ptr @__UNIQUE_ID_license276, !9, !"__UNIQUE_ID_license276", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author277, !12, !"__UNIQUE_ID_author277", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2660, i32 1}
!13 = !{ptr @__UNIQUE_ID_description278, !14, !"__UNIQUE_ID_description278", i1 false, i1 false}
!14 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2661, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias279, !16, !"__UNIQUE_ID_alias279", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2662, i32 1}
!17 = !{ptr @atmel_nand_avoid_dma, !18, !"atmel_nand_avoid_dma", i1 false, i1 false}
!18 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 129, i32 13}
!19 = !{ptr @__param_str_avoiddma, !3, !"__param_str_avoiddma", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2650, i32 11}
!22 = !{ptr @atmel_nand_controller_driver, !23, !"atmel_nand_controller_driver", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2648, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2576, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @atmel_nand_controller_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @atmel_nand_controller_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2589, i32 10}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2603, i32 8}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2612, i32 10}
!38 = !{ptr @atmel_sama5_nand_caps, !39, !"atmel_sama5_nand_caps", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2396, i32 48}
!40 = !{ptr @atmel_hsmc_nc_ops, !41, !"atmel_hsmc_nc_ops", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2379, i32 47}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2353, i32 24}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2355, i32 3}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @atmel_hsmc_nand_controller_probe._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @atmel_hsmc_nand_controller_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2043, i32 10}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2053, i32 4}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @atmel_nand_controller_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @atmel_nand_controller_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2062, i32 3}
!58 = !{ptr @atmel_nand_controller_init._entry.15, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @atmel_nand_controller_init._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2066, i32 46}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2068, i32 3}
!64 = !{ptr @atmel_nand_controller_init._entry.19, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @atmel_nand_controller_init._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2076, i32 3}
!68 = !{ptr @atmel_nand_controller_init._entry.22, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @atmel_nand_controller_init._entry_ptr.24, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @nand_controller_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @atmel_nand_controller_ops, !74, !"atmel_nand_controller_ops", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2018, i32 41}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1994, i32 15}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2007, i32 9}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2010, i32 4}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @atmel_nand_attach_chip._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @atmel_nand_attach_chip._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2145, i32 3}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2152, i32 3}
!91 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.32, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.34, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2159, i32 3}
!95 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.35, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.37, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2168, i32 4}
!99 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2175, i32 3}
!103 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2186, i32 21}
!107 = !{ptr @atmel_hsmc_nand_controller_legacy_init._key, !108, !"_key", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2188, i32 11}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2191, i32 3}
!112 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2198, i32 3}
!116 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2209, i32 21}
!120 = !{ptr @atmel_hsmc_nand_controller_legacy_init._key.53, !121, !"_key", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2211, i32 17}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.55, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2214, i32 3}
!125 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.56, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2221, i32 3}
!128 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @atmel_hsmc_nand_controller_legacy_init._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2249, i32 3}
!132 = !{ptr @atmel_hsmc_nand_controller_init._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @atmel_hsmc_nand_controller_init._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @atmel_hsmc_nand_controller_init._entry.61, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2260, i32 4}
!136 = !{ptr @atmel_hsmc_nand_controller_init._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2265, i32 38}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2267, i32 3}
!141 = !{ptr @atmel_hsmc_nand_controller_init._entry.64, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @atmel_hsmc_nand_controller_init._entry_ptr.66, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2275, i32 3}
!145 = !{ptr @atmel_hsmc_nand_controller_init._entry.67, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @atmel_hsmc_nand_controller_init._entry_ptr.69, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2280, i32 7}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2282, i32 3}
!151 = !{ptr @atmel_hsmc_nand_controller_init._entry.71, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @atmel_hsmc_nand_controller_init._entry_ptr.73, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2290, i32 3}
!155 = !{ptr @atmel_hsmc_nand_controller_init._entry.74, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @atmel_hsmc_nand_controller_init._entry_ptr.76, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1862, i32 33}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1864, i32 3}
!161 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @atmel_nand_controller_add_nands._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @atmel_nand_controller_add_nands._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1870, i32 33}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1872, i32 3}
!168 = !{ptr @atmel_nand_controller_add_nands._entry.81, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @atmel_nand_controller_add_nands._entry_ptr.83, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1813, i32 3}
!172 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @atmel_nand_controller_legacy_add_nands._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @atmel_nand_controller_legacy_add_nands._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1826, i32 3}
!177 = !{ptr @atmel_nand_controller_legacy_add_nands._entry.86, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @atmel_nand_controller_legacy_add_nands._entry_ptr.88, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1836, i32 3}
!181 = !{ptr @atmel_nand_controller_legacy_add_nands._entry.89, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @atmel_nand_controller_legacy_add_nands._entry_ptr.91, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1629, i32 46}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1632, i32 3}
!189 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @atmel_nand_create._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @atmel_nand_create._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1643, i32 10}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1643, i32 27}
!196 = !{ptr @atmel_nand_create._entry.98, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1645, i32 3}
!198 = !{ptr @atmel_nand_create._entry_ptr.99, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1660, i32 4}
!201 = !{ptr @atmel_nand_create._entry.100, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @atmel_nand_create._entry_ptr.102, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @atmel_nand_create._entry.103, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1668, i32 4}
!205 = !{ptr @atmel_nand_create._entry_ptr.104, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1680, i32 33}
!208 = !{ptr @.str.106, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1689, i32 11}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1690, i32 11}
!212 = !{ptr @atmel_nand_create._entry.108, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1692, i32 5}
!214 = !{ptr @atmel_nand_create._entry_ptr.109, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1706, i32 10}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1707, i32 10}
!219 = !{ptr @atmel_nand_create._entry.112, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1709, i32 4}
!221 = !{ptr @atmel_nand_create._entry_ptr.113, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1734, i32 3}
!224 = !{ptr @.str.115, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @atmel_nand_controller_add_nand._entry, !223, !"_entry", i1 false, i1 false}
!227 = !{ptr @atmel_nand_controller_add_nand._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.118, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1742, i32 3}
!230 = !{ptr @atmel_nand_controller_add_nand._entry.117, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @atmel_nand_controller_add_nand._entry_ptr.119, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1748, i32 3}
!234 = !{ptr @atmel_nand_controller_add_nand._entry.120, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @atmel_nand_controller_add_nand._entry_ptr.122, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.123, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1210, i32 3}
!238 = !{ptr @.str.124, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @atmel_nand_ecc_init._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @atmel_nand_ecc_init._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1122, i32 3}
!243 = !{ptr @.str.126, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @atmel_nand_pmecc_init._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @atmel_nand_pmecc_init._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.127, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1129, i32 47}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1134, i32 8}
!250 = !{ptr @.str.129, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 800, i32 3}
!252 = !{ptr @.str.130, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @atmel_nand_pmecc_enable._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @atmel_nand_pmecc_enable._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 865, i32 3}
!257 = !{ptr @.str.132, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @atmel_nand_pmecc_correct_data._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @atmel_nand_pmecc_correct_data._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.133, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 830, i32 3}
!262 = !{ptr @.str.134, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @atmel_nand_pmecc_generate_eccbytes._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @atmel_nand_pmecc_generate_eccbytes._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.135, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1079, i32 3}
!267 = !{ptr @.str.136, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @atmel_hsmc_nand_pmecc_read_pg._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @atmel_hsmc_nand_pmecc_read_pg._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.137, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 460, i32 3}
!272 = !{ptr @.str.138, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @atmel_nfc_exec_op._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @atmel_nfc_exec_op._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.139, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 337, i32 3}
!277 = !{ptr @.str.140, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @atmel_nfc_wait._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @atmel_nfc_wait._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.142, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 342, i32 3}
!282 = !{ptr @atmel_nfc_wait._entry.141, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @atmel_nfc_wait._entry_ptr.143, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.145, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 347, i32 3}
!286 = !{ptr @atmel_nfc_wait._entry.144, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @atmel_nfc_wait._entry_ptr.146, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.148, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 352, i32 3}
!290 = !{ptr @atmel_nfc_wait._entry.147, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @atmel_nfc_wait._entry_ptr.149, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @init_completion.__key, !293, !"__key", i1 false, i1 false}
!293 = !{!"../include/linux/completion.h", i32 87, i32 2}
!294 = !{ptr @.str.150, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.151, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 377, i32 3}
!297 = !{ptr @.str.152, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @atmel_nand_dma_transfer._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @atmel_nand_dma_transfer._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.154, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 393, i32 3}
!302 = !{ptr @atmel_nand_dma_transfer._entry.153, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @atmel_nand_dma_transfer._entry_ptr.155, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.157, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 402, i32 3}
!306 = !{ptr @atmel_nand_dma_transfer._entry.156, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @atmel_nand_dma_transfer._entry_ptr.158, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.159, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 415, i32 2}
!310 = !{ptr @.str.160, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @atmel_nand_dma_transfer.__UNIQUE_ID_ddebug251, !309, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!312 = distinct !{null, !313, !"__already_done", i1 false, i1 false}
!313 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!314 = !{ptr @.str.161, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.163, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1008, i32 3}
!318 = !{ptr @atmel_hsmc_nand_pmecc_write_pg._entry, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @atmel_hsmc_nand_pmecc_write_pg._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @atmel_hsmc_op_parser, !321, !"atmel_hsmc_op_parser", i1 false, i1 false}
!321 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 686, i32 36}
!322 = !{ptr @atmel_sam9g45_nand_caps, !323, !"atmel_sam9g45_nand_caps", i1 false, i1 false}
!323 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2516, i32 48}
!324 = !{ptr @atmel_smc_nc_ops, !325, !"atmel_smc_nc_ops", i1 false, i1 false}
!325 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2462, i32 47}
!326 = !{ptr @.str.168, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2110, i32 3}
!328 = !{ptr @.str.169, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @atmel_smc_nand_controller_init._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @atmel_smc_nand_controller_init._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.170, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2121, i32 9}
!333 = !{ptr @atmel_ebi_csa_regmap_of_ids, !334, !"atmel_ebi_csa_regmap_of_ids", i1 false, i1 false}
!334 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1941, i32 34}
!335 = !{ptr @at91sam9260_ebi_csa, !336, !"at91sam9260_ebi_csa", i1 false, i1 false}
!336 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1908, i32 48}
!337 = !{ptr @at91sam9261_ebi_csa, !338, !"at91sam9261_ebi_csa", i1 false, i1 false}
!338 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1912, i32 48}
!339 = !{ptr @at91sam9263_ebi_csa, !340, !"at91sam9263_ebi_csa", i1 false, i1 false}
!340 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1916, i32 48}
!341 = !{ptr @at91sam9rl_ebi_csa, !342, !"at91sam9rl_ebi_csa", i1 false, i1 false}
!342 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1920, i32 48}
!343 = !{ptr @at91sam9g45_ebi_csa, !344, !"at91sam9g45_ebi_csa", i1 false, i1 false}
!344 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1924, i32 48}
!345 = !{ptr @at91sam9n12_ebi_csa, !346, !"at91sam9n12_ebi_csa", i1 false, i1 false}
!346 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1928, i32 48}
!347 = !{ptr @at91sam9x5_ebi_csa, !348, !"at91sam9x5_ebi_csa", i1 false, i1 false}
!348 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1932, i32 48}
!349 = !{ptr @sam9x60_ebi_csa, !350, !"sam9x60_ebi_csa", i1 false, i1 false}
!350 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 1936, i32 48}
!351 = !{ptr @atmel_sam9261_nand_caps, !352, !"atmel_sam9261_nand_caps", i1 false, i1 false}
!352 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2509, i32 48}
!353 = !{ptr @atmel_nand_controller_of_ids, !354, !"atmel_nand_controller_of_ids", i1 false, i1 false}
!354 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2524, i32 34}
!355 = !{ptr @.str.171, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2458, i32 25}
!357 = !{ptr @atmel_rm9200_nc_caps, !358, !"atmel_rm9200_nc_caps", i1 false, i1 false}
!358 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2455, i32 48}
!359 = !{ptr @at91rm9200_nc_ops, !360, !"at91rm9200_nc_ops", i1 false, i1 false}
!360 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2447, i32 47}
!361 = !{ptr @atmel_sam9260_nc_caps, !362, !"atmel_sam9260_nc_caps", i1 false, i1 false}
!362 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2471, i32 48}
!363 = !{ptr @atmel_sam9261_nc_caps, !364, !"atmel_sam9261_nc_caps", i1 false, i1 false}
!364 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2478, i32 48}
!365 = !{ptr @atmel_sam9g45_nc_caps, !366, !"atmel_sam9g45_nc_caps", i1 false, i1 false}
!366 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2485, i32 48}
!367 = !{ptr @atmel_sama5_nc_caps, !368, !"atmel_sama5_nc_caps", i1 false, i1 false}
!368 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2388, i32 48}
!369 = !{ptr @.str.172, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2497, i32 25}
!371 = !{ptr @microchip_sam9x60_nc_caps, !372, !"microchip_sam9x60_nc_caps", i1 false, i1 false}
!372 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2493, i32 48}
!373 = !{ptr @atmel_rm9200_nand_caps, !374, !"atmel_rm9200_nand_caps", i1 false, i1 false}
!374 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2502, i32 48}
!375 = !{ptr @atmel_nand_controller_pm_ops, !376, !"atmel_nand_controller_pm_ops", i1 false, i1 false}
!376 = !{!"../drivers/mtd/nand/raw/atmel/nand-controller.c", i32 2645, i32 8}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{i8 0, i8 2}
!387 = !{i32 0, i32 33}
!388 = !{!"auto-init"}
!389 = !{!"branch_weights", i32 2000, i32 1}
!390 = !{i64 2148787876, i64 2148787881, i64 2148787894, i64 2148787938, i64 2148787972, i64 2148787993}
!391 = !{i64 2154874877}
!392 = !{i64 6314079}
!393 = !{i64 2154875237}
