; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/qcom_nandc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/qcom_nandc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.qcom_nandc_props = type { i32, i8, i8, i8, i32 }
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
%struct.qcom_nand_controller = type { %struct.nand_controller, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, %union.anon.78, %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.qcom_nand_host = type { %struct.nand_chip, %struct.list_head, i32, i32, i32, i8, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.83, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
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
%struct.anon.83 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bam_transaction = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.completion, ptr, ptr }
%struct.nandc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.read_stats = type { i32, i32, i32 }
%struct.bam_cmd_element = type { i32, i32, i32, i32 }
%struct.desc_info = type { %struct.list_head, i32, %union.anon.85, ptr }
%union.anon.85 = type { %struct.scatterlist }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.qcom_adm_peripheral_config = type { i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_qcom_nandc__256_3200_qcom_nandc_driver_init6 = internal global ptr @qcom_nandc_driver_init, section ".initcall6.init", align 4
@qcom_nandc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_nandc_probe, ptr @qcom_nandc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_nandc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_nandc_driver_exit = internal global ptr @qcom_nandc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author257 = internal constant [57 x i8] c"qcom_nandc.author=Archit Taneja <architt@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [55 x i8] c"qcom_nandc.description=Qualcomm NAND Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [48 x i8] c"qcom_nandc.file=drivers/mtd/nand/raw/qcom_nandc\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [26 x i8] c"qcom_nandc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-nandc\00", [21 x i8] zeroinitializer }, align 32
@qcom_nandc_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq806x-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq806x_nandc_props }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq4019-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq4019_nandc_props }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8074_nandc_props }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8074_nandc_props }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdx55_nandc_props }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@qcom_nandc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get device data\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_nandc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/qcom_nandc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_nandc_probe._entry_ptr = internal global ptr @qcom_nandc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aon\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,cmd-crci\00", [18 x i8] zeroinitializer }, align 32
@qcom_nandc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 3013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"command CRCI unspecified\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_nandc_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@qcom_nandc_parse_dt._entry_ptr = internal global ptr @qcom_nandc_parse_dt._entry, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,data-crci\00", [17 x i8] zeroinitializer }, align 32
@qcom_nandc_parse_dt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 3020, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"data CRCI unspecified\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_nandc_parse_dt._entry_ptr.14 = internal global ptr @qcom_nandc_parse_dt._entry.12, section ".printk_index", align 4
@qcom_nandc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 2761, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_nandc_alloc\00", [47 x i8] zeroinitializer }, align 32
@qcom_nandc_alloc._entry_ptr = internal global ptr @qcom_nandc_alloc._entry, section ".printk_index", align 4
@qcom_nandc_alloc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 2796, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to DMA MAP reg buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_nandc_alloc._entry_ptr.19 = internal global ptr @qcom_nandc_alloc._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx DMA channel request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx DMA channel request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cmd DMA channel request failed\0A\00", [32 x i8] zeroinitializer }, align 32
@qcom_nandc_alloc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 2837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate bam transaction\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_nandc_alloc._entry_ptr.28 = internal global ptr @qcom_nandc_alloc._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxtx\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rxtx DMA channel request failed\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_nandc_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @qcom_nand_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@qcom_nandc_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @qcom_nandc_ecc_caps_stepinfo, i32 1, ptr @qcom_nandc_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@qcom_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 2584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No valid ECC settings possible\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_nand_attach_chip\00", [42 x i8] zeroinitializer }, align 32
@qcom_nand_attach_chip._entry_ptr = internal global ptr @qcom_nand_attach_chip._entry, section ".printk_index", align 4
@qcom_nand_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @qcom_nand_ooblayout_ecc, ptr @qcom_nand_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@qcom_nand_attach_chip.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 2, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_nandc\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"cfg0 %x cfg1 %x ecc_buf_cfg %x ecc_bch cfg %x cw_size %d cw_data %d strength %d parity_bytes %d steps %d\0A\00", [54 x i8] zeroinitializer }, align 32
@qcom_nandc_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 512, ptr @qcom_nandc_ecc_caps_strengths, i32 2 }, [20 x i8] zeroinitializer }, align 32
@qcom_nandc_ecc_caps_strengths = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 8], [24 x i8] zeroinitializer }, align 32
@read_page_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failure to read page/oob\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_page_ecc\00", [18 x i8] zeroinitializer }, align 32
@read_page_ecc._entry_ptr = internal global ptr @read_page_ecc._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@prepare_bam_async_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failure in mapping desc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prepare_bam_async_desc\00", [41 x i8] zeroinitializer }, align 32
@prepare_bam_async_desc._entry_ptr = internal global ptr @prepare_bam_async_desc._entry, section ".printk_index", align 4
@prepare_bam_async_desc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failure in prep desc\0A\00", [42 x i8] zeroinitializer }, align 32
@prepare_bam_async_desc._entry_ptr.45 = internal global ptr @prepare_bam_async_desc._entry.43, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@prep_adm_dma_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to configure dma channel\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prep_adm_dma_desc\00", [46 x i8] zeroinitializer }, align 32
@prep_adm_dma_desc._entry_ptr = internal global ptr @prep_adm_dma_desc._entry, section ".printk_index", align 4
@prep_adm_dma_desc._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 1010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to prepare desc\0A\00", [40 x i8] zeroinitializer }, align 32
@prep_adm_dma_desc._entry_ptr.50 = internal global ptr @prep_adm_dma_desc._entry.48, section ".printk_index", align 4
@qcom_nandc_read_cw_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1743, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failure to read raw cw %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_nandc_read_cw_raw\00", [41 x i8] zeroinitializer }, align 32
@qcom_nandc_read_cw_raw._entry_ptr = internal global ptr @qcom_nandc_read_cw_raw._entry, section ".printk_index", align 4
@qcom_nandc_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 2157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failure to write page\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_nandc_write_page\00", [42 x i8] zeroinitializer }, align 32
@qcom_nandc_write_page._entry_ptr = internal global ptr @qcom_nandc_write_page._entry, section ".printk_index", align 4
@qcom_nandc_write_page_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 2230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failure to write raw page\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_nandc_write_page_raw\00", [38 x i8] zeroinitializer }, align 32
@qcom_nandc_write_page_raw._entry_ptr = internal global ptr @qcom_nandc_write_page_raw._entry, section ".printk_index", align 4
@qcom_nandc_write_oob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 2282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failure to write oob\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_nandc_write_oob\00", [43 x i8] zeroinitializer }, align 32
@qcom_nandc_write_oob._entry_ptr = internal global ptr @qcom_nandc_write_oob._entry, section ".printk_index", align 4
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@qcom_nand_host_init_and_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 2916, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get chip-select\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qcom_nand_host_init_and_register\00", [63 x i8] zeroinitializer }, align 32
@qcom_nand_host_init_and_register._entry_ptr = internal global ptr @qcom_nand_host_init_and_register._entry, section ".printk_index", align 4
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_nand.%d\00", [19 x i8] zeroinitializer }, align 32
@qcom_nand_host_init_and_register._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.61, ptr @.str.3, i32 2963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_nand_host_init_and_register._entry_ptr.64 = internal global ptr @qcom_nand_host_init_and_register._entry.63, section ".printk_index", align 4
@probes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@qcom_nandc_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failure executing command %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_nandc_command\00", [45 x i8] zeroinitializer }, align 32
@qcom_nandc_command._entry_ptr = internal global ptr @qcom_nandc_command._entry, section ".printk_index", align 4
@qcom_nandc_command._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 1597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failure submitting descs for command %d\0A\00", [55 x i8] zeroinitializer }, align 32
@qcom_nandc_command._entry_ptr.70 = internal global ptr @qcom_nandc_command._entry.68, section ".printk_index", align 4
@qcom_nandc_select_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 2423, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid chip select\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_nandc_select_chip\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_nandc_select_chip._entry_ptr = internal global ptr @qcom_nandc_select_chip._entry, section ".printk_index", align 4
@qcom_nandc_block_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 2313, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error when trying to read BBM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_nandc_block_bad\00", [43 x i8] zeroinitializer }, align 32
@qcom_nandc_block_bad._entry_ptr = internal global ptr @qcom_nandc_block_bad._entry, section ".printk_index", align 4
@copy_last_cw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 2033, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to copy last codeword\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"copy_last_cw\00", [19 x i8] zeroinitializer }, align 32
@copy_last_cw._entry_ptr = internal global ptr @copy_last_cw._entry, section ".printk_index", align 4
@qcom_nandc_block_markbad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 2361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failure to update BBM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_nandc_block_markbad\00", [39 x i8] zeroinitializer }, align 32
@qcom_nandc_block_markbad._entry_ptr = internal global ptr @qcom_nandc_block_markbad._entry, section ".printk_index", align 4
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofpart\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcomsmem\00", [23 x i8] zeroinitializer }, align 32
@ipq806x_nandc_props = internal constant { %struct.qcom_nandc_props, [20 x i8] } { %struct.qcom_nandc_props { i32 10, i8 0, i8 0, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ipq4019_nandc_props = internal constant { %struct.qcom_nandc_props, [20 x i8] } { %struct.qcom_nandc_props { i32 12, i8 1, i8 1, i8 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ipq8074_nandc_props = internal constant { %struct.qcom_nandc_props, [20 x i8] } { %struct.qcom_nandc_props { i32 12, i8 1, i8 1, i8 0, i32 28672 }, [20 x i8] zeroinitializer }, align 32
@sdx55_nandc_props = internal constant { %struct.qcom_nandc_props, [20 x i8] } { %struct.qcom_nandc_props { i32 12, i8 1, i8 1, i8 1, i32 28672 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 164, i64 57005]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 172, i64 48879]
@__sancov_gen_cov_switch_values.84 = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 32, i64 36, i64 40, i64 68, i64 164, i64 172, i64 240, i64 3872, i64 3876, i64 3880, i64 3884, i64 3904, i64 3908, i64 3912, i64 3916, i64 48879, i64 57005]
@__sancov_gen_cov_switch_values.85 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 96, i64 128, i64 144, i64 236, i64 255]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 96, i64 128, i64 144, i64 236, i64 255]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 48715]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 48715]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 96, i64 144]
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"qcom_nandc_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3192, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3194, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"qcom_nandc_of_match\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3167, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3045, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3051, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3055, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3010, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3013, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3017, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3020, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2761, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2796, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2800, i32 49 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2805, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2809, i32 49 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2814, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2818, i32 50 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2823, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2836, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2842, i32 46 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2847, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"qcom_nandc_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2728, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 326, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 87, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1105, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"qcom_nandc_ecc_caps\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2584, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [24 x i8] c"qcom_nand_ooblayout_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2549, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2719, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [29 x i8] c"qcom_nandc_ecc_caps_stepinfo\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [30 x i8] c"qcom_nandc_ecc_caps_strengths\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2559, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1998, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 821, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 833, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1004, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1010, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1743, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2157, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2230, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2282, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2914, i32 33 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2916, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2921, i32 46 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2962, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant [7 x i8] c"probes\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2903, i32 27 }
@___asan_gen_.334 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 464, i32 31 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1586, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1595, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2423, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2313, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2033, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2361, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2903, i32 40 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2903, i32 55 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2903, i32 65 }
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c"ipq806x_nandc_props\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3135, i32 38 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c"ipq4019_nandc_props\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3141, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c"ipq8074_nandc_props\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3148, i32 38 }
@___asan_gen_.408 = private unnamed_addr constant [18 x i8] c"sdx55_nandc_props\00", align 1
@___asan_gen_.409 = private constant [37 x i8] c"../drivers/mtd/nand/raw/qcom_nandc.c\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3155, i32 38 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_qcom_nandc_driver_exit, ptr @__initcall__kmod_qcom_nandc__256_3200_qcom_nandc_driver_init6, ptr @copy_last_cw._entry, ptr @copy_last_cw._entry_ptr, ptr @prep_adm_dma_desc._entry, ptr @prep_adm_dma_desc._entry.48, ptr @prep_adm_dma_desc._entry_ptr, ptr @prep_adm_dma_desc._entry_ptr.50, ptr @prepare_bam_async_desc._entry, ptr @prepare_bam_async_desc._entry.43, ptr @prepare_bam_async_desc._entry_ptr, ptr @prepare_bam_async_desc._entry_ptr.45, ptr @qcom_nand_attach_chip._entry, ptr @qcom_nand_attach_chip._entry_ptr, ptr @qcom_nand_host_init_and_register._entry, ptr @qcom_nand_host_init_and_register._entry.63, ptr @qcom_nand_host_init_and_register._entry_ptr, ptr @qcom_nand_host_init_and_register._entry_ptr.64, ptr @qcom_nandc_alloc._entry, ptr @qcom_nandc_alloc._entry.17, ptr @qcom_nandc_alloc._entry.26, ptr @qcom_nandc_alloc._entry_ptr, ptr @qcom_nandc_alloc._entry_ptr.19, ptr @qcom_nandc_alloc._entry_ptr.28, ptr @qcom_nandc_block_bad._entry, ptr @qcom_nandc_block_bad._entry_ptr, ptr @qcom_nandc_block_markbad._entry, ptr @qcom_nandc_block_markbad._entry_ptr, ptr @qcom_nandc_command._entry, ptr @qcom_nandc_command._entry.68, ptr @qcom_nandc_command._entry_ptr, ptr @qcom_nandc_command._entry_ptr.70, ptr @qcom_nandc_driver_exit, ptr @qcom_nandc_parse_dt._entry, ptr @qcom_nandc_parse_dt._entry.12, ptr @qcom_nandc_parse_dt._entry_ptr, ptr @qcom_nandc_parse_dt._entry_ptr.14, ptr @qcom_nandc_probe._entry, ptr @qcom_nandc_probe._entry_ptr, ptr @qcom_nandc_read_cw_raw._entry, ptr @qcom_nandc_read_cw_raw._entry_ptr, ptr @qcom_nandc_select_chip._entry, ptr @qcom_nandc_select_chip._entry_ptr, ptr @qcom_nandc_write_oob._entry, ptr @qcom_nandc_write_oob._entry_ptr, ptr @qcom_nandc_write_page._entry, ptr @qcom_nandc_write_page._entry_ptr, ptr @qcom_nandc_write_page_raw._entry, ptr @qcom_nandc_write_page_raw._entry_ptr, ptr @read_page_ecc._entry, ptr @read_page_ecc._entry_ptr, ptr @qcom_nandc_driver, ptr @.str, ptr @qcom_nandc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @qcom_nandc_ops, ptr @.str.31, ptr @.str.32, ptr @init_completion.__key, ptr @.str.33, ptr @nand_controller_init.__key, ptr @.str.34, ptr @qcom_nandc_ecc_caps, ptr @.str.35, ptr @.str.36, ptr @qcom_nand_ooblayout_ops, ptr @.str.37, ptr @.str.38, ptr @qcom_nandc_ecc_caps_stepinfo, ptr @qcom_nandc_ecc_caps_strengths, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @probes, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @ipq806x_nandc_props, ptr @ipq4019_nandc_props, ptr @ipq8074_nandc_props, ptr @sdx55_nandc_props], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_parse_dt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_alloc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_alloc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nand_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_ecc_caps_strengths to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_page_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_bam_async_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_bam_async_desc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prep_adm_dma_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prep_adm_dma_desc._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_read_cw_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_write_page_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_write_oob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nand_host_init_and_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nand_host_init_and_register._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_command._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_select_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_block_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_last_cw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_nandc_block_markbad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_nandc_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq4019_nandc_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_nandc_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_nandc_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_nandc_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_nandc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_nandc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev3 = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 22
  %2 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %props, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #12
  %core_clk = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %core_clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  %aon_clk = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %aon_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %aon_clk, align 4
  %cmp.i121 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %8, i32 0, i32 22
  %13 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %props.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then.i:                                        ; preds = %if.end22
  %cmd_crci.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %8, i32 0, i32 8, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef %cmd_crci.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.qcom_nandc_parse_dt.exit_crit_edge

if.then.i.qcom_nandc_parse_dt.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_nandc_parse_dt.exit

if.end.i:                                         ; preds = %if.then.i
  %data_crci.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %8, i32 0, i32 8, i32 0, i32 2
  %call.i.i25.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef %data_crci.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i25.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i25.i, -1
  br i1 %tobool6.not.i, label %if.end.i.if.end26_crit_edge, label %if.end.i.qcom_nandc_parse_dt.exit_crit_edge

if.end.i.qcom_nandc_parse_dt.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qcom_nandc_parse_dt.exit

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

qcom_nandc_parse_dt.exit:                         ; preds = %if.end.i.qcom_nandc_parse_dt.exit_crit_edge, %if.then.i.qcom_nandc_parse_dt.exit_crit_edge
  %.str.13.sink.i = phi ptr [ @.str.9, %if.then.i.qcom_nandc_parse_dt.exit_crit_edge ], [ @.str.13, %if.end.i.qcom_nandc_parse_dt.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i.i, %if.then.i.qcom_nandc_parse_dt.exit_crit_edge ], [ %call.i.i25.i, %if.end.i.qcom_nandc_parse_dt.exit_crit_edge ]
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull %.str.13.sink.i) #15
  br label %cleanup

if.end26:                                         ; preds = %if.end.i.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %call27 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %call28 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call27) #12
  %base = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %base, align 4
  %cmp.i122 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %21 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call27, align 4
  %base_phys = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %base_phys to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %base_phys, align 4
  %24 = load i32, ptr %call27, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call27, i32 0, i32 1
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %24
  %add.i = add i32 %sub.i, %26
  %call37 = tail call i32 @dma_map_resource(ptr noundef %dev1, i32 noundef %24, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  %base_dma = getelementptr inbounds %struct.qcom_nand_controller, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %base_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call37, ptr %base_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp.i123.not = icmp eq i32 %call37, -1
  br i1 %cmp.i123.not, label %if.end34.cleanup_crit_edge, label %if.end42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core_clk, align 4
  %call44 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.err_core_clk_crit_edge

if.end42.err_core_clk_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_core_clk

if.end47:                                         ; preds = %if.end42
  %30 = ptrtoint ptr %aon_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aon_clk, align 4
  %call49 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.err_aon_clk_crit_edge

if.end47.err_aon_clk_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_aon_clk

if.end52:                                         ; preds = %if.end47
  %call53 = tail call fastcc i32 @qcom_nandc_alloc(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.err_nandc_alloc_crit_edge

if.end52.err_nandc_alloc_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_nandc_alloc

if.end56:                                         ; preds = %if.end52
  tail call fastcc void @qcom_nandc_setup(ptr noundef nonnull %call.i)
  %call61 = tail call fastcc i32 @qcom_probe_nand_devices(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end56.cleanup_crit_edge, label %err_setup

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_setup:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @qcom_nandc_unalloc(ptr noundef nonnull %call.i)
  br label %err_nandc_alloc

err_nandc_alloc:                                  ; preds = %err_setup, %if.end52.err_nandc_alloc_crit_edge
  %ret.1 = phi i32 [ %call53, %if.end52.err_nandc_alloc_crit_edge ], [ %call61, %err_setup ]
  %32 = ptrtoint ptr %aon_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aon_clk, align 4
  tail call void @clk_disable(ptr noundef %33) #12
  tail call void @clk_unprepare(ptr noundef %33) #12
  br label %err_aon_clk

err_aon_clk:                                      ; preds = %err_nandc_alloc, %if.end47.err_aon_clk_crit_edge
  %ret.2 = phi i32 [ %call49, %if.end47.err_aon_clk_crit_edge ], [ %ret.1, %err_nandc_alloc ]
  %34 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %35) #12
  tail call void @clk_unprepare(ptr noundef %35) #12
  br label %err_core_clk

err_core_clk:                                     ; preds = %err_aon_clk, %if.end42.err_core_clk_crit_edge
  %ret.3 = phi i32 [ %call44, %if.end42.err_core_clk_crit_edge ], [ %ret.2, %err_aon_clk ]
  %36 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call27, align 4
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end.i, align 4
  %sub.i125 = sub i32 1, %37
  %add.i126 = add i32 %sub.i125, %39
  tail call void @dma_unmap_resource(ptr noundef %dev1, i32 noundef %37, i32 noundef %add.i126, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %err_core_clk, %if.end56.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then31, %qcom_nandc_parse_dt.exit, %if.then19, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then12 ], [ %6, %if.then19 ], [ %20, %if.then31 ], [ %ret.3, %err_core_clk ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph.i, %qcom_nandc_parse_dt.exit ], [ -6, %if.end34.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %host_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn44 = load ptr, ptr %host_list, align 4
  %cmp.not46 = icmp eq ptr %.pn44, %host_list
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn44, %entry.for.body_crit_edge ]
  %host.048 = getelementptr i8, ptr %.pn47, i32 -2168
  %call5 = tail call i32 @mtd_device_unregister(ptr noundef %host.048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !210

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3120, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %host.048) #12
  %3 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %host_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @qcom_nandc_unalloc(ptr noundef %1)
  %aon_clk = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %aon_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aon_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  %core_clk = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %base_dma = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %base_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_dma, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  tail call void @dma_unmap_resource(ptr noundef %dev, i32 noundef %9, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %clk) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_nandc_alloc(ptr noundef %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_size = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 12
  %4 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 532, ptr %buf_size, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 532, i32 noundef 3520) #12
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 11
  %7 = ptrtoint ptr %data_buffer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %data_buffer, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i151 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 100, i32 noundef 3520) #12
  %regs = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 19
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i151, ptr %regs, align 4
  %tobool12.not = icmp eq ptr %call.i151, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 192, i32 noundef 3520) #12
  %reg_read_buf = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 16
  %13 = ptrtoint ptr %reg_read_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %reg_read_buf, align 4
  %tobool18.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %14 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call.i152 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call5.i.i) #12
  br i1 %call.i152, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then22
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !210

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %19) #12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %19, ptr noundef nonnull %call5.i.i, i32 noundef 192) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %call5.i.i to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 192, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %reg_read_dma = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 17
  %26 = ptrtoint ptr %reg_read_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %reg_read_dma, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %28, i32 noundef %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  br i1 %cmp.i, label %do.end33, label %if.end35

do.end33:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.18) #15
  br label %cleanup

if.end35:                                         ; preds = %dma_map_single_attrs.exit
  %call37 = tail call ptr @dma_request_chan(ptr noundef %30, ptr noundef nonnull @.str.20) #12
  %31 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call37, ptr %31, align 4
  %cmp.i153 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %call37 to i32
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %31, align 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %36, i32 noundef %33, ptr noundef nonnull @.str.21) #12
  br label %unalloc

if.end46:                                         ; preds = %if.end35
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %call48 = tail call ptr @dma_request_chan(ptr noundef %38, ptr noundef nonnull @.str.22) #12
  %rx_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 1
  %39 = ptrtoint ptr %rx_chan to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call48, ptr %rx_chan, align 4
  %cmp.i154 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then51, label %if.end57

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call48 to i32
  %41 = ptrtoint ptr %rx_chan to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rx_chan, align 4
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %call56 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %43, i32 noundef %40, ptr noundef nonnull @.str.23) #12
  br label %unalloc

if.end57:                                         ; preds = %if.end46
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %call59 = tail call ptr @dma_request_chan(ptr noundef %45, ptr noundef nonnull @.str.24) #12
  %cmd_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %46 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call59, ptr %cmd_chan, align 4
  %cmp.i155 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then62, label %if.end68

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call59 to i32
  %48 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %cmd_chan, align 4
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %call67 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %50, i32 noundef %47, ptr noundef nonnull @.str.25) #12
  br label %unalloc

if.end68:                                         ; preds = %if.end57
  %max_cwperpage = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 15
  %51 = ptrtoint ptr %max_cwperpage to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %max_cwperpage, align 4
  %call69 = tail call fastcc ptr @alloc_bam_transaction(ptr noundef %nandc)
  %bam_txn = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %52 = ptrtoint ptr %bam_txn to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call69, ptr %bam_txn, align 4
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %do.end75, label %if.end68.if.end89_crit_edge

if.end68.if.end89_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.27) #15
  br label %unalloc

if.else:                                          ; preds = %if.end20
  %call79 = tail call ptr @dma_request_chan(ptr noundef %19, ptr noundef nonnull @.str.29) #12
  %55 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call79, ptr %55, align 4
  %cmp.i156 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then82, label %if.else.if.end89_crit_edge

if.else.if.end89_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %call79 to i32
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %55, align 4
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %call87 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %60, i32 noundef %57, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end89:                                         ; preds = %if.else.if.end89_crit_edge, %if.end68.if.end89_crit_edge
  %desc_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9
  %61 = ptrtoint ptr %desc_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %desc_list, ptr %desc_list, align 4
  %prev.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %desc_list, ptr %prev.i, align 4
  %host_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 1
  %63 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %host_list, ptr %host_list, align 4
  %prev.i157 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %host_list, ptr %prev.i157, align 4
  tail call void @__mutex_init(ptr noundef %nandc, ptr noundef nonnull @.str.34, ptr noundef nonnull @nand_controller_init.__key) #12
  %ops = getelementptr inbounds %struct.nand_controller, ptr %nandc, i32 0, i32 1
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @qcom_nandc_ops, ptr %ops, align 4
  br label %cleanup

unalloc:                                          ; preds = %do.end75, %if.then62, %if.then51, %if.then40
  %ret.0 = phi i32 [ %33, %if.then40 ], [ %40, %if.then51 ], [ %47, %if.then62 ], [ -12, %do.end75 ]
  tail call fastcc void @qcom_nandc_unalloc(ptr noundef %nandc)
  br label %cleanup

cleanup:                                          ; preds = %unalloc, %if.end89, %if.then82, %do.end33, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -5, %do.end33 ], [ %ret.0, %unalloc ], [ 0, %if.end89 ], [ %57, %if.then82 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_nandc_setup(ptr nocapture noundef %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %0 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %props, align 4
  %is_qpic = getelementptr inbounds %struct.qcom_nandc_props, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %is_qpic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_qpic, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !212
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev_cmd_reg_start = getelementptr inbounds %struct.qcom_nandc_props, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %dev_cmd_reg_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_cmd_reg_start, align 4
  %add = add i32 %11, 172
  %base.i1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 3
  %12 = ptrtoint ptr %base.i1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i1, align 4
  %add.ptr.i2 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 486539264) #12, !srcloc !212
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  %base.i7 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 3
  %18 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i7, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %add.ptr.i4 = getelementptr i8, ptr %19, i32 3840
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #12, !srcloc !213
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then10, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %21, 1
  %22 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i7, align 4
  %add.ptr.i6 = getelementptr i8, ptr %23, i32 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %24) #12, !srcloc !212
  br label %if.end12

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i8 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 67108864) #12, !srcloc !212
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10, %if.then8.if.end12_crit_edge
  %25 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %props, align 4
  %qpic_v214 = getelementptr inbounds %struct.qcom_nandc_props, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %qpic_v214 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %qpic_v214, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool15.not = icmp eq i8 %28, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %dev_cmd_reg_start18 = getelementptr inbounds %struct.qcom_nandc_props, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %dev_cmd_reg_start18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_cmd_reg_start18, align 4
  %add19 = add i32 %30, 164
  %base.i9 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 3
  %31 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %32, i32 %add19
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #12, !srcloc !213
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  %cmd1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 20
  %35 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cmd1, align 4
  %vld = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 21
  %36 = ptrtoint ptr %vld to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 29, ptr %vld, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_probe_nand_devices(ptr noundef %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef null) #12
  %cmp.not31 = icmp eq ptr %call, null
  br i1 %cmp.not31, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %bam_txn1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %max_cwperpage.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 15
  %host_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.032 = phi ptr [ %call, %for.body.lr.ph ], [ %call7, %for.inc.for.body_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2248, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_node_put(ptr noundef nonnull %child.032) #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %cs.i = getelementptr inbounds %struct.qcom_nand_host, ptr %call.i, i32 0, i32 2
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.032, ptr noundef nonnull @.str.59, ptr noundef %cs.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.60) #15
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %6 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %child.032, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %7 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.nand_set_flash_node.exit.i_crit_edge

if.end.i.nand_set_flash_node.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nand_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i79.i = tail call i32 @of_property_read_string(ptr noundef nonnull %child.032, ptr noundef nonnull @.str.65, ptr noundef %name.i.i.i) #12
  br label %nand_set_flash_node.exit.i

nand_set_flash_node.exit.i:                       ; preds = %if.then.i.i.i, %if.end.i.nand_set_flash_node.exit.i_crit_edge
  %9 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cs.i, align 8
  %call5.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.62, i32 noundef %10) #12
  %11 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i, ptr %name.i.i.i, align 8
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %nand_set_flash_node.exit.i.if.then5_crit_edge, label %if.end9.i

nand_set_flash_node.exit.i.if.then5_crit_edge:    ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end9.i:                                        ; preds = %nand_set_flash_node.exit.i
  %owner.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 55
  %12 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %owner.i, align 4
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %parent.i, align 8
  %cmdfunc.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %cmdfunc.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @qcom_nandc_command, ptr %cmdfunc.i, align 8
  %select_chip.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %select_chip.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qcom_nandc_select_chip, ptr %select_chip.i, align 8
  %read_byte.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @qcom_nandc_read_byte, ptr %read_byte.i, align 4
  %read_buf.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @qcom_nandc_read_buf, ptr %read_buf.i, align 8
  %write_buf.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qcom_nandc_write_buf, ptr %write_buf.i, align 4
  %set_features.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 13
  %19 = ptrtoint ptr %set_features.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nand_get_set_features_notsupp, ptr %set_features.i, align 4
  %get_features.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 14
  %20 = ptrtoint ptr %get_features.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nand_get_set_features_notsupp, ptr %get_features.i, align 8
  %block_bad.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 11
  %21 = ptrtoint ptr %block_bad.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qcom_nandc_block_bad, ptr %block_bad.i, align 4
  %block_markbad.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %block_markbad.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @qcom_nandc_block_markbad, ptr %block_markbad.i, align 8
  %controller19.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 32
  %23 = ptrtoint ptr %controller19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %nandc, ptr %controller19.i, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %options.i, align 8
  %or.i = or i32 %25, 1114624
  store i32 %or.i, ptr %options.i, align 8
  %status.i = getelementptr inbounds %struct.qcom_nand_host, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -64, ptr %status.i, align 4
  %call.i.i = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool21.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end9.i.if.then5_crit_edge

if.end9.i.if.then5_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end23.i:                                       ; preds = %if.end9.i
  %27 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %props.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool24.not.i = icmp eq i8 %30, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end35.i_crit_edge, label %if.then25.i

if.end23.i.if.end35.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then25.i:                                      ; preds = %if.end23.i
  %31 = ptrtoint ptr %bam_txn1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bam_txn1.i.i, align 4
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 4
  tail call void @devm_kfree(ptr noundef %34, ptr noundef %32) #12
  %35 = ptrtoint ptr %max_cwperpage.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_cwperpage.i.i, align 4
  %mul.i.i = mul i32 %36, 1312
  %add.i.i = add i32 %mul.i.i, 112
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  %call.i.i81.i = tail call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef %add.i.i, i32 noundef 3520) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i81.i, null
  br i1 %tobool.not.i.i, label %do.end32.i, label %alloc_bam_transaction.exit.i

alloc_bam_transaction.exit.i:                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i81.i, i32 112
  %39 = ptrtoint ptr %call.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i, ptr %call.i.i81.i, align 4
  %mul1.i.i = shl i32 %36, 9
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul1.i.i
  %cmd_sgl.i.i = getelementptr inbounds %struct.bam_transaction, ptr %call.i.i81.i, i32 0, i32 1
  %40 = ptrtoint ptr %cmd_sgl.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr2.i.i, ptr %cmd_sgl.i.i, align 4
  %mul3.i.i = mul i32 %36, 640
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %mul3.i.i
  %data_sgl.i.i = getelementptr inbounds %struct.bam_transaction, ptr %call.i.i81.i, i32 0, i32 2
  %41 = ptrtoint ptr %data_sgl.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr4.i.i, ptr %data_sgl.i.i, align 4
  %txn_done.i.i = getelementptr inbounds %struct.bam_transaction, ptr %call.i.i81.i, i32 0, i32 12
  %42 = ptrtoint ptr %txn_done.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %txn_done.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.bam_transaction, ptr %call.i.i81.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #12
  %43 = ptrtoint ptr %bam_txn1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i81.i, ptr %bam_txn1.i.i, align 4
  br label %if.end35.i

do.end32.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bam_txn1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %bam_txn1.i.i, align 4
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.27) #15
  tail call void @nand_cleanup(ptr noundef nonnull %call.i) #12
  br label %if.then5

if.end35.i:                                       ; preds = %alloc_bam_transaction.exit.i, %if.end23.i.if.end35.i_crit_edge
  %call36.i = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef nonnull @probes, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end6, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nand_cleanup(ptr noundef nonnull %call.i) #12
  br label %if.then5

if.then5:                                         ; preds = %if.then38.i, %do.end32.i, %if.end9.i.if.then5_crit_edge, %nand_set_flash_node.exit.i.if.then5_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call36.i, %if.then38.i ], [ %call.i.i, %if.end9.i.if.then5_crit_edge ], [ -12, %nand_set_flash_node.exit.i.if.then5_crit_edge ], [ -12, %do.end32.i ], [ -6, %do.end.i ]
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call.i) #12
  br label %for.inc

if.end6:                                          ; preds = %if.end35.i
  %node = getelementptr inbounds %struct.qcom_nand_host, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i24 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %48, ptr noundef %host_list) #12
  br i1 %call.i.i24, label %if.end.i.i, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %node, ptr %prev.i, align 4
  %50 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %host_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.qcom_nand_host, ptr %call.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %node, ptr %48, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end6.for.inc_crit_edge, %if.then5
  %retval.0.i27 = phi i32 [ %retval.0.i.ph, %if.then5 ], [ 0, %if.end6.for.inc_crit_edge ], [ 0, %if.end.i.i ]
  %call7 = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef nonnull %child.032) #12
  %cmp.not = icmp eq ptr %call7, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then ], [ -19, %entry.cleanup_crit_edge ], [ %retval.0.i27, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_nandc_unalloc(ptr nocapture noundef readonly %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %0 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %reg_read_dma = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 17
  %6 = ptrtoint ptr %reg_read_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_read_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, -1
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %reg_read_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_read_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 192, i32 noundef 2, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %12 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %14) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %rx_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 1
  %15 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_chan, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %16) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %cmd_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %17 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_chan, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end12.if.end21_crit_edge, label %if.end12.if.end21.sink.split_crit_edge

if.end12.if.end21.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.else:                                          ; preds = %entry
  %19 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.else.if.end21_crit_edge, label %if.else.if.end21.sink.split_crit_edge

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.sink.split

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.else.if.end21.sink.split_crit_edge, %if.end12.if.end21.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.end12.if.end21.sink.split_crit_edge ], [ %21, %if.else.if.end21.sink.split_crit_edge ]
  tail call void @dma_release_channel(ptr noundef nonnull %.sink) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_bam_transaction(ptr nocapture noundef readonly %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_cwperpage = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 15
  %0 = ptrtoint ptr %max_cwperpage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_cwperpage, align 4
  %mul = mul i32 %1, 1312
  %add = add i32 %mul, 112
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %call.i, i32 112
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %call.i, align 4
  %mul1 = shl i32 %1, 9
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul1
  %cmd_sgl = getelementptr inbounds %struct.bam_transaction, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmd_sgl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr2, ptr %cmd_sgl, align 4
  %mul3 = mul i32 %1, 640
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %mul3
  %data_sgl = getelementptr inbounds %struct.bam_transaction, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %data_sgl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr4, ptr %data_sgl, align 4
  %txn_done = getelementptr inbounds %struct.bam_transaction, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %txn_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %txn_done, align 4
  %wait.i = getelementptr inbounds %struct.bam_transaction, ptr %call.i, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
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
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc2 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %size, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %3 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %options, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %div229 = lshr i32 %6, 9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %mul.neg = mul nsw i32 %div229, -4
  %sub = add i32 %mul.neg, %8
  %call5 = tail call i32 @nand_ecc_choose_conf(ptr noundef %chip, ptr noundef nonnull @qcom_nandc_ecc_caps, i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %11 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp = icmp sgt i32 %12, 7
  br i1 %cmp, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end
  %bch_enabled = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 6
  %13 = ptrtoint ptr %bch_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %bch_enabled, align 1
  %ecc_bytes_hw10 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ecc_bytes_hw10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 14, ptr %ecc_bytes_hw10, align 8
  %spare_bytes = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %15 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %spare_bytes, align 4
  br label %if.end40

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %ecc_bytes_hw10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 13, ptr %ecc_bytes_hw10, align 8
  %spare_bytes11 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %17 = ptrtoint ptr %spare_bytes11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %spare_bytes11, align 4
  br label %if.end40

if.else14:                                        ; preds = %if.end
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %props, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and15 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else29, label %if.then17

if.then17:                                        ; preds = %if.else14
  %bch_enabled18 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 6
  %22 = ptrtoint ptr %bch_enabled18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bch_enabled18, align 1
  %ecc_bytes_hw25 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  br i1 %tobool.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %ecc_bytes_hw25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %ecc_bytes_hw25, align 8
  %spare_bytes22 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %24 = ptrtoint ptr %spare_bytes22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %spare_bytes22, align 4
  br label %if.end40

if.else24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %ecc_bytes_hw25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %ecc_bytes_hw25, align 8
  %spare_bytes26 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %26 = ptrtoint ptr %spare_bytes26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %spare_bytes26, align 4
  br label %if.end40

if.else29:                                        ; preds = %if.else14
  %ecc_bytes_hw30 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  %27 = ptrtoint ptr %ecc_bytes_hw30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %ecc_bytes_hw30, align 8
  %spare_bytes36 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  br i1 %tobool.not, label %if.else35, label %if.then32

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %spare_bytes36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %spare_bytes36, align 4
  br label %if.end40

if.else35:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %spare_bytes36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %spare_bytes36, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then32, %if.else24, %if.then20, %if.else, %if.then9
  %.sink = phi i32 [ 1, %if.else24 ], [ 2, %if.then20 ], [ 1, %if.else35 ], [ 2, %if.then32 ], [ 2, %if.then9 ], [ 1, %if.else ]
  %ecc_mode.0 = phi i32 [ 0, %if.else24 ], [ 0, %if.then20 ], [ 16, %if.else35 ], [ 16, %if.then32 ], [ 16, %if.then9 ], [ 16, %if.else ]
  %bbm_size27 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 9
  %30 = ptrtoint ptr %bbm_size27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %bbm_size27, align 8
  %ecc_bytes_hw41 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  %31 = ptrtoint ptr %ecc_bytes_hw41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_bytes_hw41, align 8
  %spare_bytes42 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %33 = ptrtoint ptr %spare_bytes42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spare_bytes42, align 4
  %add = add i32 %34, %32
  %bbm_size43 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 9
  %35 = ptrtoint ptr %bbm_size43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bbm_size43, align 8
  %add44 = add i32 %add, %36
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %37 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add44, ptr %bytes, align 4
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %38 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @qcom_nandc_read_page, ptr %read_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %39 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @qcom_nandc_read_page_raw, ptr %read_page_raw, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %40 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @qcom_nandc_read_oob, ptr %read_oob, align 4
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %41 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @qcom_nandc_write_page, ptr %write_page, align 4
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %42 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @qcom_nandc_write_page_raw, ptr %write_page_raw, align 4
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %43 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @qcom_nandc_write_oob, ptr %write_oob, align 4
  %44 = ptrtoint ptr %ecc2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %ecc2, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %45 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @qcom_nand_ooblayout_ops, ptr %ooblayout1.i, align 8
  %max_cwperpage = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %max_cwperpage to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_cwperpage, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 %div229)
  %49 = ptrtoint ptr %max_cwperpage to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_cwperpage, align 4
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %50 = ptrtoint ptr %cw_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 516, ptr %cw_data, align 8
  %51 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes, align 4
  %add50 = add i32 %52, 516
  %cw_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 3
  %53 = ptrtoint ptr %cw_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add50, ptr %cw_size, align 4
  %54 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %writesize, align 4
  %sub53 = add nsw i32 %div229, -1
  %mul54 = mul i32 %add50, %sub53
  %sub55 = sub i32 %55, %mul54
  %shl = shl nsw i32 %sub53, 6
  %56 = ptrtoint ptr %ecc_bytes_hw41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ecc_bytes_hw41, align 8
  %shl63 = shl i32 %57, 19
  %58 = ptrtoint ptr %spare_bytes42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %spare_bytes42, align 4
  %shl68 = shl i32 %59, 23
  %or = or i32 %shl, %shl63
  %or61 = or i32 %or, %shl68
  %or69 = or i32 %or61, -1476130816
  %cfg0 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 12
  %60 = ptrtoint ptr %cfg0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or69, ptr %cfg0, align 4
  %add56 = shl i32 %sub55, 6
  %shl70 = add i32 %add56, 64
  %or73 = or i32 %shl70, %and
  %bch_enabled77 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 6
  %61 = ptrtoint ptr %bch_enabled77 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bch_enabled77, align 1, !range !209
  %63 = zext i8 %62 to i32
  %shl80 = shl nuw nsw i32 %63, 27
  %or76 = or i32 %or73, %shl80
  %or81 = or i32 %or76, 262172
  %cfg1 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 13
  %64 = ptrtoint ptr %cfg1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or81, ptr %cfg1, align 8
  %shl85 = shl i32 %add50, 9
  %or86 = or i32 %shl, %shl85
  %or87 = or i32 %or86, 671088640
  %cfg0_raw = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 14
  %65 = ptrtoint ptr %cfg0_raw to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or87, ptr %cfg0_raw, align 4
  %or93 = or i32 %and, 328797
  %cfg1_raw = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 15
  %66 = ptrtoint ptr %cfg1_raw to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or93, ptr %cfg1_raw, align 8
  %67 = xor i8 %62, 1
  %68 = zext i8 %67 to i32
  %or100 = or i32 %ecc_mode.0, %68
  %shl105 = shl i32 %57, 8
  %or101 = or i32 %or100, %shl105
  %or106 = or i32 %or101, 1107558400
  %ecc_bch_cfg = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 17
  %69 = ptrtoint ptr %ecc_bch_cfg to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or106, ptr %ecc_bch_cfg, align 8
  %props107 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %70 = ptrtoint ptr %props107 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %props107, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool108.not = icmp eq i8 %73, 0
  br i1 %tobool108.not, label %if.then109, label %if.end40.if.end110_crit_edge

if.end40.if.end110_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then109:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_buf_cfg = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 16
  %74 = ptrtoint ptr %ecc_buf_cfg to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 515, ptr %ecc_buf_cfg, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end40.if.end110_crit_edge
  %clrflashstatus = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 18
  %75 = ptrtoint ptr %clrflashstatus to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 32, ptr %clrflashstatus, align 4
  %clrreadstatus = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 19
  %76 = ptrtoint ptr %clrreadstatus to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 192, ptr %clrreadstatus, align 8
  %regs = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 19
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %erased_cw_detect_cfg_clr = getelementptr inbounds %struct.nandc_regs, ptr %78, i32 0, i32 23
  %79 = ptrtoint ptr %erased_cw_detect_cfg_clr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 50331648, ptr %erased_cw_detect_cfg_clr, align 4
  %80 = load ptr, ptr %regs, align 4
  %erased_cw_detect_cfg_set = getelementptr inbounds %struct.nandc_regs, ptr %80, i32 0, i32 24
  %81 = ptrtoint ptr %erased_cw_detect_cfg_set to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 33554432, ptr %erased_cw_detect_cfg_set, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_nand_attach_chip.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_nand_attach_chip, %if.then122)) #12
          to label %cleanup [label %if.then122], !srcloc !215

if.then122:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %dev123 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %82 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev123, align 4
  %84 = ptrtoint ptr %cfg0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cfg0, align 4
  %86 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cfg1, align 8
  %ecc_buf_cfg126 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 16
  %88 = ptrtoint ptr %ecc_buf_cfg126 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ecc_buf_cfg126, align 4
  %90 = ptrtoint ptr %ecc_bch_cfg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ecc_bch_cfg, align 8
  %92 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cw_size, align 4
  %94 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cw_data, align 8
  %96 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %strength, align 4
  %98 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_nand_attach_chip.__UNIQUE_ID_ddebug255, ptr noundef %83, ptr noundef nonnull @.str.38, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %div229) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %if.end110, %do.end
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %cond.end.clear_bam_transaction.exit_crit_edge, label %if.end.i

cond.end.clear_bam_transaction.exit_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 1
  %11 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %12 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %15, 5
  tail call void @sg_init_table(ptr noundef %13, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_sgl.i, align 4
  %18 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %19, 3
  tail call void @sg_init_table(ptr noundef %17, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 12
  %20 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %cond.end.clear_bam_transaction.exit_crit_edge
  %call3 = tail call fastcc i32 @read_page_ecc(ptr noundef %chip, ptr noundef %buf, ptr noundef %cond, i32 noundef %page)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21 = icmp sgt i32 %1, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %oob_buf.024 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr4, %if.end.for.body_crit_edge ]
  %data_buf.023 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %cw.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call3 = tail call fastcc i32 @qcom_nandc_read_cw_raw(ptr noundef %chip, ptr noundef %chip, ptr noundef %data_buf.023, ptr noundef %oob_buf.024, i32 noundef %page, i32 noundef %cw.022)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cw_data, align 8
  %add.ptr = getelementptr i8, ptr %data_buf.023, i32 %5
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes, align 4
  %add.ptr4 = getelementptr i8, ptr %oob_buf.024, i32 %7
  %inc = add nuw nsw i32 %cw.022, 1
  %8 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %reg_read_pos.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg_read_pos.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %entry.clear_read_regs.exit_crit_edge, label %if.end.i.i

entry.clear_read_regs.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_read_regs.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %10, i32 noundef 192, i32 noundef 2) #12
  br label %clear_read_regs.exit

clear_read_regs.exit:                             ; preds = %if.end.i.i, %entry.clear_read_regs.exit_crit_edge
  %11 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props.i.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge, label %if.end.i

clear_read_regs.exit.clear_bam_transaction.exit_crit_edge: ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 1
  %18 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %19 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %22, 5
  tail call void @sg_init_table(ptr noundef %20, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_sgl.i, align 4
  %25 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %26, 3
  tail call void @sg_init_table(ptr noundef %24, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 12
  %27 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %28 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %use_ecc, align 4
  %29 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs1.i.i, align 4
  %addr0.i.i = getelementptr inbounds %struct.nandc_regs, ptr %32, i32 0, i32 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %page)
  %34 = lshr i32 %33, 16
  %35 = ptrtoint ptr %addr0.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %addr0.i.i, align 4
  %36 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %37, i32 0, i32 19
  %38 = ptrtoint ptr %regs1.i11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1.i11.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %39, i32 0, i32 2
  %40 = shl i32 %page, 8
  %and5.i = and i32 %40, -16777216
  %41 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and5.i, ptr %addr1.i.i, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %42 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %steps, align 4
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef %43, i1 noundef zeroext true, i32 noundef 0)
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %44 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %oob_poi, align 4
  %call3 = tail call fastcc i32 @read_page_ecc(ptr noundef %chip, ptr noundef null, ptr noundef %45, i32 noundef %page)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %call3 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #12
  %reg_read_pos.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg_read_pos.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %entry.clear_read_regs.exit_crit_edge, label %if.end.i.i

entry.clear_read_regs.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_read_regs.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %10, i32 noundef 192, i32 noundef 2) #12
  br label %clear_read_regs.exit

clear_read_regs.exit:                             ; preds = %if.end.i.i, %entry.clear_read_regs.exit_crit_edge
  %11 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props.i.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge, label %if.end.i

clear_read_regs.exit.clear_bam_transaction.exit_crit_edge: ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 1
  %18 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %19 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %22, 5
  tail call void @sg_init_table(ptr noundef %20, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_sgl.i, align 4
  %25 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %26, 3
  tail call void @sg_init_table(ptr noundef %24, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 12
  %27 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %28 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oob_poi, align 4
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %30 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %use_ecc, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %31 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %steps, align 4
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef %32, i1 noundef zeroext false, i32 noundef 0)
  tail call fastcc void @config_nand_page_write(ptr noundef %chip)
  %33 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp82 = icmp sgt i32 %34, 0
  br i1 %cmp82, label %for.body.lr.ph, label %clear_bam_transaction.exit.for.end_crit_edge

clear_bam_transaction.exit.for.end_crit_edge:     ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %clear_bam_transaction.exit
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %ecc_bytes_hw = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  %spare_bytes = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %bbm_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %35 = phi i32 [ %34, %for.body.lr.ph ], [ %61, %if.end19.for.body_crit_edge ]
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %oob_buf.085 = phi ptr [ %29, %for.body.lr.ph ], [ %add.ptr21, %if.end19.for.body_crit_edge ]
  %data_buf.083 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr20, %if.end19.for.body_crit_edge ]
  %36 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %steps, align 4
  %sub.i = add i32 %37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.086)
  %cmp.i = icmp eq i32 %sub.i, %i.086
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %sub.neg = mul i32 %35, -4
  %shl.neg = add i32 %sub.neg, 4
  %sub7 = add i32 %shl.neg, %39
  %shl9 = shl i32 %35, 2
  %40 = ptrtoint ptr %ecc_bytes_hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ecc_bytes_hw, align 8
  %add = add i32 %41, %shl9
  %42 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spare_bytes, align 4
  %add10 = add i32 %add, %43
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cw_data, align 8
  %46 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %data_size.0 = phi i32 [ %sub7, %if.then ], [ %45, %if.else ]
  %oob_size.0 = phi i32 [ %add10, %if.then ], [ %47, %if.else ]
  %48 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %props.i.i, align 4
  %is_bam.i68 = getelementptr inbounds %struct.qcom_nandc_props, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %is_bam.i68 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_bam.i68, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i69 = icmp eq i8 %51, 0
  br i1 %tobool.not.i69, label %if.end.i70, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub12 = add nsw i32 %35, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086, i32 %sub12)
  %cmp13 = icmp eq i32 %i.086, %sub12
  %cond = zext i1 %cmp13 to i32
  %call.i = tail call fastcc i32 @prep_bam_dma_desc_data(ptr noundef %1, i1 noundef zeroext false, ptr noundef %data_buf.083, i32 noundef %data_size.0, i32 noundef %cond) #12
  br label %write_data_dma.exit

if.end.i70:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 256, ptr noundef %data_buf.083, i32 noundef %data_size.0, i1 noundef zeroext false) #12
  br label %write_data_dma.exit

write_data_dma.exit:                              ; preds = %if.end.i70, %if.then.i
  %52 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %steps, align 4
  %sub.i72 = add i32 %53, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i72, i32 %i.086)
  %cmp.i73 = icmp eq i32 %sub.i72, %i.086
  br i1 %cmp.i73, label %if.then16, label %write_data_dma.exit.if.end19_crit_edge

write_data_dma.exit.if.end19_crit_edge:           ; preds = %write_data_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %write_data_dma.exit
  %54 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bbm_size, align 8
  %add.ptr = getelementptr i8, ptr %oob_buf.085, i32 %55
  %56 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %props.i.i, align 4
  %is_bam.i75 = getelementptr inbounds %struct.qcom_nandc_props, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %is_bam.i75 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_bam.i75, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i76 = icmp eq i8 %59, 0
  br i1 %tobool.not.i76, label %if.end.i80, label %if.then.i78

if.then.i78:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %call.i77 = tail call fastcc i32 @prep_bam_dma_desc_data(ptr noundef %1, i1 noundef zeroext false, ptr noundef %add.ptr, i32 noundef %oob_size.0, i32 noundef 0) #12
  br label %if.end19

if.end.i80:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %add17 = add i32 %data_size.0, 256
  %call1.i79 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef %add17, ptr noundef %add.ptr, i32 noundef %oob_size.0, i1 noundef zeroext false) #12
  br label %if.end19

if.end19:                                         ; preds = %if.end.i80, %if.then.i78, %write_data_dma.exit.if.end19_crit_edge
  %oob_buf.1 = phi ptr [ %oob_buf.085, %write_data_dma.exit.if.end19_crit_edge ], [ %add.ptr, %if.then.i78 ], [ %add.ptr, %if.end.i80 ]
  tail call fastcc void @config_nand_cw_write(ptr noundef %chip)
  %add.ptr20 = getelementptr i8, ptr %data_buf.083, i32 %data_size.0
  %add.ptr21 = getelementptr i8, ptr %oob_buf.1, i32 %oob_size.0
  %inc = add nuw nsw i32 %i.086, 1
  %60 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %61
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %clear_bam_transaction.exit.for.end_crit_edge
  %call22 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.then26.critedge, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.53) #15
  tail call fastcc void @free_descs(ptr noundef %1)
  br label %if.end28

if.then26.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @free_descs(ptr noundef %1)
  %call27 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26.critedge, %do.end
  %ret.0 = phi i32 [ %call27, %if.then26.critedge ], [ %call22, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %call4 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #12
  %reg_read_pos.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg_read_pos.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %entry.clear_read_regs.exit_crit_edge, label %if.end.i.i

entry.clear_read_regs.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_read_regs.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %10, i32 noundef 192, i32 noundef 2) #12
  br label %clear_read_regs.exit

clear_read_regs.exit:                             ; preds = %if.end.i.i, %entry.clear_read_regs.exit_crit_edge
  %11 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props.i.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge, label %if.end.i

clear_read_regs.exit.clear_bam_transaction.exit_crit_edge: ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 1
  %18 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %19 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %22, 5
  tail call void @sg_init_table(ptr noundef %20, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_sgl.i, align 4
  %25 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %26, 3
  tail call void @sg_init_table(ptr noundef %24, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 12
  %27 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %28 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oob_poi, align 4
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %30 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %use_ecc, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %31 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %steps, align 4
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef %32, i1 noundef zeroext false, i32 noundef 0)
  tail call fastcc void @config_nand_page_write(ptr noundef %chip)
  %33 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp182 = icmp sgt i32 %34, 0
  br i1 %cmp182, label %for.body.lr.ph, label %clear_bam_transaction.exit.for.end_crit_edge

clear_bam_transaction.exit.for.end_crit_edge:     ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %clear_bam_transaction.exit
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %cw_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 3
  %bbm_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 9
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %ecc_bytes_hw17 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  %spare_bytes18 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bam_txn1.i120 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %write_data_dma.exit119.for.body_crit_edge, %for.body.lr.ph
  %35 = phi i32 [ %34, %for.body.lr.ph ], [ %124, %write_data_dma.exit119.for.body_crit_edge ]
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %write_data_dma.exit119.for.body_crit_edge ]
  %oob_buf.0185 = phi ptr [ %29, %for.body.lr.ph ], [ %add.ptr29, %write_data_dma.exit119.for.body_crit_edge ]
  %data_buf.0183 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr27, %write_data_dma.exit119.for.body_crit_edge ]
  %36 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize, align 4
  %38 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cw_size, align 4
  %sub = add nsw i32 %35, -1
  %mul = mul i32 %39, %sub
  %sub7 = sub i32 %37, %mul
  %40 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bbm_size, align 8
  %42 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %steps, align 4
  %sub.i = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.0187)
  %cmp.i = icmp eq i32 %sub.i, %i.0187
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  %sub11.neg = mul i32 %35, -4
  %sub9 = add i32 %sub11.neg, 4
  %shl.neg = sub i32 %sub9, %sub7
  %sub12 = add i32 %shl.neg, %45
  %shl14 = shl i32 %35, 2
  %46 = ptrtoint ptr %ecc_bytes_hw17 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ecc_bytes_hw17, align 8
  %add = add i32 %47, %shl14
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cw_data, align 8
  %sub16 = sub i32 %49, %sub7
  %50 = ptrtoint ptr %spare_bytes18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %spare_bytes18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink188.in = phi ptr [ %ecc_bytes_hw17, %if.else ], [ %spare_bytes18, %if.then ]
  %.sink = phi i32 [ %51, %if.else ], [ %add, %if.then ]
  %data_size2.0 = phi i32 [ %sub16, %if.else ], [ %sub12, %if.then ]
  %52 = ptrtoint ptr %.sink188.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %.sink188 = load i32, ptr %.sink188.in, align 4
  %add19 = add i32 %.sink, %.sink188
  %53 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %props.i.i, align 4
  %is_bam.i93 = getelementptr inbounds %struct.qcom_nandc_props, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %is_bam.i93 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_bam.i93, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i94 = icmp eq i8 %56, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %57 = ptrtoint ptr %bam_txn1.i120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bam_txn1.i120, align 4
  %data_sgl.i121 = getelementptr inbounds %struct.bam_transaction, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %data_sgl.i121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data_sgl.i121, align 4
  %tx_sgl_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %58, i32 0, i32 7
  %61 = ptrtoint ptr %tx_sgl_pos.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_sgl_pos.i, align 4
  %arrayidx4.i = getelementptr %struct.scatterlist, ptr %60, i32 %62
  %63 = ptrtoint ptr %data_buf.0183 to i32
  %cmp.i24.i = icmp ugt ptr %data_buf.0183, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i24.i, label %land.lhs.true.i26.i, label %if.then.i.do.body5.i33.i_crit_edge, !prof !210

if.then.i.do.body5.i33.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i

land.lhs.true.i26.i:                              ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %64 = load ptr, ptr @high_memory, align 4
  %cmp1.i25.i = icmp ugt ptr %64, %data_buf.0183
  br i1 %cmp1.i25.i, label %land.rhs.i32.i, label %land.lhs.true.i26.i.do.body5.i33.i_crit_edge, !prof !210

land.lhs.true.i26.i.do.body5.i33.i_crit_edge:     ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i

land.rhs.i32.i:                                   ; preds = %land.lhs.true.i26.i
  %sub.i27.i = add i32 %63, 1073741824
  %shr.i28.i = lshr i32 %sub.i27.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %65 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i29.i = add i32 %65, %shr.i28.i
  %call.i30.i = tail call i32 @pfn_valid(i32 noundef %add.i29.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.i31.i, label %land.rhs.i32.i.do.body5.i33.i_crit_edge, label %do.end8.i37.i, !prof !216

land.rhs.i32.i.do.body5.i33.i_crit_edge:          ; preds = %land.rhs.i32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i

do.body5.i33.i:                                   ; preds = %land.rhs.i32.i.do.body5.i33.i_crit_edge, %land.lhs.true.i26.i.do.body5.i33.i_crit_edge, %if.then.i.do.body5.i33.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i37.i:                                    ; preds = %land.rhs.i32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %66 = load ptr, ptr @mem_map, align 4
  %add.ptr.i34.i = getelementptr %struct.page, ptr %66, i32 %shr.i28.i
  %67 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4.i, align 4
  %69 = ptrtoint ptr %add.ptr.i34.i to i32
  %and2.i.i.i35.i = and i32 %69, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i35.i)
  %tobool.not.i.i.i36.i = icmp eq i32 %and2.i.i.i35.i, 0
  br i1 %tobool.not.i.i.i36.i, label %do.body11.i.i.i41.i, label %do.body5.i.i.i38.i, !prof !210

do.body5.i.i.i38.i:                               ; preds = %do.end8.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i41.i:                              ; preds = %do.end8.i37.i
  %and.i.i.i.i39.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i39.i)
  %tobool.i.not.i.i.i40.i = icmp eq i32 %and.i.i.i.i39.i, 0
  br i1 %tobool.i.not.i.i.i40.i, label %prep_bam_dma_desc_data.exit, label %do.body19.i.i.i42.i, !prof !210

do.body19.i.i.i42.i:                              ; preds = %do.body11.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

prep_bam_dma_desc_data.exit:                      ; preds = %do.body11.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i43.i = and i32 %63, 4095
  %and.i.i.i44.i = and i32 %68, 3
  %or.i.i.i45.i = or i32 %and.i.i.i44.i, %69
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i.i.i45.i, ptr %arrayidx4.i, align 4
  %offset1.i.i46.i = getelementptr %struct.scatterlist, ptr %60, i32 %62, i32 1
  %71 = ptrtoint ptr %offset1.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and.i43.i, ptr %offset1.i.i46.i, align 4
  %length.i.i47.i = getelementptr %struct.scatterlist, ptr %60, i32 %62, i32 2
  %72 = ptrtoint ptr %length.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub7, ptr %length.i.i47.i, align 4
  %73 = ptrtoint ptr %tx_sgl_pos.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_sgl_pos.i, align 4
  %inc6.i = add i32 %74, 1
  store i32 %inc6.i, ptr %tx_sgl_pos.i, align 4
  br label %write_data_dma.exit

if.end.i95:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 256, ptr noundef %data_buf.0183, i32 noundef %sub7, i1 noundef zeroext false) #12
  br label %write_data_dma.exit

write_data_dma.exit:                              ; preds = %if.end.i95, %prep_bam_dma_desc_data.exit
  %add21 = add i32 %sub7, 256
  %add.ptr = getelementptr i8, ptr %data_buf.0183, i32 %sub7
  %75 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %props.i.i, align 4
  %is_bam.i97 = getelementptr inbounds %struct.qcom_nandc_props, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %is_bam.i97 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_bam.i97, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i98 = icmp eq i8 %78, 0
  br i1 %tobool.not.i98, label %if.end.i102, label %if.then.i100

if.then.i100:                                     ; preds = %write_data_dma.exit
  %79 = ptrtoint ptr %bam_txn1.i120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bam_txn1.i120, align 4
  %data_sgl.i123 = getelementptr inbounds %struct.bam_transaction, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %data_sgl.i123 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data_sgl.i123, align 4
  %tx_sgl_pos.i124 = getelementptr inbounds %struct.bam_transaction, ptr %80, i32 0, i32 7
  %83 = ptrtoint ptr %tx_sgl_pos.i124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_sgl_pos.i124, align 4
  %arrayidx4.i125 = getelementptr %struct.scatterlist, ptr %82, i32 %84
  %85 = ptrtoint ptr %oob_buf.0185 to i32
  %cmp.i24.i126 = icmp ugt ptr %oob_buf.0185, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i24.i126, label %land.lhs.true.i26.i128, label %if.then.i100.do.body5.i33.i135_crit_edge, !prof !210

if.then.i100.do.body5.i33.i135_crit_edge:         ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i135

land.lhs.true.i26.i128:                           ; preds = %if.then.i100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %86 = load ptr, ptr @high_memory, align 4
  %cmp1.i25.i127 = icmp ugt ptr %86, %oob_buf.0185
  br i1 %cmp1.i25.i127, label %land.rhs.i32.i134, label %land.lhs.true.i26.i128.do.body5.i33.i135_crit_edge, !prof !210

land.lhs.true.i26.i128.do.body5.i33.i135_crit_edge: ; preds = %land.lhs.true.i26.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i135

land.rhs.i32.i134:                                ; preds = %land.lhs.true.i26.i128
  %sub.i27.i129 = add i32 %85, 1073741824
  %shr.i28.i130 = lshr i32 %sub.i27.i129, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i29.i131 = add i32 %87, %shr.i28.i130
  %call.i30.i132 = tail call i32 @pfn_valid(i32 noundef %add.i29.i131) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i132)
  %tobool.i31.i133 = icmp eq i32 %call.i30.i132, 0
  br i1 %tobool.i31.i133, label %land.rhs.i32.i134.do.body5.i33.i135_crit_edge, label %do.end8.i37.i139, !prof !216

land.rhs.i32.i134.do.body5.i33.i135_crit_edge:    ; preds = %land.rhs.i32.i134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i135

do.body5.i33.i135:                                ; preds = %land.rhs.i32.i134.do.body5.i33.i135_crit_edge, %land.lhs.true.i26.i128.do.body5.i33.i135_crit_edge, %if.then.i100.do.body5.i33.i135_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i37.i139:                                 ; preds = %land.rhs.i32.i134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %88 = load ptr, ptr @mem_map, align 4
  %add.ptr.i34.i136 = getelementptr %struct.page, ptr %88, i32 %shr.i28.i130
  %89 = ptrtoint ptr %arrayidx4.i125 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx4.i125, align 4
  %91 = ptrtoint ptr %add.ptr.i34.i136 to i32
  %and2.i.i.i35.i137 = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i35.i137)
  %tobool.not.i.i.i36.i138 = icmp eq i32 %and2.i.i.i35.i137, 0
  br i1 %tobool.not.i.i.i36.i138, label %do.body11.i.i.i41.i143, label %do.body5.i.i.i38.i140, !prof !210

do.body5.i.i.i38.i140:                            ; preds = %do.end8.i37.i139
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i41.i143:                           ; preds = %do.end8.i37.i139
  %and.i.i.i.i39.i141 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i39.i141)
  %tobool.i.not.i.i.i40.i142 = icmp eq i32 %and.i.i.i.i39.i141, 0
  br i1 %tobool.i.not.i.i.i40.i142, label %prep_bam_dma_desc_data.exit151, label %do.body19.i.i.i42.i144, !prof !210

do.body19.i.i.i42.i144:                           ; preds = %do.body11.i.i.i41.i143
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

prep_bam_dma_desc_data.exit151:                   ; preds = %do.body11.i.i.i41.i143
  call void @__sanitizer_cov_trace_pc() #14
  %and.i43.i145 = and i32 %85, 4095
  %and.i.i.i44.i146 = and i32 %90, 3
  %or.i.i.i45.i147 = or i32 %and.i.i.i44.i146, %91
  %92 = ptrtoint ptr %arrayidx4.i125 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i.i.i45.i147, ptr %arrayidx4.i125, align 4
  %offset1.i.i46.i148 = getelementptr %struct.scatterlist, ptr %82, i32 %84, i32 1
  %93 = ptrtoint ptr %offset1.i.i46.i148 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and.i43.i145, ptr %offset1.i.i46.i148, align 4
  %length.i.i47.i149 = getelementptr %struct.scatterlist, ptr %82, i32 %84, i32 2
  %94 = ptrtoint ptr %length.i.i47.i149 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %41, ptr %length.i.i47.i149, align 4
  %95 = ptrtoint ptr %tx_sgl_pos.i124 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_sgl_pos.i124, align 4
  %inc6.i150 = add i32 %96, 1
  store i32 %inc6.i150, ptr %tx_sgl_pos.i124, align 4
  br label %write_data_dma.exit103

if.end.i102:                                      ; preds = %write_data_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i101 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef %add21, ptr noundef %oob_buf.0185, i32 noundef %41, i1 noundef zeroext false) #12
  br label %write_data_dma.exit103

write_data_dma.exit103:                           ; preds = %if.end.i102, %prep_bam_dma_desc_data.exit151
  %add23 = add i32 %add21, %41
  %add.ptr24 = getelementptr i8, ptr %oob_buf.0185, i32 %41
  %97 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %props.i.i, align 4
  %is_bam.i105 = getelementptr inbounds %struct.qcom_nandc_props, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %is_bam.i105 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %is_bam.i105, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i106 = icmp eq i8 %100, 0
  br i1 %tobool.not.i106, label %if.end.i110, label %if.then.i108

if.then.i108:                                     ; preds = %write_data_dma.exit103
  %101 = ptrtoint ptr %bam_txn1.i120 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bam_txn1.i120, align 4
  %data_sgl.i153 = getelementptr inbounds %struct.bam_transaction, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %data_sgl.i153 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data_sgl.i153, align 4
  %tx_sgl_pos.i154 = getelementptr inbounds %struct.bam_transaction, ptr %102, i32 0, i32 7
  %105 = ptrtoint ptr %tx_sgl_pos.i154 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_sgl_pos.i154, align 4
  %arrayidx4.i155 = getelementptr %struct.scatterlist, ptr %104, i32 %106
  %107 = ptrtoint ptr %add.ptr to i32
  %cmp.i24.i156 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i24.i156, label %land.lhs.true.i26.i158, label %if.then.i108.do.body5.i33.i165_crit_edge, !prof !210

if.then.i108.do.body5.i33.i165_crit_edge:         ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i165

land.lhs.true.i26.i158:                           ; preds = %if.then.i108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %108 = load ptr, ptr @high_memory, align 4
  %cmp1.i25.i157 = icmp ugt ptr %108, %add.ptr
  br i1 %cmp1.i25.i157, label %land.rhs.i32.i164, label %land.lhs.true.i26.i158.do.body5.i33.i165_crit_edge, !prof !210

land.lhs.true.i26.i158.do.body5.i33.i165_crit_edge: ; preds = %land.lhs.true.i26.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i165

land.rhs.i32.i164:                                ; preds = %land.lhs.true.i26.i158
  %sub.i27.i159 = add i32 %107, 1073741824
  %shr.i28.i160 = lshr i32 %sub.i27.i159, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %109 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i29.i161 = add i32 %109, %shr.i28.i160
  %call.i30.i162 = tail call i32 @pfn_valid(i32 noundef %add.i29.i161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i162)
  %tobool.i31.i163 = icmp eq i32 %call.i30.i162, 0
  br i1 %tobool.i31.i163, label %land.rhs.i32.i164.do.body5.i33.i165_crit_edge, label %do.end8.i37.i169, !prof !216

land.rhs.i32.i164.do.body5.i33.i165_crit_edge:    ; preds = %land.rhs.i32.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33.i165

do.body5.i33.i165:                                ; preds = %land.rhs.i32.i164.do.body5.i33.i165_crit_edge, %land.lhs.true.i26.i158.do.body5.i33.i165_crit_edge, %if.then.i108.do.body5.i33.i165_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i37.i169:                                 ; preds = %land.rhs.i32.i164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %110 = load ptr, ptr @mem_map, align 4
  %add.ptr.i34.i166 = getelementptr %struct.page, ptr %110, i32 %shr.i28.i160
  %111 = ptrtoint ptr %arrayidx4.i155 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx4.i155, align 4
  %113 = ptrtoint ptr %add.ptr.i34.i166 to i32
  %and2.i.i.i35.i167 = and i32 %113, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i35.i167)
  %tobool.not.i.i.i36.i168 = icmp eq i32 %and2.i.i.i35.i167, 0
  br i1 %tobool.not.i.i.i36.i168, label %do.body11.i.i.i41.i173, label %do.body5.i.i.i38.i170, !prof !210

do.body5.i.i.i38.i170:                            ; preds = %do.end8.i37.i169
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i41.i173:                           ; preds = %do.end8.i37.i169
  %and.i.i.i.i39.i171 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i39.i171)
  %tobool.i.not.i.i.i40.i172 = icmp eq i32 %and.i.i.i.i39.i171, 0
  br i1 %tobool.i.not.i.i.i40.i172, label %prep_bam_dma_desc_data.exit181, label %do.body19.i.i.i42.i174, !prof !210

do.body19.i.i.i42.i174:                           ; preds = %do.body11.i.i.i41.i173
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

prep_bam_dma_desc_data.exit181:                   ; preds = %do.body11.i.i.i41.i173
  call void @__sanitizer_cov_trace_pc() #14
  %and.i43.i175 = and i32 %107, 4095
  %and.i.i.i44.i176 = and i32 %112, 3
  %or.i.i.i45.i177 = or i32 %and.i.i.i44.i176, %113
  %114 = ptrtoint ptr %arrayidx4.i155 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or.i.i.i45.i177, ptr %arrayidx4.i155, align 4
  %offset1.i.i46.i178 = getelementptr %struct.scatterlist, ptr %104, i32 %106, i32 1
  %115 = ptrtoint ptr %offset1.i.i46.i178 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i43.i175, ptr %offset1.i.i46.i178, align 4
  %length.i.i47.i179 = getelementptr %struct.scatterlist, ptr %104, i32 %106, i32 2
  %116 = ptrtoint ptr %length.i.i47.i179 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %data_size2.0, ptr %length.i.i47.i179, align 4
  %117 = ptrtoint ptr %tx_sgl_pos.i154 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_sgl_pos.i154, align 4
  %inc6.i180 = add i32 %118, 1
  store i32 %inc6.i180, ptr %tx_sgl_pos.i154, align 4
  br label %write_data_dma.exit111

if.end.i110:                                      ; preds = %write_data_dma.exit103
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i109 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef %add23, ptr noundef %add.ptr, i32 noundef %data_size2.0, i1 noundef zeroext false) #12
  br label %write_data_dma.exit111

write_data_dma.exit111:                           ; preds = %if.end.i110, %prep_bam_dma_desc_data.exit181
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %data_size2.0
  %119 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %props.i.i, align 4
  %is_bam.i113 = getelementptr inbounds %struct.qcom_nandc_props, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %is_bam.i113 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %is_bam.i113, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i114 = icmp eq i8 %122, 0
  br i1 %tobool.not.i114, label %if.end.i118, label %if.then.i116

if.then.i116:                                     ; preds = %write_data_dma.exit111
  call void @__sanitizer_cov_trace_pc() #14
  %call.i115 = tail call fastcc i32 @prep_bam_dma_desc_data(ptr noundef %1, i1 noundef zeroext false, ptr noundef %add.ptr24, i32 noundef %add19, i32 noundef 0) #12
  br label %write_data_dma.exit119

if.end.i118:                                      ; preds = %write_data_dma.exit111
  call void @__sanitizer_cov_trace_pc() #14
  %add26 = add i32 %data_size2.0, %add23
  %call1.i117 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef %add26, ptr noundef %add.ptr24, i32 noundef %add19, i1 noundef zeroext false) #12
  br label %write_data_dma.exit119

write_data_dma.exit119:                           ; preds = %if.end.i118, %if.then.i116
  %add.ptr29 = getelementptr i8, ptr %add.ptr24, i32 %add19
  tail call fastcc void @config_nand_cw_write(ptr noundef %chip)
  %inc = add nuw nsw i32 %i.0187, 1
  %123 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %124
  br i1 %cmp, label %write_data_dma.exit119.for.body_crit_edge, label %write_data_dma.exit119.for.end_crit_edge

write_data_dma.exit119.for.end_crit_edge:         ; preds = %write_data_dma.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

write_data_dma.exit119.for.body_crit_edge:        ; preds = %write_data_dma.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %write_data_dma.exit119.for.end_crit_edge, %clear_bam_transaction.exit.for.end_crit_edge
  %call30 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.then34.critedge, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.55) #15
  tail call fastcc void @free_descs(ptr noundef %1)
  br label %if.end36

if.then34.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @free_descs(ptr noundef %1)
  %call35 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then34.critedge, %do.end
  %ret.0 = phi i32 [ %call35, %if.then34.critedge ], [ %call30, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %use_ecc, align 4
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %props.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.clear_bam_transaction.exit_crit_edge, label %if.end.i

entry.clear_bam_transaction.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %10, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %10, i32 0, i32 1
  %12 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %13 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %16, 5
  tail call void @sg_init_table(ptr noundef %14, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_sgl.i, align 4
  %19 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %20, 3
  tail call void @sg_init_table(ptr noundef %18, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %10, i32 0, i32 12
  %21 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %entry.clear_bam_transaction.exit_crit_edge
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %24 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %steps, align 4
  %sub.neg = mul i32 %25, -4
  %shl.neg = add i32 %23, 4
  %sub4 = add i32 %shl.neg, %sub.neg
  %oobavail = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 7
  %26 = ptrtoint ptr %oobavail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oobavail, align 8
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_buffer, align 4
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %30 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cw_data, align 8
  %32 = call ptr @memset(ptr %29, i32 255, i32 %31)
  %33 = load ptr, ptr %data_buffer, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %sub4
  %34 = load i32, ptr %oobavail, align 8
  %call7 = tail call i32 @mtd_ooblayout_get_databytes(ptr noundef %chip, ptr noundef %add.ptr, ptr noundef %3, i32 noundef 0, i32 noundef %34) #12
  %cw_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 3
  %35 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cw_size, align 4
  %37 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %steps, align 4
  %sub9 = add i32 %38, 65535
  %mul = mul i32 %sub9, %36
  %conv = trunc i32 %mul to i16
  %39 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %controller.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1.i.i, align 4
  %addr0.i.i = getelementptr inbounds %struct.nandc_regs, ptr %42, i32 0, i32 1
  %shl.i = shl i32 %page, 16
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %43 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %options.i, align 8
  %45 = trunc i32 %44 to i16
  %46 = lshr i16 %45, 1
  %47 = and i16 %46, 1
  %spec.select.i = lshr i16 %conv, %47
  %conv3.i = zext i16 %spec.select.i to i32
  %or.i = or i32 %shl.i, %conv3.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %49 = ptrtoint ptr %addr0.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %addr0.i.i, align 4
  %50 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %regs1.i11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs1.i11.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %53, i32 0, i32 2
  %54 = shl i32 %page, 8
  %and5.i = and i32 %54, -16777216
  %55 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and5.i, ptr %addr1.i.i, align 4
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0)
  tail call fastcc void @config_nand_page_write(ptr noundef %chip)
  %56 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data_buffer, align 4
  %add = add i32 %sub4, %27
  %58 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %props.i, align 4
  %is_bam.i45 = getelementptr inbounds %struct.qcom_nandc_props, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %is_bam.i45 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_bam.i45, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i46 = icmp eq i8 %61, 0
  br i1 %tobool.not.i46, label %if.end.i47, label %if.then.i

if.then.i:                                        ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @prep_bam_dma_desc_data(ptr noundef %1, i1 noundef zeroext false, ptr noundef %57, i32 noundef %add, i32 noundef 0) #12
  br label %write_data_dma.exit

if.end.i47:                                       ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 256, ptr noundef %57, i32 noundef %add, i1 noundef zeroext false) #12
  br label %write_data_dma.exit

write_data_dma.exit:                              ; preds = %if.end.i47, %if.then.i
  tail call fastcc void @config_nand_cw_write(ptr noundef %chip)
  %call12 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  tail call fastcc void @free_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %write_data_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.57) #15
  br label %cleanup

if.end:                                           ; preds = %write_data_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_nandc_calc_ecc_bytes(i32 noundef %step_size, i32 noundef %strength) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %strength)
  %cmp = icmp eq i32 %strength, 4
  %cond = select i1 %cmp, i32 12, i32 16
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_page_ecc(ptr noundef %host, ptr noundef %data_buf, ptr noundef %oob_buf, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  %uncorrectable_cws.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  tail call fastcc void @config_nand_page_read(ptr noundef %host)
  %steps = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp225 = icmp sgt i32 %3, 0
  br i1 %cmp225, label %for.body.lr.ph, label %entry.for.end44_crit_edge

entry.for.end44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.body.lr.ph:                                   ; preds = %entry
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 4
  %ecc_bytes_hw9 = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 7
  %spare_bytes10 = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 8
  %size = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33, i32 4
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %bbm_size = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %53, %if.end34.for.body_crit_edge ]
  %i.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %if.end34.for.body_crit_edge ]
  %oob_buf.addr.0228 = phi ptr [ %oob_buf, %for.body.lr.ph ], [ %oob_buf.addr.3, %if.end34.for.body_crit_edge ]
  %data_buf.addr.0226 = phi ptr [ %data_buf, %for.body.lr.ph ], [ %spec.select, %if.end34.for.body_crit_edge ]
  %5 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %steps, align 4
  %sub.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.0229)
  %cmp.i = icmp eq i32 %sub.i, %i.0229
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %sub.neg = mul i32 %4, -4
  %shl.neg = add i32 %sub.neg, 4
  %sub5 = add i32 %shl.neg, %8
  %shl7 = shl i32 %4, 2
  %9 = ptrtoint ptr %ecc_bytes_hw9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc_bytes_hw9, align 8
  %add = add i32 %10, %shl7
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cw_data, align 8
  %13 = ptrtoint ptr %spare_bytes10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spare_bytes10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink248.in = phi ptr [ %ecc_bytes_hw9, %if.else ], [ %spare_bytes10, %if.then ]
  %.sink = phi i32 [ %14, %if.else ], [ %add, %if.then ]
  %data_size.0 = phi i32 [ %12, %if.else ], [ %sub5, %if.then ]
  %15 = ptrtoint ptr %.sink248.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink248 = load i32, ptr %.sink248.in, align 4
  %add11 = add i32 %.sink, %.sink248
  %16 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end22, label %if.then12

if.then12:                                        ; preds = %if.end
  %tobool13.not = icmp eq ptr %data_buf.addr.0226, null
  %tobool14.not = icmp eq ptr %oob_buf.addr.0228, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  %20 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %controller.i, align 4
  %props.i157 = getelementptr inbounds %struct.qcom_nand_controller, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %props.i157 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %props.i157, align 4
  %qpic_v2.i158 = getelementptr inbounds %struct.qcom_nandc_props, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %qpic_v2.i158 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %qpic_v2.i158, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i159 = icmp ne i8 %25, 0
  %sub.i.i162 = add nsw i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i162, i32 %i.0229)
  %cmp.i.i163 = icmp eq i32 %sub.i.i162, %i.0229
  %or.cond214 = select i1 %tobool.not.i159, i1 %cmp.i.i163, i1 false
  %regs1.i.i166 = getelementptr inbounds %struct.qcom_nand_controller, ptr %21, i32 0, i32 19
  %26 = ptrtoint ptr %regs1.i.i166 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs1.i.i166, align 4
  br i1 %or.cond, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.then12
  br i1 %or.cond214, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then15
  %call2.i.i = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %27, i32 noundef 3904) #12
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.then8.i.nandc_set_read_loc.exit_crit_edge, label %if.then8.i.cleanup.sink.split.i_crit_edge

if.then8.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then8.i.nandc_set_read_loc.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit

if.else.i:                                        ; preds = %if.then15
  %call2.i35.i = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %27, i32 noundef 3872) #12
  %tobool.not.i36.i = icmp eq ptr %call2.i35.i, null
  br i1 %tobool.not.i36.i, label %if.else.i.nandc_set_read_loc.exit_crit_edge, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else.i.nandc_set_read_loc.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then8.i.cleanup.sink.split.i_crit_edge
  %call2.i35.sink.i = phi ptr [ %call2.i.i, %if.then8.i.cleanup.sink.split.i_crit_edge ], [ %call2.i35.i, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %data_size.0)
  %29 = lshr i32 %28, 16
  %30 = ptrtoint ptr %call2.i35.sink.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call2.i35.sink.i, align 4
  br label %nandc_set_read_loc.exit

nandc_set_read_loc.exit:                          ; preds = %cleanup.sink.split.i, %if.else.i.nandc_set_read_loc.exit_crit_edge, %if.then8.i.nandc_set_read_loc.exit_crit_edge
  %31 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller.i, align 4
  %props.i110 = getelementptr inbounds %struct.qcom_nand_controller, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %props.i110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %props.i110, align 4
  %qpic_v2.i111 = getelementptr inbounds %struct.qcom_nandc_props, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %qpic_v2.i111 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %qpic_v2.i111, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i112 = icmp eq i8 %36, 0
  br i1 %tobool.not.i112, label %nandc_set_read_loc.exit.if.else.i127_crit_edge, label %land.lhs.true6.i118

nandc_set_read_loc.exit.if.else.i127_crit_edge:   ; preds = %nandc_set_read_loc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i127

land.lhs.true6.i118:                              ; preds = %nandc_set_read_loc.exit
  %37 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %steps, align 4
  %sub.i.i115 = add i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i115, i32 %i.0229)
  %cmp.i.i116 = icmp eq i32 %sub.i.i115, %i.0229
  br i1 %cmp.i.i116, label %if.then8.i122, label %land.lhs.true6.i118.if.else.i127_crit_edge

land.lhs.true6.i118.if.else.i127_crit_edge:       ; preds = %land.lhs.true6.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i127

if.then8.i122:                                    ; preds = %land.lhs.true6.i118
  %regs1.i.i119 = getelementptr inbounds %struct.qcom_nand_controller, ptr %32, i32 0, i32 19
  %39 = ptrtoint ptr %regs1.i.i119 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs1.i.i119, align 4
  %call2.i.i120 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %40, i32 noundef 3908) #12
  %tobool.not.i.i121 = icmp eq ptr %call2.i.i120, null
  br i1 %tobool.not.i.i121, label %if.then8.i122.if.end22.thread_crit_edge, label %if.then8.i122.cleanup.sink.split.i130_crit_edge

if.then8.i122.cleanup.sink.split.i130_crit_edge:  ; preds = %if.then8.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i130

if.then8.i122.if.end22.thread_crit_edge:          ; preds = %if.then8.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread

if.else.i127:                                     ; preds = %land.lhs.true6.i118.if.else.i127_crit_edge, %nandc_set_read_loc.exit.if.else.i127_crit_edge
  %regs1.i34.i124 = getelementptr inbounds %struct.qcom_nand_controller, ptr %32, i32 0, i32 19
  %41 = ptrtoint ptr %regs1.i34.i124 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1.i34.i124, align 4
  %call2.i35.i125 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %42, i32 noundef 3876) #12
  %tobool.not.i36.i126 = icmp eq ptr %call2.i35.i125, null
  br i1 %tobool.not.i36.i126, label %if.else.i127.if.end22.thread_crit_edge, label %if.else.i127.cleanup.sink.split.i130_crit_edge

if.else.i127.cleanup.sink.split.i130_crit_edge:   ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i130

if.else.i127.if.end22.thread_crit_edge:           ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread

cleanup.sink.split.i130:                          ; preds = %if.else.i127.cleanup.sink.split.i130_crit_edge, %if.then8.i122.cleanup.sink.split.i130_crit_edge
  %call2.i35.sink.i128 = phi ptr [ %call2.i.i120, %if.then8.i122.cleanup.sink.split.i130_crit_edge ], [ %call2.i35.i125, %if.else.i127.cleanup.sink.split.i130_crit_edge ]
  %shl13.i129 = shl i32 %add11, 16
  %or14.i = or i32 %data_size.0, %shl13.i129
  br label %if.end22.thread.sink.split

if.else16:                                        ; preds = %if.then12
  br i1 %tobool13.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.else16
  br i1 %or.cond214, label %if.then8.i145, label %if.else.i150

if.then8.i145:                                    ; preds = %if.then18
  %call2.i.i143 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %27, i32 noundef 3904) #12
  %tobool.not.i.i144 = icmp eq ptr %call2.i.i143, null
  br i1 %tobool.not.i.i144, label %if.then8.i145.if.end22.thread_crit_edge, label %if.then8.i145.cleanup.sink.split.i154_crit_edge

if.then8.i145.cleanup.sink.split.i154_crit_edge:  ; preds = %if.then8.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i154

if.then8.i145.if.end22.thread_crit_edge:          ; preds = %if.then8.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread

if.else.i150:                                     ; preds = %if.then18
  %call2.i35.i148 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %27, i32 noundef 3872) #12
  %tobool.not.i36.i149 = icmp eq ptr %call2.i35.i148, null
  br i1 %tobool.not.i36.i149, label %if.else.i150.if.end22.thread_crit_edge, label %if.else.i150.cleanup.sink.split.i154_crit_edge

if.else.i150.cleanup.sink.split.i154_crit_edge:   ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i154

if.else.i150.if.end22.thread_crit_edge:           ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread

cleanup.sink.split.i154:                          ; preds = %if.else.i150.cleanup.sink.split.i154_crit_edge, %if.then8.i145.cleanup.sink.split.i154_crit_edge
  %call2.i35.sink.i151 = phi ptr [ %call2.i.i143, %if.then8.i145.cleanup.sink.split.i154_crit_edge ], [ %call2.i35.i148, %if.else.i150.cleanup.sink.split.i154_crit_edge ]
  %shl13.i152 = shl i32 %data_size.0, 16
  br label %if.end22.thread.sink.split

if.else19:                                        ; preds = %if.else16
  br i1 %or.cond214, label %if.then8.i169, label %if.else.i174

if.then8.i169:                                    ; preds = %if.else19
  %call2.i.i167 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %27, i32 noundef 3904) #12
  %tobool.not.i.i168 = icmp eq ptr %call2.i.i167, null
  br i1 %tobool.not.i.i168, label %if.then8.i169.if.end22.thread195_crit_edge, label %if.then8.i169.cleanup.sink.split.i179_crit_edge

if.then8.i169.cleanup.sink.split.i179_crit_edge:  ; preds = %if.then8.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i179

if.then8.i169.if.end22.thread195_crit_edge:       ; preds = %if.then8.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread195

if.else.i174:                                     ; preds = %if.else19
  %call2.i35.i172 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %27, i32 noundef 3872) #12
  %tobool.not.i36.i173 = icmp eq ptr %call2.i35.i172, null
  br i1 %tobool.not.i36.i173, label %if.else.i174.if.end22.thread195_crit_edge, label %if.else.i174.cleanup.sink.split.i179_crit_edge

if.else.i174.cleanup.sink.split.i179_crit_edge:   ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i179

if.else.i174.if.end22.thread195_crit_edge:        ; preds = %if.else.i174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread195

cleanup.sink.split.i179:                          ; preds = %if.else.i174.cleanup.sink.split.i179_crit_edge, %if.then8.i169.cleanup.sink.split.i179_crit_edge
  %call2.i35.sink.i175 = phi ptr [ %call2.i.i167, %if.then8.i169.cleanup.sink.split.i179_crit_edge ], [ %call2.i35.i172, %if.else.i174.cleanup.sink.split.i179_crit_edge ]
  %shl13.i176 = shl i32 %add11, 16
  %or14.i177 = or i32 %data_size.0, %shl13.i176
  %or16.i178 = or i32 %or14.i177, -2147483648
  %43 = tail call i32 @llvm.bswap.i32(i32 %or16.i178) #12
  %44 = ptrtoint ptr %call2.i35.sink.i175 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %call2.i35.sink.i175, align 4
  br label %if.end22.thread195

if.end22.thread.sink.split:                       ; preds = %cleanup.sink.split.i154, %cleanup.sink.split.i130
  %shl13.i152.sink = phi i32 [ %shl13.i152, %cleanup.sink.split.i154 ], [ %or14.i, %cleanup.sink.split.i130 ]
  %call2.i35.sink.i151.sink = phi ptr [ %call2.i35.sink.i151, %cleanup.sink.split.i154 ], [ %call2.i35.sink.i128, %cleanup.sink.split.i130 ]
  %or16.i153 = or i32 %shl13.i152.sink, -2147483648
  %45 = tail call i32 @llvm.bswap.i32(i32 %or16.i153) #12
  %46 = ptrtoint ptr %call2.i35.sink.i151.sink to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %call2.i35.sink.i151.sink, align 4
  br label %if.end22.thread

if.end22.thread:                                  ; preds = %if.end22.thread.sink.split, %if.else.i150.if.end22.thread_crit_edge, %if.then8.i145.if.end22.thread_crit_edge, %if.else.i127.if.end22.thread_crit_edge, %if.then8.i122.if.end22.thread_crit_edge
  tail call fastcc void @config_nand_cw_read(ptr noundef %host, i1 noundef zeroext true, i32 noundef %i.0229)
  br label %if.then24

if.end22.thread195:                               ; preds = %cleanup.sink.split.i179, %if.else.i174.if.end22.thread195_crit_edge, %if.then8.i169.if.end22.thread195_crit_edge
  tail call fastcc void @config_nand_cw_read(ptr noundef %host, i1 noundef zeroext true, i32 noundef %i.0229)
  br label %if.end26

if.end22:                                         ; preds = %if.end
  tail call fastcc void @config_nand_cw_read(ptr noundef %host, i1 noundef zeroext true, i32 noundef %i.0229)
  %tobool23.not = icmp eq ptr %data_buf.addr.0226, null
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.end22.if.then24_crit_edge

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.end22.thread
  tail call fastcc void @read_data_dma(ptr noundef %1, i32 noundef 256, ptr noundef nonnull %data_buf.addr.0226, i32 noundef %data_size.0)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge, %if.end22.thread195
  %tobool23.not193 = phi i1 [ false, %if.then24 ], [ true, %if.end22.if.end26_crit_edge ], [ true, %if.end22.thread195 ]
  %tobool27.not = icmp eq ptr %oob_buf.addr.0228, null
  br i1 %tobool27.not, label %if.end26.if.end34_crit_edge, label %for.cond29.preheader

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

for.cond29.preheader:                             ; preds = %if.end26
  %47 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bbm_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp30222 = icmp sgt i32 %48, 0
  br i1 %cmp30222, label %for.cond29.preheader.for.body31_crit_edge, label %for.cond29.preheader.for.end_crit_edge

for.cond29.preheader.for.end_crit_edge:           ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond29.preheader.for.body31_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.cond29.preheader.for.body31_crit_edge
  %j.0224 = phi i32 [ %inc, %for.body31.for.body31_crit_edge ], [ 0, %for.cond29.preheader.for.body31_crit_edge ]
  %oob_buf.addr.1223 = phi ptr [ %incdec.ptr, %for.body31.for.body31_crit_edge ], [ %oob_buf.addr.0228, %for.cond29.preheader.for.body31_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %oob_buf.addr.1223, i32 1
  %49 = ptrtoint ptr %oob_buf.addr.1223 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %oob_buf.addr.1223, align 1
  %inc = add nuw nsw i32 %j.0224, 1
  %50 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bbm_size, align 8
  %cmp30 = icmp slt i32 %inc, %51
  br i1 %cmp30, label %for.body31.for.body31_crit_edge, label %for.body31.for.end_crit_edge

for.body31.for.end_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

for.end:                                          ; preds = %for.body31.for.end_crit_edge, %for.cond29.preheader.for.end_crit_edge
  %oob_buf.addr.1.lcssa = phi ptr [ %oob_buf.addr.0228, %for.cond29.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body31.for.end_crit_edge ]
  %add32 = add i32 %data_size.0, 256
  tail call fastcc void @read_data_dma(ptr noundef %1, i32 noundef %add32, ptr noundef %oob_buf.addr.1.lcssa, i32 noundef %add11)
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.end26.if.end34_crit_edge
  %oob_buf.addr.2 = phi ptr [ %oob_buf.addr.1.lcssa, %for.end ], [ null, %if.end26.if.end34_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data_buf.addr.0226, i32 %data_size.0
  %spec.select = select i1 %tobool23.not193, ptr null, ptr %add.ptr
  %tobool38.not = icmp eq ptr %oob_buf.addr.2, null
  %add.ptr40 = getelementptr i8, ptr %oob_buf.addr.2, i32 %add11
  %oob_buf.addr.3 = select i1 %tobool38.not, ptr null, ptr %add.ptr40
  %inc43 = add nuw nsw i32 %i.0229, 1
  %52 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc43, %53
  br i1 %cmp, label %if.end34.for.body_crit_edge, label %if.end34.for.end44_crit_edge

if.end34.for.end44_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end44:                                        ; preds = %if.end34.for.end44_crit_edge, %entry.for.end44_crit_edge
  %call45 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  tail call fastcc void @free_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %do.end

do.end:                                           ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end48:                                         ; preds = %for.end44
  %56 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %controller.i, align 4
  %reg_read_buf.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_read_buf.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %57, i32 0, i32 22
  %60 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i182 = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i182, label %if.end48.nandc_read_buffer_sync.exit.i_crit_edge, label %if.end.i.i

if.end48.nandc_read_buffer_sync.exit.i_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_read_buffer_sync.exit.i

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %57, i32 0, i32 17
  %66 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %65, i32 noundef %67, i32 noundef 192, i32 noundef 2) #12
  br label %nandc_read_buffer_sync.exit.i

nandc_read_buffer_sync.exit.i:                    ; preds = %if.end.i.i, %if.end48.nandc_read_buffer_sync.exit.i_crit_edge
  %68 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp113.i = icmp sgt i32 %69, 0
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %nandc_read_buffer_sync.exit.i.cleanup_crit_edge

nandc_read_buffer_sync.exit.i.cleanup_crit_edge:  ; preds = %nandc_read_buffer_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %nandc_read_buffer_sync.exit.i
  %cw_data.i = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33, i32 4
  %bch_enabled.i = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 6
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %host, i32 0, i32 52
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %if.end39.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %.ph = phi i32 [ %102, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ %69, %for.body.lr.ph.i ]
  %data_buf.addr.0124.i.ph = phi ptr [ %spec.select.i189202, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ %data_buf, %for.body.lr.ph.i ]
  %i.0122.i.ph = phi i32 [ %inc.i203, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  %flash_op_err.0.off0120.i.ph = phi i1 [ true, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ false, %for.body.lr.ph.i ]
  %buf.0119.i.ph = phi ptr [ %incdec.ptr.i204, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ %59, %for.body.lr.ph.i ]
  %uncorrectable_cws.0117.i.ph = phi i32 [ %uncorrectable_cws.0117.i, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  %max_bitflips.0115.i.ph = phi i32 [ %max_bitflips.0115.i, %if.end39.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end39.i.for.body.i_crit_edge, %for.body.i.outer
  %70 = phi i32 [ %100, %if.end39.i.for.body.i_crit_edge ], [ %.ph, %for.body.i.outer ]
  %data_buf.addr.0124.i = phi ptr [ %spec.select.i189, %if.end39.i.for.body.i_crit_edge ], [ %data_buf.addr.0124.i.ph, %for.body.i.outer ]
  %i.0122.i = phi i32 [ %inc.i, %if.end39.i.for.body.i_crit_edge ], [ %i.0122.i.ph, %for.body.i.outer ]
  %buf.0119.i = phi ptr [ %incdec.ptr.i, %if.end39.i.for.body.i_crit_edge ], [ %buf.0119.i.ph, %for.body.i.outer ]
  %uncorrectable_cws.0117.i = phi i32 [ %uncorrectable_cws.1.i, %if.end39.i.for.body.i_crit_edge ], [ %uncorrectable_cws.0117.i.ph, %for.body.i.outer ]
  %max_bitflips.0115.i = phi i32 [ %max_bitflips.1.i, %if.end39.i.for.body.i_crit_edge ], [ %max_bitflips.0115.i.ph, %for.body.i.outer ]
  %71 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %steps, align 4
  %sub.i.i184 = add i32 %72, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i184, i32 %i.0122.i)
  %cmp.i.i185 = icmp eq i32 %sub.i.i184, %i.0122.i
  br i1 %cmp.i.i185, label %if.then.i, label %if.else.i186

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i, align 4
  %sub.neg.i = mul i32 %70, -4
  %shl.neg.i = add i32 %sub.neg.i, 4
  %sub6.i = add i32 %shl.neg.i, %74
  br label %if.end.i

if.else.i186:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %cw_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cw_data.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i186, %if.then.i
  %data_len.0.i = phi i32 [ %sub6.i, %if.then.i ], [ %76, %if.else.i186 ]
  %77 = ptrtoint ptr %buf.0119.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf.0119.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #12
  %buffer10.i = getelementptr inbounds %struct.read_stats, ptr %buf.0119.i, i32 0, i32 1
  %80 = ptrtoint ptr %buffer10.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buffer10.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  %erased_cw11.i = getelementptr inbounds %struct.read_stats, ptr %buf.0119.i, i32 0, i32 2
  %83 = ptrtoint ptr %erased_cw11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %erased_cw11.i, align 4
  %and.i = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i187 = icmp eq i32 %and.i, 0
  %and12.i = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or.cond.i = select i1 %tobool.not.i187, i1 true, i1 %tobool13.not.i
  br i1 %or.cond.i, label %if.else31.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i
  %85 = ptrtoint ptr %bch_enabled.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bch_enabled.i, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool15.not.i = icmp eq i8 %86, 0
  br i1 %tobool15.not.i, label %if.else19.i, label %if.end26.i

if.else19.i:                                      ; preds = %if.then14.i
  %tobool20.not.i = icmp eq ptr %data_buf.addr.0124.i, null
  br i1 %tobool20.not.i, label %if.else19.i.if.then28.i_crit_edge, label %if.then21.i

if.else19.i.if.then28.i_crit_edge:                ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

if.then21.i:                                      ; preds = %if.else19.i
  %arrayidx.i.i = getelementptr i8, ptr %data_buf.addr.0124.i, i32 3
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %data_buf.addr.0124.i, i32 175
  %89 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %88)
  %cmp.i102.i = icmp eq i8 %88, 84
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %cmp4.i.i = icmp eq i8 %90, -1
  %or.cond.i.i = select i1 %cmp.i102.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then21.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.then21.i.if.then.i.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %88)
  %cmp7.i.i = icmp eq i8 %88, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %90)
  %cmp11.i.i = icmp eq i8 %90, 84
  %or.cond30.i.i = select i1 %cmp7.i.i, i1 %cmp11.i.i, i1 false
  br i1 %or.cond30.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i104.i_crit_edge

lor.lhs.false.i.i.if.end.i104.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i104.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then21.i.if.then.i.i_crit_edge
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %92 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %arrayidx1.i.i, align 1
  br label %if.end.i104.i

if.end.i104.i:                                    ; preds = %if.then.i.i, %lor.lhs.false.i.i.if.end.i104.i_crit_edge
  %call.i.i = tail call ptr @memchr_inv(ptr noundef nonnull %data_buf.addr.0124.i, i32 noundef 255, i32 noundef %data_len.0.i) #12
  %tobool.not.i103.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i103.i, label %if.end.i104.i.if.end39.i_crit_edge, label %if.end26.thread111.i

if.end.i104.i.if.end39.i_crit_edge:               ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.end26.thread111.i:                             ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %88, ptr %arrayidx.i.i, align 1
  %94 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %90, ptr %arrayidx1.i.i, align 1
  br label %if.then28.i

if.end26.i:                                       ; preds = %if.then14.i
  %95 = and i32 %84, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177280, i32 %95)
  %cmp18.i = icmp eq i32 %95, 1342177280
  br i1 %cmp18.i, label %if.end26.i.if.end39.i_crit_edge, label %if.end26.i.if.then28.i_crit_edge

if.end26.i.if.then28.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then28.i:                                      ; preds = %if.end26.i.if.then28.i_crit_edge, %if.end26.thread111.i, %if.else19.i.if.then28.i_crit_edge
  %shl29.i = shl nuw i32 1, %i.0122.i
  %or.i = or i32 %uncorrectable_cws.0117.i, %shl29.i
  br label %if.end39.i

if.else31.i:                                      ; preds = %if.end.i
  %and32.i = and i32 %79, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else35.i, label %if.end39.i.thread

if.else35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #14
  %and36.i = and i32 %82, 31
  %96 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ecc_stats.i, align 4
  %add.i188 = add i32 %97, %and36.i
  store i32 %add.i188, ptr %ecc_stats.i, align 4
  %98 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0115.i, i32 %and36.i) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else35.i, %if.then28.i, %if.end26.i.if.end39.i_crit_edge, %if.end.i104.i.if.end39.i_crit_edge
  %max_bitflips.1.i = phi i32 [ %max_bitflips.0115.i, %if.end26.i.if.end39.i_crit_edge ], [ %max_bitflips.0115.i, %if.then28.i ], [ %98, %if.else35.i ], [ %max_bitflips.0115.i, %if.end.i104.i.if.end39.i_crit_edge ]
  %uncorrectable_cws.1.i = phi i32 [ %uncorrectable_cws.0117.i, %if.end26.i.if.end39.i_crit_edge ], [ %or.i, %if.then28.i ], [ %uncorrectable_cws.0117.i, %if.else35.i ], [ %uncorrectable_cws.0117.i, %if.end.i104.i.if.end39.i_crit_edge ]
  %tobool40.not.i = icmp eq ptr %data_buf.addr.0124.i, null
  %add.ptr.i = getelementptr i8, ptr %data_buf.addr.0124.i, i32 %data_len.0.i
  %spec.select.i189 = select i1 %tobool40.not.i, ptr null, ptr %add.ptr.i
  %inc.i = add nuw nsw i32 %i.0122.i, 1
  %incdec.ptr.i = getelementptr %struct.read_stats, ptr %buf.0119.i, i32 1
  %99 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %steps, align 4
  %cmp.i190 = icmp slt i32 %inc.i, %100
  br i1 %cmp.i190, label %if.end39.i.for.body.i_crit_edge, label %for.end.i

if.end39.i.for.body.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end39.i.thread:                                ; preds = %if.else31.i
  %tobool40.not.i200 = icmp eq ptr %data_buf.addr.0124.i, null
  %add.ptr.i201 = getelementptr i8, ptr %data_buf.addr.0124.i, i32 %data_len.0.i
  %spec.select.i189202 = select i1 %tobool40.not.i200, ptr null, ptr %add.ptr.i201
  %inc.i203 = add nuw nsw i32 %i.0122.i, 1
  %incdec.ptr.i204 = getelementptr %struct.read_stats, ptr %buf.0119.i, i32 1
  %101 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %steps, align 4
  %cmp.i190205 = icmp slt i32 %inc.i203, %102
  br i1 %cmp.i190205, label %if.end39.i.thread.for.body.i.outer_crit_edge, label %if.end39.i.thread.cleanup_crit_edge

if.end39.i.thread.cleanup_crit_edge:              ; preds = %if.end39.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39.i.thread.for.body.i.outer_crit_edge:     ; preds = %if.end39.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.outer

for.end.i:                                        ; preds = %if.end39.i
  br i1 %flash_op_err.0.off0120.i.ph, label %for.end.i.cleanup_crit_edge, label %if.end50.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uncorrectable_cws.1.i)
  %tobool51.not.i = icmp eq i32 %uncorrectable_cws.1.i, 0
  br i1 %tobool51.not.i, label %if.end50.i.cleanup_crit_edge, label %if.end53.i

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53.i:                                       ; preds = %if.end50.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uncorrectable_cws.addr.i.i) #12
  %103 = ptrtoint ptr %uncorrectable_cws.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %uncorrectable_cws.1.i, ptr %uncorrectable_cws.addr.i.i, align 4
  %tobool.not.i105.i = icmp eq ptr %data_buf, null
  br i1 %tobool.not.i105.i, label %if.then.i106.i, label %if.end53.i.if.end.i107.i_crit_edge

if.end53.i.if.end.i107.i_crit_edge:               ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i107.i

if.then.i106.i:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %page.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 24, i32 1
  %104 = ptrtoint ptr %page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %page.i.i.i, align 4
  %data_buf.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 22
  %105 = ptrtoint ptr %data_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data_buf.i.i.i, align 8
  br label %if.end.i107.i

if.end.i107.i:                                    ; preds = %if.then.i106.i, %if.end53.i.if.end.i107.i_crit_edge
  %data_buf.addr.0.i.i = phi ptr [ %data_buf, %if.end53.i.if.end.i107.i_crit_edge ], [ %106, %if.then.i106.i ]
  %tobool4.not.i.i = icmp eq ptr %oob_buf, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end.i107.i.if.end7.i.i_crit_edge

if.end.i107.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  %page.i82.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 24, i32 1
  %107 = ptrtoint ptr %page.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %page.i82.i.i, align 4
  %oob_poi.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 23
  %108 = ptrtoint ptr %oob_poi.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %oob_poi.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end.i107.i.if.end7.i.i_crit_edge
  %oob_buf.addr.0.i.i = phi ptr [ %oob_buf, %if.end.i107.i.if.end7.i.i_crit_edge ], [ %109, %if.then5.i.i ]
  %call8.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %uncorrectable_cws.addr.i.i, i32 noundef %100, i32 noundef 0) #12
  %110 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i.i, i32 %111)
  %cmp84.i.i = icmp slt i32 %call8.i.i, %111
  br i1 %cmp84.i.i, label %for.body.lr.ph.i.i, label %if.end7.i.i.check_for_erased_page.exit.i_crit_edge

if.end7.i.i.check_for_erased_page.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_for_erased_page.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i.i
  %ecc_bytes_hw16.i.i = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 7
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33, i32 5
  %bbm_size.i.i = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 9
  %strength.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33, i32 7
  %failed.i.i = getelementptr inbounds %struct.mtd_info, ptr %host, i32 0, i32 52, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %112 = phi i32 [ %111, %for.body.lr.ph.i.i ], [ %139, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cw.086.i.i = phi i32 [ %call8.i.i, %for.body.lr.ph.i.i ], [ %call37.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %max_bitflips.addr.085.i.i = phi i32 [ %max_bitflips.1.i, %for.body.lr.ph.i.i ], [ %max_bitflips.addr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %113 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %steps, align 4
  %sub.i.i.i = add i32 %114, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %cw.086.i.i)
  %cmp.i.i.i = icmp eq i32 %sub.i.i.i, %cw.086.i.i
  br i1 %cmp.i.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size.i, align 4
  %sub.neg.i.i = mul i32 %112, -4
  %mul.neg.i.i = add i32 %sub.neg.i.i, 4
  %sub13.i.i = add i32 %mul.neg.i.i, %116
  %mul15.i.i = shl i32 %112, 2
  %117 = ptrtoint ptr %ecc_bytes_hw16.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ecc_bytes_hw16.i.i, align 8
  %add.i.i = add i32 %118, %mul15.i.i
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %cw_data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cw_data.i, align 8
  %121 = ptrtoint ptr %ecc_bytes_hw16.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ecc_bytes_hw16.i.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i, %if.then11.i.i
  %data_size.0.i.i = phi i32 [ %sub13.i.i, %if.then11.i.i ], [ %120, %if.else.i.i ]
  %oob_size.0.i.i = phi i32 [ %add.i.i, %if.then11.i.i ], [ %122, %if.else.i.i ]
  %123 = ptrtoint ptr %cw_data.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cw_data.i, align 8
  %mul19.i.i = mul i32 %124, %cw.086.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data_buf.addr.0.i.i, i32 %mul19.i.i
  %125 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bytes.i.i, align 4
  %mul20.i.i = mul i32 %126, %cw.086.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %oob_buf.addr.0.i.i, i32 %mul20.i.i
  %call22.i.i = call fastcc i32 @qcom_nandc_read_cw_raw(ptr noundef %host, ptr noundef %host, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr21.i.i, i32 noundef %page, i32 noundef %cw.086.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.end17.i.i.check_for_erased_page.exit.i_crit_edge

if.end17.i.i.check_for_erased_page.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_for_erased_page.exit.i

if.end25.i.i:                                     ; preds = %if.end17.i.i
  %127 = ptrtoint ptr %bbm_size.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bbm_size.i.i, align 8
  %add.ptr26.i.i = getelementptr i8, ptr %add.ptr21.i.i, i32 %128
  %129 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %strength.i.i, align 4
  %call27.i.i = call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr.i.i, i32 noundef %data_size.0.i.i, ptr noundef %add.ptr26.i.i, i32 noundef %oob_size.0.i.i, ptr noundef null, i32 noundef 0, i32 noundef %130) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.else30.i.i

if.then29.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %failed.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %failed.i.i, align 4
  %inc.i.i = add i32 %132, 1
  store i32 %inc.i.i, ptr %failed.i.i, align 4
  br label %for.inc.i.i

if.else30.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ecc_stats.i, align 4
  %add32.i.i = add i32 %134, %call27.i.i
  store i32 %add32.i.i, ptr %ecc_stats.i, align 4
  %135 = call i32 @llvm.umax.i32(i32 %max_bitflips.addr.085.i.i, i32 %call27.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else30.i.i, %if.then29.i.i
  %max_bitflips.addr.1.i.i = phi i32 [ %max_bitflips.addr.085.i.i, %if.then29.i.i ], [ %135, %if.else30.i.i ]
  %136 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %steps, align 4
  %add36.i.i = add nsw i32 %cw.086.i.i, 1
  %call37.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %uncorrectable_cws.addr.i.i, i32 noundef %137, i32 noundef %add36.i.i) #12
  %138 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %steps, align 4
  %cmp.i109.i = icmp slt i32 %call37.i.i, %139
  br i1 %cmp.i109.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.check_for_erased_page.exit.i_crit_edge

for.inc.i.i.check_for_erased_page.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_for_erased_page.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

check_for_erased_page.exit.i:                     ; preds = %for.inc.i.i.check_for_erased_page.exit.i_crit_edge, %if.end17.i.i.check_for_erased_page.exit.i_crit_edge, %if.end7.i.i.check_for_erased_page.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %max_bitflips.1.i, %if.end7.i.i.check_for_erased_page.exit.i_crit_edge ], [ %max_bitflips.addr.1.i.i, %for.inc.i.i.check_for_erased_page.exit.i_crit_edge ], [ %call22.i.i, %if.end17.i.i.check_for_erased_page.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uncorrectable_cws.addr.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %check_for_erased_page.exit.i, %if.end50.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end39.i.thread.cleanup_crit_edge, %nandc_read_buffer_sync.exit.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call45, %do.end ], [ %retval.0.i.i, %check_for_erased_page.exit.i ], [ -5, %for.end.i.cleanup_crit_edge ], [ %max_bitflips.1.i, %if.end50.i.cleanup_crit_edge ], [ 0, %nandc_read_buffer_sync.exit.i.cleanup_crit_edge ], [ -5, %if.end39.i.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_nand_page_read(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %regs1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %addr0.i = getelementptr inbounds %struct.nandc_regs, ptr %3, i32 0, i32 1
  %props19.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props19.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not.i = icmp eq i8 %7, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bam_txn1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bam_ce_pos.i, align 4
  %arrayidx.i = getelementptr %struct.bam_cmd_element, ptr %11, i32 %13
  %base_phys6.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_phys6.i, align 4
  %add3.i = add i32 %15, 4
  %16 = ptrtoint ptr %addr0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr0.i, align 4
  %and.i.i = and i32 %add3.i, 16777215
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i, align 4
  %data2.i.i.i = getelementptr %struct.bam_cmd_element, ptr %11, i32 %13, i32 1
  %20 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %data2.i.i.i, align 4
  %mask.i.i.i = getelementptr %struct.bam_cmd_element, ptr %11, i32 %13, i32 2
  %21 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %mask.i.i.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i, i32 1
  %22 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_phys6.i, align 4
  %add3.i.1 = add i32 %23, 8
  %add.ptr10.i.1 = getelementptr %struct.nandc_regs, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %add.ptr10.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr10.i.1, align 4
  %and.i.i.1 = and i32 %add3.i.1, 16777215
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.1) #12
  %27 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i.1, align 4
  %data2.i.i.i.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i.1, i32 0, i32 1
  %28 = ptrtoint ptr %data2.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %data2.i.i.i.1, align 4
  %mask.i.i.i.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i.1, i32 0, i32 2
  %29 = ptrtoint ptr %mask.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %mask.i.i.i.1, align 4
  %30 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bam_ce_pos.i, align 4
  %add12.i = add i32 %31, 2
  store i32 %add12.i, ptr %bam_ce_pos.i, align 4
  br label %write_reg_dma.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 4, ptr noundef %addr0.i, i32 noundef 8, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit

write_reg_dma.exit:                               ; preds = %if.end23.i, %if.then21.i
  %32 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1.i, align 4
  %cfg0.i = getelementptr inbounds %struct.nandc_regs, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %props19.i, align 4
  %is_bam.i14 = getelementptr inbounds %struct.qcom_nandc_props, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %is_bam.i14 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_bam.i14, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool20.not.i15 = icmp eq i8 %37, 0
  br i1 %tobool20.not.i15, label %if.end23.i20, label %if.then21.i17

if.then21.i17:                                    ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i57 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %bam_txn1.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bam_txn1.i57, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %bam_ce_pos.i58 = getelementptr inbounds %struct.bam_transaction, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %bam_ce_pos.i58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bam_ce_pos.i58, align 4
  %arrayidx.i59 = getelementptr %struct.bam_cmd_element, ptr %41, i32 %43
  %base_phys6.i60 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %base_phys6.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_phys6.i60, align 4
  %add3.i67 = add i32 %45, 32
  %46 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg0.i, align 4
  %and.i.i70 = and i32 %add3.i67, 16777215
  %48 = tail call i32 @llvm.bswap.i32(i32 %and.i.i70) #12
  %49 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx.i59, align 4
  %data2.i.i.i71 = getelementptr %struct.bam_cmd_element, ptr %41, i32 %43, i32 1
  %50 = ptrtoint ptr %data2.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %data2.i.i.i71, align 4
  %mask.i.i.i72 = getelementptr %struct.bam_cmd_element, ptr %41, i32 %43, i32 2
  %51 = ptrtoint ptr %mask.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %mask.i.i.i72, align 4
  %arrayidx2.i64.1 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i59, i32 1
  %52 = ptrtoint ptr %base_phys6.i60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base_phys6.i60, align 4
  %add3.i67.1 = add i32 %53, 36
  %add.ptr10.i69.1 = getelementptr %struct.nandc_regs, ptr %33, i32 0, i32 6
  %54 = ptrtoint ptr %add.ptr10.i69.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr10.i69.1, align 4
  %and.i.i70.1 = and i32 %add3.i67.1, 16777215
  %56 = tail call i32 @llvm.bswap.i32(i32 %and.i.i70.1) #12
  %57 = ptrtoint ptr %arrayidx2.i64.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx2.i64.1, align 4
  %data2.i.i.i71.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i64.1, i32 0, i32 1
  %58 = ptrtoint ptr %data2.i.i.i71.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %data2.i.i.i71.1, align 4
  %mask.i.i.i72.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i64.1, i32 0, i32 2
  %59 = ptrtoint ptr %mask.i.i.i72.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %mask.i.i.i72.1, align 4
  %arrayidx2.i64.2 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i59, i32 2
  %60 = ptrtoint ptr %base_phys6.i60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base_phys6.i60, align 4
  %add3.i67.2 = add i32 %61, 40
  %add.ptr10.i69.2 = getelementptr %struct.nandc_regs, ptr %33, i32 0, i32 7
  %62 = ptrtoint ptr %add.ptr10.i69.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr10.i69.2, align 4
  %and.i.i70.2 = and i32 %add3.i67.2, 16777215
  %64 = tail call i32 @llvm.bswap.i32(i32 %and.i.i70.2) #12
  %65 = ptrtoint ptr %arrayidx2.i64.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx2.i64.2, align 4
  %data2.i.i.i71.2 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i64.2, i32 0, i32 1
  %66 = ptrtoint ptr %data2.i.i.i71.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %data2.i.i.i71.2, align 4
  %mask.i.i.i72.2 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i64.2, i32 0, i32 2
  %67 = ptrtoint ptr %mask.i.i.i72.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %mask.i.i.i72.2, align 4
  %68 = ptrtoint ptr %bam_ce_pos.i58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bam_ce_pos.i58, align 4
  %add12.i75 = add i32 %69, 3
  store i32 %add12.i75, ptr %bam_ce_pos.i58, align 4
  br label %write_reg_dma.exit21

if.end23.i20:                                     ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i19 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 32, ptr noundef %cfg0.i, i32 noundef 12, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit21

write_reg_dma.exit21:                             ; preds = %if.end23.i20, %if.then21.i17
  %70 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %props19.i, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not = icmp eq i8 %73, 0
  br i1 %tobool.not, label %if.then, label %write_reg_dma.exit21.if.end_crit_edge

write_reg_dma.exit21.if.end_crit_edge:            ; preds = %write_reg_dma.exit21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %write_reg_dma.exit21
  %74 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs1.i, align 4
  %ecc_buf_cfg.i = getelementptr inbounds %struct.nandc_regs, ptr %75, i32 0, i32 14
  %is_bam.i25 = getelementptr inbounds %struct.qcom_nandc_props, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %is_bam.i25 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %is_bam.i25, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool20.not.i26 = icmp eq i8 %77, 0
  br i1 %tobool20.not.i26, label %if.end23.i31, label %if.then21.i28

if.then21.i28:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i77 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %78 = ptrtoint ptr %bam_txn1.i77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bam_txn1.i77, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %bam_ce_pos.i78 = getelementptr inbounds %struct.bam_transaction, ptr %79, i32 0, i32 3
  %82 = ptrtoint ptr %bam_ce_pos.i78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bam_ce_pos.i78, align 4
  %arrayidx.i79 = getelementptr %struct.bam_cmd_element, ptr %81, i32 %83
  %base_phys6.i80 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %base_phys6.i80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base_phys6.i80, align 4
  %add3.i87 = add i32 %85, 240
  %86 = ptrtoint ptr %ecc_buf_cfg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ecc_buf_cfg.i, align 4
  %and.i.i90 = and i32 %add3.i87, 16777215
  %88 = tail call i32 @llvm.bswap.i32(i32 %and.i.i90) #12
  %89 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx.i79, align 4
  %data2.i.i.i91 = getelementptr %struct.bam_cmd_element, ptr %81, i32 %83, i32 1
  %90 = ptrtoint ptr %data2.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %data2.i.i.i91, align 4
  %mask.i.i.i92 = getelementptr %struct.bam_cmd_element, ptr %81, i32 %83, i32 2
  %91 = ptrtoint ptr %mask.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %mask.i.i.i92, align 4
  %92 = ptrtoint ptr %bam_ce_pos.i78 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bam_ce_pos.i78, align 4
  %add12.i95 = add i32 %93, 1
  store i32 %add12.i95, ptr %bam_ce_pos.i78, align 4
  br label %if.end

if.end23.i31:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i30 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 240, ptr noundef %ecc_buf_cfg.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.end23.i31, %if.then21.i28, %write_reg_dma.exit21.if.end_crit_edge
  %94 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs1.i, align 4
  %erased_cw_detect_cfg_clr.i = getelementptr inbounds %struct.nandc_regs, ptr %95, i32 0, i32 23
  %96 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %props19.i, align 4
  %is_bam.i36 = getelementptr inbounds %struct.qcom_nandc_props, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %is_bam.i36 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_bam.i36, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool20.not.i37 = icmp eq i8 %99, 0
  br i1 %tobool20.not.i37, label %if.end23.i42, label %if.then21.i39

if.then21.i39:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i97 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %100 = ptrtoint ptr %bam_txn1.i97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bam_txn1.i97, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %bam_ce_pos.i98 = getelementptr inbounds %struct.bam_transaction, ptr %101, i32 0, i32 3
  %104 = ptrtoint ptr %bam_ce_pos.i98 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bam_ce_pos.i98, align 4
  %arrayidx.i99 = getelementptr %struct.bam_cmd_element, ptr %103, i32 %105
  %base_phys6.i100 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %106 = ptrtoint ptr %base_phys6.i100 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %base_phys6.i100, align 4
  %add3.i107 = add i32 %107, 232
  %108 = ptrtoint ptr %erased_cw_detect_cfg_clr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %erased_cw_detect_cfg_clr.i, align 4
  %and.i.i110 = and i32 %add3.i107, 16777215
  %110 = tail call i32 @llvm.bswap.i32(i32 %and.i.i110) #12
  %111 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx.i99, align 4
  %data2.i.i.i111 = getelementptr %struct.bam_cmd_element, ptr %103, i32 %105, i32 1
  %112 = ptrtoint ptr %data2.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %109, ptr %data2.i.i.i111, align 4
  %mask.i.i.i112 = getelementptr %struct.bam_cmd_element, ptr %103, i32 %105, i32 2
  %113 = ptrtoint ptr %mask.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %mask.i.i.i112, align 4
  %114 = ptrtoint ptr %bam_ce_pos.i98 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bam_ce_pos.i98, align 4
  %add12.i115 = add i32 %115, 1
  store i32 %add12.i115, ptr %bam_ce_pos.i98, align 4
  br label %write_reg_dma.exit43

if.end23.i42:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i41 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 232, ptr noundef %erased_cw_detect_cfg_clr.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit43

write_reg_dma.exit43:                             ; preds = %if.end23.i42, %if.then21.i39
  %116 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs1.i, align 4
  %erased_cw_detect_cfg_set.i47 = getelementptr inbounds %struct.nandc_regs, ptr %117, i32 0, i32 24
  %118 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %props19.i, align 4
  %is_bam.i49 = getelementptr inbounds %struct.qcom_nandc_props, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %is_bam.i49 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_bam.i49, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool20.not.i50 = icmp eq i8 %121, 0
  br i1 %tobool20.not.i50, label %if.end23.i55, label %if.then21.i52

if.then21.i52:                                    ; preds = %write_reg_dma.exit43
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i51 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 232, ptr noundef %erased_cw_detect_cfg_set.i47, i32 noundef 1, i32 noundef 20) #12
  br label %write_reg_dma.exit56

if.end23.i55:                                     ; preds = %write_reg_dma.exit43
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i54 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 232, ptr noundef %erased_cw_detect_cfg_set.i47, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit56

write_reg_dma.exit56:                             ; preds = %if.end23.i55, %if.then21.i52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_nand_cw_read(ptr nocapture noundef readonly %chip, i1 noundef zeroext %use_ecc, i32 noundef %cw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %props, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %6 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %steps.i, align 4
  %sub.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %cw)
  %cmp.i = icmp eq i32 %sub.i, %cw
  %spec.select = select i1 %cmp.i, i32 3904, i32 3872
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %reg.0 = phi i32 [ 3872, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @write_reg_dma(ptr noundef %1, i32 noundef %reg.0, i32 noundef 4, i32 noundef 4)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %regs1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1.i, align 4
  %12 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %props, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not.i = icmp eq i8 %15, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0, ptr noundef %11, i32 noundef 1, i32 noundef 4) #12
  br label %write_reg_dma.exit

if.end23.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0, ptr noundef %11, i32 noundef 4, i1 noundef zeroext true) #12
  br label %write_reg_dma.exit

write_reg_dma.exit:                               ; preds = %if.end23.i, %if.then21.i
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs1.i, align 4
  %exec.i = getelementptr inbounds %struct.nandc_regs, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %props, align 4
  %is_bam.i27 = getelementptr inbounds %struct.qcom_nandc_props, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %is_bam.i27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_bam.i27, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not.i28 = icmp eq i8 %21, 0
  br i1 %tobool20.not.i28, label %if.end23.i33, label %if.then21.i30

if.then21.i30:                                    ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i29 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i, i32 noundef 1, i32 noundef 6) #12
  br label %write_reg_dma.exit34

if.end23.i33:                                     ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i32 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit34

write_reg_dma.exit34:                             ; preds = %if.end23.i33, %if.then21.i30
  %reg_read_buf.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_read_buf.i, align 4
  %reg_read_pos.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_read_pos.i, align 4
  %add.ptr.i = getelementptr i32, ptr %23, i32 %25
  br i1 %use_ecc, label %if.then11, label %if.else

if.then11:                                        ; preds = %write_reg_dma.exit34
  %add.i = add i32 %25, 2
  %26 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %reg_read_pos.i, align 4
  %27 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %props, align 4
  %is_bam.i35 = getelementptr inbounds %struct.qcom_nandc_props, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %is_bam.i35 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_bam.i35, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bam_txn1.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bam_ce_pos.i, align 4
  %arrayidx.i = getelementptr %struct.bam_cmd_element, ptr %34, i32 %36
  %base_phys6.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %reg_read_dma.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_phys6.i, align 4
  %add3.i = add i32 %38, 20
  %39 = ptrtoint ptr %reg_read_dma.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_read_dma.i, align 4
  %41 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_read_buf.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = add i32 %40, %sub.ptr.lhs.cast.i
  %add4.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %43 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #12
  %and.i.i.i = and i32 %add3.i, 16777215
  %or.i.i.i = or i32 %and.i.i.i, 16777216
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #12
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx.i, align 4
  %data2.i.i.i = getelementptr %struct.bam_cmd_element, ptr %34, i32 %36, i32 1
  %46 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %data2.i.i.i, align 4
  %mask.i.i.i = getelementptr %struct.bam_cmd_element, ptr %34, i32 %36, i32 2
  %47 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %mask.i.i.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i, i32 1
  %48 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base_phys6.i, align 4
  %add3.i.1 = add i32 %49, 24
  %50 = ptrtoint ptr %reg_read_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_read_dma.i, align 4
  %add.ptr.i63.1 = getelementptr i32, ptr %add.ptr.i, i32 1
  %52 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_read_buf.i, align 4
  %sub.ptr.lhs.cast.i.1 = ptrtoint ptr %add.ptr.i63.1 to i32
  %sub.ptr.rhs.cast.i.1 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.1 = add i32 %51, %sub.ptr.lhs.cast.i.1
  %add4.i.1 = sub i32 %sub.ptr.sub.i.1, %sub.ptr.rhs.cast.i.1
  %54 = tail call i32 @llvm.bswap.i32(i32 %add4.i.1) #12
  %and.i.i.i.1 = and i32 %add3.i.1, 16777215
  %or.i.i.i.1 = or i32 %and.i.i.i.1, 16777216
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.1) #12
  %56 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx2.i.1, align 4
  %data2.i.i.i.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i.1, i32 0, i32 1
  %57 = ptrtoint ptr %data2.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %data2.i.i.i.1, align 4
  %mask.i.i.i.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i.1, i32 0, i32 2
  %58 = ptrtoint ptr %mask.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %mask.i.i.i.1, align 4
  %59 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bam_ce_pos.i, align 4
  %add12.i = add i32 %60, 2
  store i32 %add12.i, ptr %bam_ce_pos.i, align 4
  br label %read_reg_dma.exit

if.end6.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i, i32 noundef 8, i1 noundef zeroext true) #12
  br label %read_reg_dma.exit

read_reg_dma.exit:                                ; preds = %if.end6.i, %if.then5.i
  %61 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_read_buf.i, align 4
  %63 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg_read_pos.i, align 4
  %add.ptr.i39 = getelementptr i32, ptr %62, i32 %64
  %add.i40 = add i32 %64, 1
  store i32 %add.i40, ptr %reg_read_pos.i, align 4
  %65 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %props, align 4
  %is_bam.i42 = getelementptr inbounds %struct.qcom_nandc_props, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %is_bam.i42 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_bam.i42, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i43 = icmp eq i8 %68, 0
  br i1 %tobool.not.i43, label %if.end6.i47, label %if.then5.i45

if.then5.i45:                                     ; preds = %read_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i44 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext true, i32 noundef 236, ptr noundef %add.ptr.i39, i32 noundef 1, i32 noundef 4) #12
  br label %if.end15

if.end6.i47:                                      ; preds = %read_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i46 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext true, i32 noundef 236, ptr noundef %add.ptr.i39, i32 noundef 4, i1 noundef zeroext false) #12
  br label %if.end15

if.else:                                          ; preds = %write_reg_dma.exit34
  %add.i52 = add i32 %25, 1
  %69 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i52, ptr %reg_read_pos.i, align 4
  %70 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %props, align 4
  %is_bam.i54 = getelementptr inbounds %struct.qcom_nandc_props, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %is_bam.i54 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_bam.i54, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i55 = icmp eq i8 %73, 0
  br i1 %tobool.not.i55, label %if.end6.i59, label %if.then5.i57

if.then5.i57:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call.i56 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 4) #12
  br label %if.end15

if.end6.i59:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i58 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i, i32 noundef 4, i1 noundef zeroext true) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end6.i59, %if.then5.i57, %if.end6.i47, %if.then5.i45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_data_dma(ptr noundef %nandc, i32 noundef %reg_off, ptr noundef %vaddr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %0 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %4 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bam_txn1.i, align 4
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_sgl.i, align 4
  %rx_sgl_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %rx_sgl_pos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_sgl_pos.i, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %7, i32 %9
  %10 = ptrtoint ptr %vaddr to i32
  %cmp.i.i = icmp ugt ptr %vaddr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.do.body5.i.i_crit_edge, !prof !210

if.then.do.body5.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %11 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %11, %vaddr
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !210

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %10, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %12, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !216

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.then.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !210

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %prep_bam_dma_desc_data.exit, label %do.body19.i.i.i.i, !prof !210

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

prep_bam_dma_desc_data.exit:                      ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %10, 4095
  %and.i.i.i.i = and i32 %15, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i.i.i.i, ptr %arrayidx.i, align 4
  %offset1.i.i.i = getelementptr %struct.scatterlist, ptr %7, i32 %9, i32 1
  %18 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr %struct.scatterlist, ptr %7, i32 %9, i32 2
  %19 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size, ptr %length.i.i.i, align 4
  %20 = ptrtoint ptr %rx_sgl_pos.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_sgl_pos.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %rx_sgl_pos.i, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %nandc, i1 noundef zeroext true, i32 noundef %reg_off, ptr noundef %vaddr, i32 noundef %size, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %if.end, %prep_bam_dma_desc_data.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_descs(ptr noundef %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bam_txn1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %0 = ptrtoint ptr %bam_txn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bam_txn1, align 4
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %2 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then:                                          ; preds = %entry
  %rx_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %rx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_sgl_pos, align 4
  %rx_sgl_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %rx_sgl_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_sgl_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2:                                         ; preds = %if.then
  %rx_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_chan, align 4
  %call = tail call fastcc i32 @prepare_bam_async_desc(ptr noundef %nandc, ptr noundef %11, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.if.end5_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %tx_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %tx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_sgl_pos, align 4
  %tx_sgl_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %tx_sgl_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_sgl_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6 = icmp ugt i32 %13, %15
  br i1 %cmp6, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %16 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call8 = tail call fastcc i32 @prepare_bam_async_desc(ptr noundef %nandc, ptr noundef %18, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %cmd_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %cmd_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd_sgl_pos, align 4
  %cmd_sgl_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %cmd_sgl_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd_sgl_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp13 = icmp ugt i32 %20, %22
  br i1 %cmp13, label %if.then14, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  %cmd_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %23 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_chan, align 4
  %call15 = tail call fastcc i32 @prepare_bam_async_desc(ptr noundef %nandc, ptr noundef %24, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end20_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end12.if.end20_crit_edge, %entry.if.end20_crit_edge
  %desc_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9
  %25 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %desc.094 = load ptr, ptr %desc_list, align 4
  %cmp22.not95 = icmp eq ptr %desc.094, %desc_list
  br i1 %cmp22.not95, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %desc.096 = phi ptr [ %desc.0, %for.body.for.body_crit_edge ], [ %desc.094, %if.end20.for.body_crit_edge ]
  %dma_desc = getelementptr inbounds %struct.desc_info, ptr %desc.096, i32 0, i32 3
  %26 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_submit.i, align 4
  %call.i = tail call i32 %29(ptr noundef %27) #12
  %30 = ptrtoint ptr %desc.096 to i32
  call void @__asan_load4_noabort(i32 %30)
  %desc.0 = load ptr, ptr %desc.096, align 4
  %cmp22.not = icmp eq ptr %desc.0, %desc_list
  br i1 %cmp22.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end20.for.end_crit_edge
  %cookie.0.lcssa = phi i32 [ 0, %if.end20.for.end_crit_edge ], [ %call.i, %for.body.for.end_crit_edge ]
  %31 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %props, align 4
  %is_bam30 = getelementptr inbounds %struct.qcom_nandc_props, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %is_bam30 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_bam30, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not = icmp eq i8 %34, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %for.end
  %last_cmd_desc = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %last_cmd_desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %last_cmd_desc, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @qpic_bam_dma_done, ptr %callback, align 4
  %38 = load ptr, ptr %last_cmd_desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %callback_param, align 4
  %last_data_desc = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %last_data_desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %last_data_desc, align 4
  %tobool34.not = icmp eq ptr %41, null
  br i1 %tobool34.not, label %if.then32.if.end40_crit_edge, label %if.then35

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %callback37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %callback37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @qpic_bam_dma_done, ptr %callback37, align 4
  %43 = ptrtoint ptr %last_data_desc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %last_data_desc, align 4
  %callback_param39 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %callback_param39 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %callback_param39, align 4
  %wait_second_completion = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %wait_second_completion to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %wait_second_completion, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then32.if.end40_crit_edge
  %47 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 50
  %52 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %53(ptr noundef %49) #12
  %rx_chan42 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 1
  %54 = ptrtoint ptr %rx_chan42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_chan42, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %device_issue_pending.i92 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 50
  %58 = ptrtoint ptr %device_issue_pending.i92 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_issue_pending.i92, align 4
  tail call void %59(ptr noundef %55) #12
  %cmd_chan43 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %60 = ptrtoint ptr %cmd_chan43 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd_chan43, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %device_issue_pending.i93 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 50
  %64 = ptrtoint ptr %device_issue_pending.i93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device_issue_pending.i93, align 4
  tail call void %65(ptr noundef %61) #12
  %txn_done = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 12
  %call45 = tail call i32 @wait_for_completion_timeout(ptr noundef %txn_done, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end40.cleanup_crit_edge, label %if.end40.if.end53_crit_edge

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %for.end
  %66 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call49 = tail call i32 @dma_sync_wait(ptr noundef %68, i32 noundef %cookie.0.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.else.if.end53_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %if.end40.if.end53_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.else.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ %call, %if.then2.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call15, %if.then14.cleanup_crit_edge ], [ -110, %if.end40.cleanup_crit_edge ], [ -110, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_descs(ptr noundef readonly %nandc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9
  %0 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_list, align 4
  %cmp.not29 = icmp eq ptr %1, %desc_list
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %desc.030 = phi ptr [ %1, %for.body.lr.ph ], [ %n.033, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %desc.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.033 = load ptr, ptr %desc.030, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.030) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %desc.030, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %desc.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %desc.030 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.030, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %desc.030, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = getelementptr inbounds %struct.desc_info, ptr %desc.030, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %sgl_cnt = getelementptr inbounds %struct.desc_info, ptr %desc.030, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %sgl_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sgl_cnt, align 4
  %dir = getelementptr inbounds %struct.desc_info, ptr %desc.030, i32 0, i32 1
  %22 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dir, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef 0) #12
  br label %if.end

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dir9 = getelementptr inbounds %struct.desc_info, ptr %desc.030, i32 0, i32 1
  %24 = ptrtoint ptr %dir9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dir9, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %17, i32 noundef 1, i32 noundef %25, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %desc.030) #12
  %cmp.not = icmp eq ptr %n.033, %desc_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_reg_dma(ptr noundef %nandc, i32 noundef %first, i32 noundef %num_regs, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 19
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %call = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %1, i32 noundef %first)
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %first)
  %cmp = icmp eq i32 %first, 232
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %erased_cw_detect_cfg_clr = getelementptr inbounds %struct.nandc_regs, ptr %1, i32 0, i32 23
  %erased_cw_detect_cfg_set = getelementptr inbounds %struct.nandc_regs, ptr %1, i32 0, i32 24
  %vaddr.0.ph = select i1 %tobool.not, ptr %erased_cw_detect_cfg_clr, ptr %erased_cw_detect_cfg_set
  br label %if.end18

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %first)
  %cmp4 = icmp eq i32 %first, 16
  %or = or i32 %flags, 2
  %spec.select = select i1 %cmp4, i32 %or, i32 %flags
  %2 = zext i32 %first to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %first, label %if.end3.if.end10_crit_edge [
    i32 57005, label %if.end3.if.then9_crit_edge
    i32 164, label %if.end3.if.then9_crit_edge12
  ]

if.end3.if.then9_crit_edge12:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end3.if.then9_crit_edge, %if.end3.if.then9_crit_edge12
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %3 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props, align 4
  %dev_cmd_reg_start = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dev_cmd_reg_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_cmd_reg_start, align 4
  %add = add i32 %6, 164
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end3.if.end10_crit_edge
  %first.addr.0 = phi i32 [ %add, %if.then9 ], [ %first, %if.end3.if.end10_crit_edge ]
  %7 = zext i32 %first.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %first.addr.0, label %if.end10.if.end18_crit_edge [
    i32 48879, label %if.end10.if.then14_crit_edge
    i32 172, label %if.end10.if.then14_crit_edge13
  ]

if.end10.if.then14_crit_edge13:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.end10.if.then14_crit_edge, %if.end10.if.then14_crit_edge13
  %props15 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %8 = ptrtoint ptr %props15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %props15, align 4
  %dev_cmd_reg_start16 = getelementptr inbounds %struct.qcom_nandc_props, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dev_cmd_reg_start16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_cmd_reg_start16, align 4
  %add17 = add i32 %11, 172
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge, %if.then
  %vaddr.0511 = phi ptr [ %call, %if.then14 ], [ %call, %if.end10.if.end18_crit_edge ], [ %vaddr.0.ph, %if.then ]
  %spec.select610 = phi i32 [ %spec.select, %if.then14 ], [ %spec.select, %if.end10.if.end18_crit_edge ], [ %flags, %if.then ]
  %first.addr.1 = phi i32 [ %add17, %if.then14 ], [ %first.addr.0, %if.end10.if.end18_crit_edge ], [ 232, %if.then ]
  %props19 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 22
  %12 = ptrtoint ptr %props19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %props19, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %nandc, i1 noundef zeroext false, i32 noundef %first.addr.1, ptr noundef %vaddr.0511, i32 noundef %num_regs, i32 noundef %spec.select610)
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.addr.1)
  %cmp24 = icmp eq i32 %first.addr.1, 0
  %mul = shl i32 %num_regs, 2
  %call28 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %nandc, i1 noundef zeroext false, i32 noundef %first.addr.1, ptr noundef %vaddr.0511, i32 noundef %mul, i1 noundef zeroext %cmp24)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @offset_to_nandc_reg(ptr noundef readnone %regs, i32 noundef %offset) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %offset, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %sw.bb1
    i32 8, label %sw.bb2
    i32 12, label %sw.bb3
    i32 16, label %sw.bb4
    i32 20, label %sw.bb5
    i32 32, label %sw.bb6
    i32 36, label %sw.bb7
    i32 40, label %sw.bb8
    i32 68, label %sw.bb9
    i32 164, label %sw.bb10
    i32 57005, label %sw.bb11
    i32 172, label %sw.bb12
    i32 48879, label %sw.bb13
    i32 240, label %sw.bb14
    i32 3872, label %sw.bb15
    i32 3876, label %sw.bb16
    i32 3880, label %sw.bb17
    i32 3884, label %sw.bb18
    i32 3904, label %sw.bb19
    i32 3908, label %sw.bb20
    i32 3912, label %sw.bb21
    i32 3916, label %sw.bb22
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %addr0 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 1
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %addr1 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 2
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip_sel = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 3
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %exec = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %clrflashstatus = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 8
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cfg0 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 5
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cfg1 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_bch_cfg = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 7
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %clrreadstatus = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 9
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cmd1 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 10
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %orig_cmd1 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 12
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vld = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 11
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %orig_vld = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 13
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_buf_cfg = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 14
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location0 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 15
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location1 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 16
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location2 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 17
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location3 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 18
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location_last0 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 19
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location_last1 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 20
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location_last2 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 21
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_location_last3 = getelementptr inbounds %struct.nandc_regs, ptr %regs, i32 0, i32 22
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %sw.default, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %sw.default ], [ %read_location_last3, %sw.bb22 ], [ %read_location_last2, %sw.bb21 ], [ %read_location_last1, %sw.bb20 ], [ %read_location_last0, %sw.bb19 ], [ %read_location3, %sw.bb18 ], [ %read_location2, %sw.bb17 ], [ %read_location1, %sw.bb16 ], [ %read_location0, %sw.bb15 ], [ %ecc_buf_cfg, %sw.bb14 ], [ %orig_vld, %sw.bb13 ], [ %vld, %sw.bb12 ], [ %orig_cmd1, %sw.bb11 ], [ %cmd1, %sw.bb10 ], [ %clrreadstatus, %sw.bb9 ], [ %ecc_bch_cfg, %sw.bb8 ], [ %cfg1, %sw.bb7 ], [ %cfg0, %sw.bb6 ], [ %clrflashstatus, %sw.bb5 ], [ %exec, %sw.bb4 ], [ %chip_sel, %sw.bb3 ], [ %addr1, %sw.bb2 ], [ %addr0, %sw.bb1 ], [ %regs, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %nandc, i1 noundef zeroext %read, i32 noundef %reg_off, ptr noundef %vaddr, i32 noundef %size, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bam_txn1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %0 = ptrtoint ptr %bam_txn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bam_txn1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bam_ce_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bam_ce_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bam_ce_pos, align 4
  %arrayidx = getelementptr %struct.bam_cmd_element, ptr %3, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp69 = icmp sgt i32 %size, 0
  br i1 %cmp69, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base_phys6 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 4
  %reg_read_dma = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 17
  %reg_read_buf = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.bam_cmd_element, ptr %arrayidx, i32 %i.070
  %6 = ptrtoint ptr %base_phys6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_phys6, align 4
  %mul = shl i32 %i.070, 2
  %add = add i32 %mul, %reg_off
  %add3 = add i32 %add, %7
  br i1 %read, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %reg_read_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_read_dma, align 4
  %add.ptr = getelementptr i32, ptr %vaddr, i32 %i.070
  %10 = ptrtoint ptr %reg_read_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_read_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = add i32 %9, %sub.ptr.lhs.cast
  %add4 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %12 = tail call i32 @llvm.bswap.i32(i32 %add4) #12
  %and.i.i = and i32 %add3, 16777215
  %or.i.i = or i32 %and.i.i, 16777216
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr10 = getelementptr i32, ptr %vaddr, i32 %i.070
  %13 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr10, align 4
  %and.i = and i32 %add3, 16777215
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %or.i.i.sink = phi i32 [ %or.i.i, %if.then ], [ %and.i, %if.else ]
  %.sink = phi i32 [ %12, %if.then ], [ %14, %if.else ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.sink) #12
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx2, align 4
  %data2.i.i = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2, i32 0, i32 1
  %17 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %data2.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2, i32 0, i32 2
  %18 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %mask.i.i, align 4
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %19 = ptrtoint ptr %bam_ce_pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bam_ce_pos, align 4
  %add12 = add i32 %20, %size
  store i32 %add12, ptr %bam_ce_pos, align 4
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.end.if.end32_crit_edge, label %if.then14

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then14:                                        ; preds = %for.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %bam_ce_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %bam_ce_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bam_ce_start, align 4
  %arrayidx16 = getelementptr %struct.bam_cmd_element, ptr %22, i32 %24
  %sub = sub i32 %add12, %24
  %mul19 = shl i32 %sub, 4
  %cmd_sgl = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %cmd_sgl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_sgl, align 4
  %cmd_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %cmd_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd_sgl_pos, align 4
  %arrayidx20 = getelementptr %struct.scatterlist, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx16 to i32
  %cmp.i = icmp ugt ptr %arrayidx16, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then14.do.body5.i_crit_edge, !prof !210

if.then14.do.body5.i_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %30 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %30, %arrayidx16
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !210

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %29, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %31, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !216

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then14.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %32, i32 %shr.i
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx20, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !210

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !210

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i68 = and i32 %29, 4095
  %and.i.i.i = and i32 %34, 3
  %or.i.i.i = or i32 %and.i.i.i, %35
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i.i, ptr %arrayidx20, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %26, i32 %28, i32 1
  %37 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i68, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %26, i32 %28, i32 2
  %38 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul19, ptr %length.i.i, align 4
  %39 = ptrtoint ptr %cmd_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd_sgl_pos, align 4
  %inc22 = add i32 %40, 1
  store i32 %inc22, ptr %cmd_sgl_pos, align 4
  %41 = ptrtoint ptr %bam_ce_pos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bam_ce_pos, align 4
  %43 = ptrtoint ptr %bam_ce_start to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bam_ce_start, align 4
  %and25 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sg_set_buf.exit.if.end32_crit_edge, label %if.then27

sg_set_buf.exit.if.end32_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then27:                                        ; preds = %sg_set_buf.exit
  %cmd_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %44 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd_chan, align 4
  %call = tail call fastcc i32 @prepare_bam_async_desc(ptr noundef %nandc, ptr noundef %45, i32 noundef 160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.then27.if.end32_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %sg_set_buf.exit.if.end32_crit_edge, %for.end.if.end32_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ %call, %if.then27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prep_adm_dma_desc(ptr noundef %nandc, i1 noundef zeroext %read, i32 noundef %reg_off, ptr noundef %vaddr, i32 noundef %size, i1 noundef zeroext %flow_control) unnamed_addr #2 align 64 {
entry:
  %slave_conf = alloca %struct.dma_slave_config, align 4
  %periph_conf = alloca %struct.qcom_adm_peripheral_config, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %flow_control to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_conf) #12
  %0 = call ptr @memset(ptr %slave_conf, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %periph_conf) #12
  %1 = ptrtoint ptr %periph_conf to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %periph_conf, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @sg_init_one(ptr noundef %3, ptr noundef %vaddr, i32 noundef %size) #12
  %spec.select = select i1 %read, i32 2, i32 1
  %4 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 8
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call7 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %3, i32 noundef 1, i32 noundef %spec.select, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %if.end9

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end9:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %slave_conf, i32 0, i32 48)
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 9
  %9 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool1, ptr %device_fc, align 4
  br i1 %read, label %if.then13, label %if.else18

if.then13:                                        ; preds = %if.end9
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 5
  %10 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %src_maxburst, align 4
  %base_dma = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 5
  %11 = ptrtoint ptr %base_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_dma, align 4
  %add = add i32 %12, %reg_off
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 1
  %13 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %src_addr, align 4
  %data_crci = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %14 = ptrtoint ptr %data_crci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_crci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.then13.if.end28_crit_edge, label %if.then13.if.end28.sink.split_crit_edge

if.then13.if.end28.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.sink.split

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.else18:                                        ; preds = %if.end9
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 6
  %16 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %dst_maxburst, align 4
  %base_dma19 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 5
  %17 = ptrtoint ptr %base_dma19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_dma19, align 4
  %add20 = add i32 %18, %reg_off
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 2
  %19 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add20, ptr %dst_addr, align 4
  %cmd_crci = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 1
  %20 = ptrtoint ptr %cmd_crci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_crci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %if.else18.if.end28_crit_edge, label %if.else18.if.end28.sink.split_crit_edge

if.else18.if.end28.sink.split_crit_edge:          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.sink.split

if.else18.if.end28_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28.sink.split:                              ; preds = %if.else18.if.end28.sink.split_crit_edge, %if.then13.if.end28.sink.split_crit_edge
  %storemerge = phi i32 [ %15, %if.then13.if.end28.sink.split_crit_edge ], [ %21, %if.else18.if.end28.sink.split_crit_edge ]
  %22 = ptrtoint ptr %periph_conf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %periph_conf, align 8
  %peripheral_config25 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 10
  %23 = ptrtoint ptr %peripheral_config25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %periph_conf, ptr %peripheral_config25, align 4
  %peripheral_size26 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_conf, i32 0, i32 11
  %24 = ptrtoint ptr %peripheral_size26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %peripheral_size26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else18.if.end28_crit_edge, %if.then13.if.end28_crit_edge
  %25 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end28.err.sink.split_crit_edge, label %dmaengine_slave_config.exit

if.end28.err.sink.split_crit_edge:                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

dmaengine_slave_config.exit:                      ; preds = %if.end28
  %call.i = call i32 %31(ptr noundef %27, ptr noundef nonnull %slave_conf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end33, label %dmaengine_slave_config.exit.err.sink.split_crit_edge

dmaengine_slave_config.exit.err.sink.split_crit_edge: ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

if.end33:                                         ; preds = %dmaengine_slave_config.exit
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  %tobool.not.i76 = icmp eq ptr %33, null
  br i1 %tobool.not.i76, label %if.end33.err.sink.split_crit_edge, label %lor.lhs.false.i

if.end33.err.sink.split_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

lor.lhs.false.i:                                  ; preds = %if.end33
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err.sink.split_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err.sink.split_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err.sink.split_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.err.sink.split_crit_edge:        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i77 = call ptr %37(ptr noundef nonnull %33, ptr noundef %3, i32 noundef 1, i32 noundef %spec.select, i32 noundef 0, ptr noundef null) #12
  %tobool36.not = icmp eq ptr %call.i77, null
  br i1 %tobool36.not, label %dmaengine_prep_slave_sg.exit.err.sink.split_crit_edge, label %if.end42

dmaengine_prep_slave_sg.exit.err.sink.split_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

if.end42:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %dma_desc43 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %dma_desc43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i77, ptr %dma_desc43, align 8
  %desc_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %40, ptr noundef %desc_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %desc_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %40, align 4
  br label %cleanup

err.sink.split:                                   ; preds = %dmaengine_prep_slave_sg.exit.err.sink.split_crit_edge, %lor.lhs.false2.i.err.sink.split_crit_edge, %lor.lhs.false.i.err.sink.split_crit_edge, %if.end33.err.sink.split_crit_edge, %dmaengine_slave_config.exit.err.sink.split_crit_edge, %if.end28.err.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.46, %if.end28.err.sink.split_crit_edge ], [ @.str.46, %dmaengine_slave_config.exit.err.sink.split_crit_edge ], [ @.str.49, %if.end33.err.sink.split_crit_edge ], [ @.str.49, %lor.lhs.false.i.err.sink.split_crit_edge ], [ @.str.49, %lor.lhs.false2.i.err.sink.split_crit_edge ], [ @.str.49, %dmaengine_prep_slave_sg.exit.err.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -38, %if.end28.err.sink.split_crit_edge ], [ %call.i, %dmaengine_slave_config.exit.err.sink.split_crit_edge ], [ -22, %if.end33.err.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.err.sink.split_crit_edge ], [ -22, %lor.lhs.false2.i.err.sink.split_crit_edge ], [ -22, %dmaengine_prep_slave_sg.exit.err.sink.split_crit_edge ]
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.49.sink) #15
  br label %err

err:                                              ; preds = %err.sink.split, %if.end.err_crit_edge
  %ret.0 = phi i32 [ -12, %if.end.err_crit_edge ], [ %ret.0.ph, %err.sink.split ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.i.i, %if.end42.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %periph_conf) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_conf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_bam_async_desc(ptr noundef %nandc, ptr noundef %chan, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bam_txn1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %0 = ptrtoint ptr %bam_txn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bam_txn1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_chan = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_chan, align 4
  %cmp = icmp eq ptr %4, %chan
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_sgl = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %cmd_sgl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_sgl, align 4
  %cmd_sgl_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %cmd_sgl_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_sgl_start, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %6, i32 %8
  %cmd_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %cmd_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_sgl_pos, align 4
  %sub = sub i32 %10, %8
  store i32 %10, ptr %cmd_sgl_start, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end
  %11 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp6 = icmp eq ptr %13, %chan
  %data_sgl = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %data_sgl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_sgl, align 4
  br i1 %cmp6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %tx_sgl_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %tx_sgl_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_sgl_start, align 4
  %arrayidx8 = getelementptr %struct.scatterlist, ptr %15, i32 %17
  %tx_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %tx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_sgl_pos, align 4
  %sub10 = sub i32 %19, %17
  store i32 %19, ptr %tx_sgl_start, align 4
  br label %if.end23

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rx_sgl_start = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %rx_sgl_start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_sgl_start, align 4
  %arrayidx16 = getelementptr %struct.scatterlist, ptr %15, i32 %21
  %rx_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %rx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_sgl_pos, align 4
  %sub18 = sub i32 %23, %21
  store i32 %23, ptr %rx_sgl_start, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else14, %if.then7, %if.then2
  %.sink = phi i32 [ 1, %if.then7 ], [ 2, %if.else14 ], [ 1, %if.then2 ]
  %sgl.0 = phi ptr [ %arrayidx8, %if.then7 ], [ %arrayidx16, %if.else14 ], [ %arrayidx, %if.then2 ]
  %sgl_cnt.0 = phi i32 [ %sub10, %if.then7 ], [ %sub18, %if.else14 ], [ %sub, %if.then2 ]
  %dir13 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %dir13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %dir13, align 8
  %add.ptr = getelementptr %struct.scatterlist, ptr %sgl.0, i32 %sgl_cnt.0
  %add.ptr24 = getelementptr %struct.scatterlist, ptr %add.ptr, i32 -1
  %25 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr24, align 4
  %or.i = and i32 %26, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %add.ptr24, align 4
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dir25 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %dir25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dir25, align 8
  %call26 = tail call i32 @dma_map_sg_attrs(ptr noundef %28, ptr noundef %sgl.0, i32 noundef %sgl_cnt.0, i32 noundef %30, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.41) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %33 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 2
  %sgl_cnt31 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %34 = ptrtoint ptr %sgl_cnt31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sgl_cnt.0, ptr %sgl_cnt31, align 8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sgl.0, ptr %33, align 4
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %if.end30.do.end37_crit_edge, label %lor.lhs.false.i

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

lor.lhs.false.i:                                  ; preds = %if.end30
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end37_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end37_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end37_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end37_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %39(ptr noundef nonnull %chan, ptr noundef %sgl.0, i32 noundef %sgl_cnt.0, i32 noundef %.sink, i32 noundef %flags, ptr noundef null) #12
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %dmaengine_prep_slave_sg.exit.do.end37_crit_edge, label %if.end41

dmaengine_prep_slave_sg.exit.do.end37_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

do.end37:                                         ; preds = %dmaengine_prep_slave_sg.exit.do.end37_crit_edge, %lor.lhs.false2.i.do.end37_crit_edge, %lor.lhs.false.i.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.44) #15
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %dir25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dir25, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %43, ptr noundef %sgl.0, i32 noundef %sgl_cnt.0, i32 noundef %45, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end41:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %dma_desc42 = getelementptr inbounds %struct.desc_info, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %dma_desc42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %dma_desc42, align 8
  %47 = ptrtoint ptr %cmd_chan to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd_chan, align 4
  %cmp44 = icmp eq ptr %48, %chan
  %last_data_desc = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 13
  %last_cmd_desc = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 14
  %last_data_desc.sink = select i1 %cmp44, ptr %last_cmd_desc, ptr %last_data_desc
  %49 = ptrtoint ptr %last_data_desc.sink to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %last_data_desc.sink, align 4
  %desc_list = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %51, ptr noundef %desc_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %desc_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call7.i.i, ptr %51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end41.cleanup_crit_edge, %do.end37, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -22, %do.end37 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prep_bam_dma_desc_data(ptr noundef %nandc, i1 noundef zeroext %read, ptr noundef %vaddr, i32 noundef %size, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bam_txn1 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 10
  %0 = ptrtoint ptr %bam_txn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bam_txn1, align 4
  %data_sgl = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data_sgl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_sgl, align 4
  br i1 %read, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rx_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %rx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_sgl_pos, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %3, i32 %5
  %6 = ptrtoint ptr %vaddr to i32
  %cmp.i = icmp ugt ptr %vaddr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.do.body5.i_crit_edge, !prof !210

if.then.do.body5.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %7 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %7, %vaddr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !210

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %8, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !216

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !210

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !210

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %6, 4095
  %and.i.i.i = and i32 %11, 3
  %or.i.i.i = or i32 %and.i.i.i, %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.i, ptr %arrayidx, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %3, i32 %5, i32 1
  %14 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %3, i32 %5, i32 2
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size, ptr %length.i.i, align 4
  %16 = ptrtoint ptr %rx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_sgl_pos, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rx_sgl_pos, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %tx_sgl_pos = getelementptr inbounds %struct.bam_transaction, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %tx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_sgl_pos, align 4
  %arrayidx4 = getelementptr %struct.scatterlist, ptr %3, i32 %19
  %20 = ptrtoint ptr %vaddr to i32
  %cmp.i24 = icmp ugt ptr %vaddr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i24, label %land.lhs.true.i26, label %if.else.do.body5.i33_crit_edge, !prof !210

if.else.do.body5.i33_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33

land.lhs.true.i26:                                ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %21 = load ptr, ptr @high_memory, align 4
  %cmp1.i25 = icmp ugt ptr %21, %vaddr
  br i1 %cmp1.i25, label %land.rhs.i32, label %land.lhs.true.i26.do.body5.i33_crit_edge, !prof !210

land.lhs.true.i26.do.body5.i33_crit_edge:         ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33

land.rhs.i32:                                     ; preds = %land.lhs.true.i26
  %sub.i27 = add i32 %20, 1073741824
  %shr.i28 = lshr i32 %sub.i27, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i29 = add i32 %22, %shr.i28
  %call.i30 = tail call i32 @pfn_valid(i32 noundef %add.i29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.i31, label %land.rhs.i32.do.body5.i33_crit_edge, label %do.end8.i37, !prof !216

land.rhs.i32.do.body5.i33_crit_edge:              ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i33

do.body5.i33:                                     ; preds = %land.rhs.i32.do.body5.i33_crit_edge, %land.lhs.true.i26.do.body5.i33_crit_edge, %if.else.do.body5.i33_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !217
  unreachable

do.end8.i37:                                      ; preds = %land.rhs.i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %add.ptr.i34 = getelementptr %struct.page, ptr %23, i32 %shr.i28
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4, align 4
  %26 = ptrtoint ptr %add.ptr.i34 to i32
  %and2.i.i.i35 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i35)
  %tobool.not.i.i.i36 = icmp eq i32 %and2.i.i.i35, 0
  br i1 %tobool.not.i.i.i36, label %do.body11.i.i.i41, label %do.body5.i.i.i38, !prof !210

do.body5.i.i.i38:                                 ; preds = %do.end8.i37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !218
  unreachable

do.body11.i.i.i41:                                ; preds = %do.end8.i37
  %and.i.i.i.i39 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i39)
  %tobool.i.not.i.i.i40 = icmp eq i32 %and.i.i.i.i39, 0
  br i1 %tobool.i.not.i.i.i40, label %sg_set_buf.exit48, label %do.body19.i.i.i42, !prof !210

do.body19.i.i.i42:                                ; preds = %do.body11.i.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !219
  unreachable

sg_set_buf.exit48:                                ; preds = %do.body11.i.i.i41
  %and.i43 = and i32 %20, 4095
  %and.i.i.i44 = and i32 %25, 3
  %or.i.i.i45 = or i32 %and.i.i.i44, %26
  %27 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i.i45, ptr %arrayidx4, align 4
  %offset1.i.i46 = getelementptr %struct.scatterlist, ptr %3, i32 %19, i32 1
  %28 = ptrtoint ptr %offset1.i.i46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i43, ptr %offset1.i.i46, align 4
  %length.i.i47 = getelementptr %struct.scatterlist, ptr %3, i32 %19, i32 2
  %29 = ptrtoint ptr %length.i.i47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %size, ptr %length.i.i47, align 4
  %30 = ptrtoint ptr %tx_sgl_pos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_sgl_pos, align 4
  %inc6 = add i32 %31, 1
  store i32 %inc6, ptr %tx_sgl_pos, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %sg_set_buf.exit48.if.end12_crit_edge

sg_set_buf.exit48.if.end12_crit_edge:             ; preds = %sg_set_buf.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %sg_set_buf.exit48
  %32 = getelementptr inbounds %struct.qcom_nand_controller, ptr %nandc, i32 0, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call = tail call fastcc i32 @prepare_bam_async_desc(ptr noundef %nandc, ptr noundef %34, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then8.if.end12_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %sg_set_buf.exit48.if.end12_crit_edge, %sg_set_buf.exit
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qpic_bam_dma_done(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_second_completion = getelementptr inbounds %struct.bam_transaction, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %wait_second_completion to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wait_second_completion, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %wait_second_completion to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %wait_second_completion, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %txn_done = getelementptr inbounds %struct.bam_transaction, ptr %data, i32 0, i32 12
  tail call void @complete(ptr noundef %txn_done) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_sync_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_nandc_read_cw_raw(ptr nocapture noundef readonly %mtd, ptr noundef %chip, ptr noundef %data_buf, ptr noundef %oob_buf, i32 noundef %page, i32 noundef %cw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %call3 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #12
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %2 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %use_ecc, align 4
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %7 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %steps, align 4
  %sub = add i32 %8, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %raw_cw.0 = phi i32 [ %sub, %if.then ], [ %cw, %entry.if.end_crit_edge ]
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.clear_bam_transaction.exit_crit_edge, label %if.end.i

if.end.clear_bam_transaction.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 1
  %14 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %15 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %18, 5
  tail call void @sg_init_table(ptr noundef %16, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_sgl.i, align 4
  %21 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %22, 3
  tail call void @sg_init_table(ptr noundef %20, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 12
  %23 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %if.end.clear_bam_transaction.exit_crit_edge
  %cw_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 3
  %24 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cw_size, align 4
  %mul = mul i32 %25, %cw
  %conv = trunc i32 %mul to i16
  %26 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %controller.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs1.i.i, align 4
  %addr0.i.i = getelementptr inbounds %struct.nandc_regs, ptr %29, i32 0, i32 1
  %shl.i = shl i32 %page, 16
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %30 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %options.i, align 8
  %32 = trunc i32 %31 to i16
  %33 = lshr i16 %32, 1
  %34 = and i16 %33, 1
  %spec.select.i = lshr i16 %conv, %34
  %conv3.i = zext i16 %spec.select.i to i32
  %or.i = or i32 %shl.i, %conv3.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %36 = ptrtoint ptr %addr0.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %addr0.i.i, align 4
  %37 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %regs1.i11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs1.i11.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %40, i32 0, i32 2
  %41 = shl i32 %page, 8
  %and5.i = and i32 %41, -16777216
  %42 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and5.i, ptr %addr1.i.i, align 4
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef 1, i1 noundef zeroext true, i32 noundef %raw_cw.0)
  tail call fastcc void @config_nand_page_read(ptr noundef %chip)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %43 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %writesize, align 4
  %45 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cw_size, align 4
  %steps5 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %47 = ptrtoint ptr %steps5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %steps5, align 4
  %sub6 = add i32 %48, -1
  %mul7 = mul i32 %sub6, %46
  %sub8 = sub i32 %44, %mul7
  %bbm_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 9
  %49 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bbm_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %cw)
  %cmp.i = icmp eq i32 %sub6, %cw
  br i1 %cmp.i, label %if.then10, label %if.else

if.then10:                                        ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 4
  %sub13.neg = mul i32 %48, -4
  %sub11 = add i32 %sub13.neg, 4
  %mul14.neg = sub i32 %sub11, %sub8
  %sub15 = add i32 %mul14.neg, %52
  %mul17 = shl i32 %48, 2
  %ecc_bytes_hw = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  %53 = ptrtoint ptr %ecc_bytes_hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ecc_bytes_hw, align 8
  %add = add i32 %54, %mul17
  %spare_bytes = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  br label %if.end23

if.else:                                          ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %55 = ptrtoint ptr %cw_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cw_data, align 8
  %sub19 = sub i32 %56, %sub8
  %ecc_bytes_hw20 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 7
  %spare_bytes21 = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 8
  %57 = ptrtoint ptr %spare_bytes21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %spare_bytes21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then10
  %.sink206.in = phi ptr [ %ecc_bytes_hw20, %if.else ], [ %spare_bytes, %if.then10 ]
  %.sink = phi i32 [ %58, %if.else ], [ %add, %if.then10 ]
  %data_size2.0 = phi i32 [ %sub19, %if.else ], [ %sub15, %if.then10 ]
  %59 = ptrtoint ptr %.sink206.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %.sink206 = load i32, ptr %.sink206.in, align 4
  %add22 = add i32 %.sink, %.sink206
  %60 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %props, align 4
  %is_bam = getelementptr inbounds %struct.qcom_nandc_props, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %is_bam to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_bam, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool25.not = icmp eq i8 %63, 0
  br i1 %tobool25.not, label %if.end23.if.end30_crit_edge, label %if.then26

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then26:                                        ; preds = %if.end23
  %64 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %controller.i, align 4
  %props.i126 = getelementptr inbounds %struct.qcom_nand_controller, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %props.i126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %props.i126, align 4
  %qpic_v2.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %qpic_v2.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %qpic_v2.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i127 = icmp ne i8 %69, 0
  %or.cond = select i1 %tobool.not.i127, i1 %cmp.i, i1 false
  %regs1.i.i129 = getelementptr inbounds %struct.qcom_nand_controller, ptr %65, i32 0, i32 19
  %70 = ptrtoint ptr %regs1.i.i129 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs1.i.i129, align 4
  br i1 %or.cond, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then26
  %call2.i.i = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %71, i32 noundef 3904) #12
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.then8.i.nandc_set_read_loc.exit_crit_edge, label %if.then8.i.cleanup.sink.split.i_crit_edge

if.then8.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then8.i.nandc_set_read_loc.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit

if.else.i:                                        ; preds = %if.then26
  %call2.i35.i = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %71, i32 noundef 3872) #12
  %tobool.not.i36.i = icmp eq ptr %call2.i35.i, null
  br i1 %tobool.not.i36.i, label %if.else.i.nandc_set_read_loc.exit_crit_edge, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else.i.nandc_set_read_loc.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then8.i.cleanup.sink.split.i_crit_edge
  %call2.i35.sink.i = phi ptr [ %call2.i.i, %if.then8.i.cleanup.sink.split.i_crit_edge ], [ %call2.i35.i, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %72 = tail call i32 @llvm.bswap.i32(i32 %sub8)
  %73 = lshr i32 %72, 16
  %74 = ptrtoint ptr %call2.i35.sink.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %call2.i35.sink.i, align 4
  br label %nandc_set_read_loc.exit

nandc_set_read_loc.exit:                          ; preds = %cleanup.sink.split.i, %if.else.i.nandc_set_read_loc.exit_crit_edge, %if.then8.i.nandc_set_read_loc.exit_crit_edge
  %75 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %controller.i, align 4
  %props.i131 = getelementptr inbounds %struct.qcom_nand_controller, ptr %76, i32 0, i32 22
  %77 = ptrtoint ptr %props.i131 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %props.i131, align 4
  %qpic_v2.i132 = getelementptr inbounds %struct.qcom_nandc_props, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %qpic_v2.i132 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %qpic_v2.i132, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i133 = icmp eq i8 %80, 0
  br i1 %tobool.not.i133, label %nandc_set_read_loc.exit.if.else.i148_crit_edge, label %land.lhs.true6.i139

nandc_set_read_loc.exit.if.else.i148_crit_edge:   ; preds = %nandc_set_read_loc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i148

land.lhs.true6.i139:                              ; preds = %nandc_set_read_loc.exit
  %81 = ptrtoint ptr %steps5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %steps5, align 4
  %sub.i.i136 = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i136, i32 %cw)
  %cmp.i.i137 = icmp eq i32 %sub.i.i136, %cw
  br i1 %cmp.i.i137, label %if.then8.i143, label %land.lhs.true6.i139.if.else.i148_crit_edge

land.lhs.true6.i139.if.else.i148_crit_edge:       ; preds = %land.lhs.true6.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i148

if.then8.i143:                                    ; preds = %land.lhs.true6.i139
  %regs1.i.i140 = getelementptr inbounds %struct.qcom_nand_controller, ptr %76, i32 0, i32 19
  %83 = ptrtoint ptr %regs1.i.i140 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs1.i.i140, align 4
  %call2.i.i141 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %84, i32 noundef 3908) #12
  %tobool.not.i.i142 = icmp eq ptr %call2.i.i141, null
  br i1 %tobool.not.i.i142, label %if.then8.i143.nandc_set_read_loc.exit152_crit_edge, label %if.then8.i143.cleanup.sink.split.i151_crit_edge

if.then8.i143.cleanup.sink.split.i151_crit_edge:  ; preds = %if.then8.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i151

if.then8.i143.nandc_set_read_loc.exit152_crit_edge: ; preds = %if.then8.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit152

if.else.i148:                                     ; preds = %land.lhs.true6.i139.if.else.i148_crit_edge, %nandc_set_read_loc.exit.if.else.i148_crit_edge
  %regs1.i34.i145 = getelementptr inbounds %struct.qcom_nand_controller, ptr %76, i32 0, i32 19
  %85 = ptrtoint ptr %regs1.i34.i145 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs1.i34.i145, align 4
  %call2.i35.i146 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %86, i32 noundef 3876) #12
  %tobool.not.i36.i147 = icmp eq ptr %call2.i35.i146, null
  br i1 %tobool.not.i36.i147, label %if.else.i148.nandc_set_read_loc.exit152_crit_edge, label %if.else.i148.cleanup.sink.split.i151_crit_edge

if.else.i148.cleanup.sink.split.i151_crit_edge:   ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i151

if.else.i148.nandc_set_read_loc.exit152_crit_edge: ; preds = %if.else.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit152

cleanup.sink.split.i151:                          ; preds = %if.else.i148.cleanup.sink.split.i151_crit_edge, %if.then8.i143.cleanup.sink.split.i151_crit_edge
  %call2.i35.sink.i149 = phi ptr [ %call2.i.i141, %if.then8.i143.cleanup.sink.split.i151_crit_edge ], [ %call2.i35.i146, %if.else.i148.cleanup.sink.split.i151_crit_edge ]
  %shl13.i150 = shl i32 %50, 16
  %or14.i = or i32 %sub8, %shl13.i150
  %87 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #12
  %88 = ptrtoint ptr %call2.i35.sink.i149 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %call2.i35.sink.i149, align 4
  br label %nandc_set_read_loc.exit152

nandc_set_read_loc.exit152:                       ; preds = %cleanup.sink.split.i151, %if.else.i148.nandc_set_read_loc.exit152_crit_edge, %if.then8.i143.nandc_set_read_loc.exit152_crit_edge
  %add28 = add i32 %sub8, %50
  %89 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %controller.i, align 4
  %props.i154 = getelementptr inbounds %struct.qcom_nand_controller, ptr %90, i32 0, i32 22
  %91 = ptrtoint ptr %props.i154 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %props.i154, align 4
  %qpic_v2.i155 = getelementptr inbounds %struct.qcom_nandc_props, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %qpic_v2.i155 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %qpic_v2.i155, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i156 = icmp eq i8 %94, 0
  br i1 %tobool.not.i156, label %nandc_set_read_loc.exit152.if.else.i172_crit_edge, label %land.lhs.true6.i163

nandc_set_read_loc.exit152.if.else.i172_crit_edge: ; preds = %nandc_set_read_loc.exit152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i172

land.lhs.true6.i163:                              ; preds = %nandc_set_read_loc.exit152
  %95 = ptrtoint ptr %steps5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %steps5, align 4
  %sub.i.i159 = add i32 %96, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i159, i32 %cw)
  %cmp.i.i160 = icmp eq i32 %sub.i.i159, %cw
  br i1 %cmp.i.i160, label %if.then8.i167, label %land.lhs.true6.i163.if.else.i172_crit_edge

land.lhs.true6.i163.if.else.i172_crit_edge:       ; preds = %land.lhs.true6.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i172

if.then8.i167:                                    ; preds = %land.lhs.true6.i163
  %regs1.i.i164 = getelementptr inbounds %struct.qcom_nand_controller, ptr %90, i32 0, i32 19
  %97 = ptrtoint ptr %regs1.i.i164 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs1.i.i164, align 4
  %call2.i.i165 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %98, i32 noundef 3912) #12
  %tobool.not.i.i166 = icmp eq ptr %call2.i.i165, null
  br i1 %tobool.not.i.i166, label %if.then8.i167.nandc_set_read_loc.exit177_crit_edge, label %if.then8.i167.cleanup.sink.split.i176_crit_edge

if.then8.i167.cleanup.sink.split.i176_crit_edge:  ; preds = %if.then8.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i176

if.then8.i167.nandc_set_read_loc.exit177_crit_edge: ; preds = %if.then8.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit177

if.else.i172:                                     ; preds = %land.lhs.true6.i163.if.else.i172_crit_edge, %nandc_set_read_loc.exit152.if.else.i172_crit_edge
  %regs1.i34.i169 = getelementptr inbounds %struct.qcom_nand_controller, ptr %90, i32 0, i32 19
  %99 = ptrtoint ptr %regs1.i34.i169 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs1.i34.i169, align 4
  %call2.i35.i170 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %100, i32 noundef 3880) #12
  %tobool.not.i36.i171 = icmp eq ptr %call2.i35.i170, null
  br i1 %tobool.not.i36.i171, label %if.else.i172.nandc_set_read_loc.exit177_crit_edge, label %if.else.i172.cleanup.sink.split.i176_crit_edge

if.else.i172.cleanup.sink.split.i176_crit_edge:   ; preds = %if.else.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i176

if.else.i172.nandc_set_read_loc.exit177_crit_edge: ; preds = %if.else.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit177

cleanup.sink.split.i176:                          ; preds = %if.else.i172.cleanup.sink.split.i176_crit_edge, %if.then8.i167.cleanup.sink.split.i176_crit_edge
  %call2.i35.sink.i173 = phi ptr [ %call2.i.i165, %if.then8.i167.cleanup.sink.split.i176_crit_edge ], [ %call2.i35.i170, %if.else.i172.cleanup.sink.split.i176_crit_edge ]
  %shl13.i174 = shl i32 %data_size2.0, 16
  %or14.i175 = or i32 %shl13.i174, %add28
  %101 = tail call i32 @llvm.bswap.i32(i32 %or14.i175) #12
  %102 = ptrtoint ptr %call2.i35.sink.i173 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %call2.i35.sink.i173, align 4
  br label %nandc_set_read_loc.exit177

nandc_set_read_loc.exit177:                       ; preds = %cleanup.sink.split.i176, %if.else.i172.nandc_set_read_loc.exit177_crit_edge, %if.then8.i167.nandc_set_read_loc.exit177_crit_edge
  %add29 = add i32 %data_size2.0, %add28
  %103 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %controller.i, align 4
  %props.i179 = getelementptr inbounds %struct.qcom_nand_controller, ptr %104, i32 0, i32 22
  %105 = ptrtoint ptr %props.i179 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %props.i179, align 4
  %qpic_v2.i180 = getelementptr inbounds %struct.qcom_nandc_props, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %qpic_v2.i180 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %qpic_v2.i180, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i181 = icmp eq i8 %108, 0
  br i1 %tobool.not.i181, label %nandc_set_read_loc.exit177.if.else.i197_crit_edge, label %land.lhs.true6.i188

nandc_set_read_loc.exit177.if.else.i197_crit_edge: ; preds = %nandc_set_read_loc.exit177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i197

land.lhs.true6.i188:                              ; preds = %nandc_set_read_loc.exit177
  %109 = ptrtoint ptr %steps5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %steps5, align 4
  %sub.i.i184 = add i32 %110, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i184, i32 %cw)
  %cmp.i.i185 = icmp eq i32 %sub.i.i184, %cw
  br i1 %cmp.i.i185, label %if.then8.i192, label %land.lhs.true6.i188.if.else.i197_crit_edge

land.lhs.true6.i188.if.else.i197_crit_edge:       ; preds = %land.lhs.true6.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i197

if.then8.i192:                                    ; preds = %land.lhs.true6.i188
  %regs1.i.i189 = getelementptr inbounds %struct.qcom_nand_controller, ptr %104, i32 0, i32 19
  %111 = ptrtoint ptr %regs1.i.i189 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs1.i.i189, align 4
  %call2.i.i190 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %112, i32 noundef 3916) #12
  %tobool.not.i.i191 = icmp eq ptr %call2.i.i190, null
  br i1 %tobool.not.i.i191, label %if.then8.i192.if.end30_crit_edge, label %if.then8.i192.cleanup.sink.split.i201_crit_edge

if.then8.i192.cleanup.sink.split.i201_crit_edge:  ; preds = %if.then8.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i201

if.then8.i192.if.end30_crit_edge:                 ; preds = %if.then8.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else.i197:                                     ; preds = %land.lhs.true6.i188.if.else.i197_crit_edge, %nandc_set_read_loc.exit177.if.else.i197_crit_edge
  %regs1.i34.i194 = getelementptr inbounds %struct.qcom_nand_controller, ptr %104, i32 0, i32 19
  %113 = ptrtoint ptr %regs1.i34.i194 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs1.i34.i194, align 4
  %call2.i35.i195 = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %114, i32 noundef 3884) #12
  %tobool.not.i36.i196 = icmp eq ptr %call2.i35.i195, null
  br i1 %tobool.not.i36.i196, label %if.else.i197.if.end30_crit_edge, label %if.else.i197.cleanup.sink.split.i201_crit_edge

if.else.i197.cleanup.sink.split.i201_crit_edge:   ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i201

if.else.i197.if.end30_crit_edge:                  ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

cleanup.sink.split.i201:                          ; preds = %if.else.i197.cleanup.sink.split.i201_crit_edge, %if.then8.i192.cleanup.sink.split.i201_crit_edge
  %call2.i35.sink.i198 = phi ptr [ %call2.i.i190, %if.then8.i192.cleanup.sink.split.i201_crit_edge ], [ %call2.i35.i195, %if.else.i197.cleanup.sink.split.i201_crit_edge ]
  %shl13.i199 = shl i32 %add22, 16
  %or14.i200 = or i32 %add29, %shl13.i199
  %or16.i = or i32 %or14.i200, -2147483648
  %115 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #12
  %116 = ptrtoint ptr %call2.i35.sink.i198 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %call2.i35.sink.i198, align 4
  br label %if.end30

if.end30:                                         ; preds = %cleanup.sink.split.i201, %if.else.i197.if.end30_crit_edge, %if.then8.i192.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  tail call fastcc void @config_nand_cw_read(ptr noundef %chip, i1 noundef zeroext false, i32 noundef %raw_cw.0)
  tail call fastcc void @read_data_dma(ptr noundef %1, i32 noundef 256, ptr noundef %data_buf, i32 noundef %sub8)
  %add32 = add i32 %sub8, 256
  tail call fastcc void @read_data_dma(ptr noundef %1, i32 noundef %add32, ptr noundef %oob_buf, i32 noundef %50)
  %add34 = add i32 %add32, %50
  %add.ptr = getelementptr i8, ptr %data_buf, i32 %sub8
  tail call fastcc void @read_data_dma(ptr noundef %1, i32 noundef %add34, ptr noundef %add.ptr, i32 noundef %data_size2.0)
  %add36 = add i32 %data_size2.0, %add34
  %add.ptr37 = getelementptr i8, ptr %oob_buf, i32 %50
  tail call fastcc void @read_data_dma(ptr noundef %1, i32 noundef %add36, ptr noundef %add.ptr37, i32 noundef %add22)
  %call39 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  tail call fastcc void @free_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.end

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.51, i32 noundef %cw) #15
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  %119 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %controller.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %120, i32 0, i32 22
  %121 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i.i204 = icmp eq i8 %124, 0
  br i1 %tobool.not.i.i204, label %if.end42.check_flash_errors.exit_crit_edge, label %if.end.i.i

if.end42.check_flash_errors.exit_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_flash_errors.exit

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %120, i32 0, i32 2
  %125 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %120, i32 0, i32 17
  %127 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %126, i32 noundef %128, i32 noundef 192, i32 noundef 2) #12
  br label %check_flash_errors.exit

check_flash_errors.exit:                          ; preds = %if.end.i.i, %if.end42.check_flash_errors.exit_crit_edge
  %reg_read_buf.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %120, i32 0, i32 16
  %129 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_read_buf.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %133 = and i32 %132, 268500992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i205 = icmp eq i32 %133, 0
  %retval.2.i = select i1 %tobool.not.i205, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %check_flash_errors.exit, %do.end
  %retval.0 = phi i32 [ %call39, %do.end ], [ %retval.2.i, %check_flash_errors.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @update_rw_regs(ptr noundef readonly %host, i32 noundef %num_cw, i1 noundef zeroext %read, i32 noundef %cw) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  br i1 %read, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %use_ecc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_ecc, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %. = select i1 %tobool2.not, i32 838860800, i32 855638016
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %cmd.0 = phi i32 [ %., %if.then ], [ 905969664, %entry.if.end5_crit_edge ]
  %use_ecc6 = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 5
  %4 = ptrtoint ptr %use_ecc6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_ecc6, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.else12, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %cfg09 = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 12
  %6 = ptrtoint ptr %cfg09 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg09, align 4
  %and = and i32 %7, -449
  %sub = shl i32 %num_cw, 6
  %shl = add i32 %sub, -64
  %or = or i32 %and, %shl
  %cfg110 = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 13
  %ecc_bch_cfg11 = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 17
  %8 = ptrtoint ptr %ecc_bch_cfg11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_bch_cfg11, align 8
  br label %if.end17

if.else12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %cfg0_raw = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 14
  %10 = ptrtoint ptr %cfg0_raw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfg0_raw, align 4
  %and13 = and i32 %11, -449
  %sub14 = shl i32 %num_cw, 6
  %shl15 = add i32 %sub14, -64
  %or16 = or i32 %and13, %shl15
  %cfg1_raw = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 15
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.then8
  %cfg0.0 = phi i32 [ %or, %if.then8 ], [ %or16, %if.else12 ]
  %cfg1.0.in = phi ptr [ %cfg110, %if.then8 ], [ %cfg1_raw, %if.else12 ]
  %ecc_bch_cfg.0 = phi i32 [ %9, %if.then8 ], [ 1, %if.else12 ]
  %12 = ptrtoint ptr %cfg1.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cfg1.0 = load i32, ptr %cfg1.0.in, align 8
  %regs1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end17.nandc_set_reg.exit_crit_edge, label %if.then.i

if.end17.nandc_set_reg.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cmd.0, ptr %14, align 4
  br label %nandc_set_reg.exit

nandc_set_reg.exit:                               ; preds = %if.then.i, %if.end17.nandc_set_reg.exit_crit_edge
  %16 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller.i, align 4
  %regs1.i51 = getelementptr inbounds %struct.qcom_nand_controller, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %regs1.i51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs1.i51, align 4
  %cfg0.i = getelementptr inbounds %struct.nandc_regs, ptr %19, i32 0, i32 5
  %tobool.not.i53 = icmp eq ptr %cfg0.i, null
  br i1 %tobool.not.i53, label %nandc_set_reg.exit.nandc_set_reg.exit55_crit_edge, label %if.then.i54

nandc_set_reg.exit.nandc_set_reg.exit55_crit_edge: ; preds = %nandc_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit55

if.then.i54:                                      ; preds = %nandc_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.bswap.i32(i32 %cfg0.0) #12
  %21 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cfg0.i, align 4
  br label %nandc_set_reg.exit55

nandc_set_reg.exit55:                             ; preds = %if.then.i54, %nandc_set_reg.exit.nandc_set_reg.exit55_crit_edge
  %22 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller.i, align 4
  %regs1.i57 = getelementptr inbounds %struct.qcom_nand_controller, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %regs1.i57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i57, align 4
  %cfg1.i = getelementptr inbounds %struct.nandc_regs, ptr %25, i32 0, i32 6
  %tobool.not.i59 = icmp eq ptr %cfg1.i, null
  br i1 %tobool.not.i59, label %nandc_set_reg.exit55.nandc_set_reg.exit61_crit_edge, label %if.then.i60

nandc_set_reg.exit55.nandc_set_reg.exit61_crit_edge: ; preds = %nandc_set_reg.exit55
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit61

if.then.i60:                                      ; preds = %nandc_set_reg.exit55
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %cfg1.0) #12
  %27 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cfg1.i, align 4
  br label %nandc_set_reg.exit61

nandc_set_reg.exit61:                             ; preds = %if.then.i60, %nandc_set_reg.exit55.nandc_set_reg.exit61_crit_edge
  %28 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controller.i, align 4
  %regs1.i63 = getelementptr inbounds %struct.qcom_nand_controller, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %regs1.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1.i63, align 4
  %ecc_bch_cfg.i = getelementptr inbounds %struct.nandc_regs, ptr %31, i32 0, i32 7
  %tobool.not.i65 = icmp eq ptr %ecc_bch_cfg.i, null
  br i1 %tobool.not.i65, label %nandc_set_reg.exit61.nandc_set_reg.exit67_crit_edge, label %if.then.i66

nandc_set_reg.exit61.nandc_set_reg.exit67_crit_edge: ; preds = %nandc_set_reg.exit61
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit67

if.then.i66:                                      ; preds = %nandc_set_reg.exit61
  call void @__sanitizer_cov_trace_pc() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %ecc_bch_cfg.0) #12
  %33 = ptrtoint ptr %ecc_bch_cfg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ecc_bch_cfg.i, align 4
  br label %nandc_set_reg.exit67

nandc_set_reg.exit67:                             ; preds = %if.then.i66, %nandc_set_reg.exit61.nandc_set_reg.exit67_crit_edge
  %props = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %34 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %props, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool18.not = icmp eq i8 %37, 0
  br i1 %tobool18.not, label %if.then19, label %nandc_set_reg.exit67.if.end20_crit_edge

nandc_set_reg.exit67.if.end20_crit_edge:          ; preds = %nandc_set_reg.exit67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %nandc_set_reg.exit67
  %38 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %controller.i, align 4
  %regs1.i69 = getelementptr inbounds %struct.qcom_nand_controller, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %regs1.i69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs1.i69, align 4
  %ecc_buf_cfg.i = getelementptr inbounds %struct.nandc_regs, ptr %41, i32 0, i32 14
  %tobool.not.i71 = icmp eq ptr %ecc_buf_cfg.i, null
  br i1 %tobool.not.i71, label %if.then19.if.end20_crit_edge, label %if.then.i72

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then.i72:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_buf_cfg = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 16
  %42 = ptrtoint ptr %ecc_buf_cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ecc_buf_cfg, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  %45 = ptrtoint ptr %ecc_buf_cfg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ecc_buf_cfg.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then.i72, %if.then19.if.end20_crit_edge, %nandc_set_reg.exit67.if.end20_crit_edge
  %46 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller.i, align 4
  %regs1.i75 = getelementptr inbounds %struct.qcom_nand_controller, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %regs1.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs1.i75, align 4
  %clrflashstatus.i = getelementptr inbounds %struct.nandc_regs, ptr %49, i32 0, i32 8
  %tobool.not.i77 = icmp eq ptr %clrflashstatus.i, null
  br i1 %tobool.not.i77, label %if.end20.nandc_set_reg.exit79_crit_edge, label %if.then.i78

if.end20.nandc_set_reg.exit79_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit79

if.then.i78:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %clrflashstatus = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 18
  %50 = ptrtoint ptr %clrflashstatus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %clrflashstatus, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %53 = ptrtoint ptr %clrflashstatus.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %clrflashstatus.i, align 4
  br label %nandc_set_reg.exit79

nandc_set_reg.exit79:                             ; preds = %if.then.i78, %if.end20.nandc_set_reg.exit79_crit_edge
  %54 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %controller.i, align 4
  %regs1.i81 = getelementptr inbounds %struct.qcom_nand_controller, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %regs1.i81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs1.i81, align 4
  %clrreadstatus.i = getelementptr inbounds %struct.nandc_regs, ptr %57, i32 0, i32 9
  %tobool.not.i83 = icmp eq ptr %clrreadstatus.i, null
  br i1 %tobool.not.i83, label %nandc_set_reg.exit79.nandc_set_reg.exit85_crit_edge, label %if.then.i84

nandc_set_reg.exit79.nandc_set_reg.exit85_crit_edge: ; preds = %nandc_set_reg.exit79
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit85

if.then.i84:                                      ; preds = %nandc_set_reg.exit79
  call void @__sanitizer_cov_trace_pc() #14
  %clrreadstatus = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 19
  %58 = ptrtoint ptr %clrreadstatus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clrreadstatus, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  %61 = ptrtoint ptr %clrreadstatus.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %clrreadstatus.i, align 4
  br label %nandc_set_reg.exit85

nandc_set_reg.exit85:                             ; preds = %if.then.i84, %nandc_set_reg.exit79.nandc_set_reg.exit85_crit_edge
  %62 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %controller.i, align 4
  %regs1.i87 = getelementptr inbounds %struct.qcom_nand_controller, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %regs1.i87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1.i87, align 4
  %exec.i = getelementptr inbounds %struct.nandc_regs, ptr %65, i32 0, i32 4
  %tobool.not.i89 = icmp eq ptr %exec.i, null
  br i1 %tobool.not.i89, label %nandc_set_reg.exit85.nandc_set_reg.exit91_crit_edge, label %if.then.i90

nandc_set_reg.exit85.nandc_set_reg.exit91_crit_edge: ; preds = %nandc_set_reg.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit91

if.then.i90:                                      ; preds = %nandc_set_reg.exit85
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %exec.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16777216, ptr %exec.i, align 4
  br label %nandc_set_reg.exit91

nandc_set_reg.exit91:                             ; preds = %if.then.i90, %nandc_set_reg.exit85.nandc_set_reg.exit91_crit_edge
  br i1 %read, label %if.then22, label %nandc_set_reg.exit91.if.end25_crit_edge

nandc_set_reg.exit91.if.end25_crit_edge:          ; preds = %nandc_set_reg.exit91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %nandc_set_reg.exit91
  %67 = ptrtoint ptr %use_ecc6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %use_ecc6, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool24.not = icmp eq i8 %68, 0
  %cw_data = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 4
  %cw_size = getelementptr inbounds %struct.qcom_nand_host, ptr %host, i32 0, i32 3
  %cond.in = select i1 %tobool24.not, ptr %cw_size, ptr %cw_data
  %69 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %69)
  %cond = load i32, ptr %cond.in, align 4
  %70 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %controller.i, align 4
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %71, i32 0, i32 22
  %72 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %props.i, align 4
  %qpic_v2.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %qpic_v2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %qpic_v2.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i93 = icmp eq i8 %75, 0
  br i1 %tobool.not.i93, label %if.then22.if.else.i_crit_edge, label %land.lhs.true6.i

if.then22.if.else.i_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %if.then22
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %host, i32 0, i32 33, i32 3
  %76 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %steps.i.i, align 4
  %sub.i.i = add i32 %77, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %cw)
  %cmp.i.i = icmp eq i32 %sub.i.i, %cw
  br i1 %cmp.i.i, label %if.then8.i, label %land.lhs.true6.i.if.else.i_crit_edge

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  %regs1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %71, i32 0, i32 19
  %78 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs1.i.i, align 4
  %call2.i.i = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %79, i32 noundef 3904) #12
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.then8.i.if.end25_crit_edge, label %if.then8.i.cleanup.sink.split.i_crit_edge

if.then8.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then8.i.if.end25_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %if.then22.if.else.i_crit_edge
  %regs1.i34.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %71, i32 0, i32 19
  %80 = ptrtoint ptr %regs1.i34.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs1.i34.i, align 4
  %call2.i35.i = tail call fastcc ptr @offset_to_nandc_reg(ptr noundef %81, i32 noundef 3872) #12
  %tobool.not.i36.i = icmp eq ptr %call2.i35.i, null
  br i1 %tobool.not.i36.i, label %if.else.i.if.end25_crit_edge, label %if.else.i.cleanup.sink.split.i_crit_edge

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else.i.if.end25_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then8.i.cleanup.sink.split.i_crit_edge
  %call2.i35.sink.i = phi ptr [ %call2.i.i, %if.then8.i.cleanup.sink.split.i_crit_edge ], [ %call2.i35.i, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %shl13.i = shl i32 %cond, 16
  %or16.i = or i32 %shl13.i, -2147483648
  %82 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #12
  %83 = ptrtoint ptr %call2.i35.sink.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %call2.i35.sink.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %cleanup.sink.split.i, %if.else.i.if.end25_crit_edge, %if.then8.i.if.end25_crit_edge, %nandc_set_reg.exit91.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_nand_page_write(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %regs1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %addr0.i = getelementptr inbounds %struct.nandc_regs, ptr %3, i32 0, i32 1
  %props19.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props19.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not.i = icmp eq i8 %7, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bam_txn1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bam_ce_pos.i, align 4
  %arrayidx.i = getelementptr %struct.bam_cmd_element, ptr %11, i32 %13
  %base_phys6.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_phys6.i, align 4
  %add3.i = add i32 %15, 4
  %16 = ptrtoint ptr %addr0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr0.i, align 4
  %and.i.i = and i32 %add3.i, 16777215
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i, align 4
  %data2.i.i.i = getelementptr %struct.bam_cmd_element, ptr %11, i32 %13, i32 1
  %20 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %data2.i.i.i, align 4
  %mask.i.i.i = getelementptr %struct.bam_cmd_element, ptr %11, i32 %13, i32 2
  %21 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %mask.i.i.i, align 4
  %arrayidx2.i.1 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i, i32 1
  %22 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_phys6.i, align 4
  %add3.i.1 = add i32 %23, 8
  %add.ptr10.i.1 = getelementptr %struct.nandc_regs, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %add.ptr10.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr10.i.1, align 4
  %and.i.i.1 = and i32 %add3.i.1, 16777215
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.1) #12
  %27 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i.1, align 4
  %data2.i.i.i.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i.1, i32 0, i32 1
  %28 = ptrtoint ptr %data2.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %data2.i.i.i.1, align 4
  %mask.i.i.i.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i.1, i32 0, i32 2
  %29 = ptrtoint ptr %mask.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %mask.i.i.i.1, align 4
  %30 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bam_ce_pos.i, align 4
  %add12.i = add i32 %31, 2
  store i32 %add12.i, ptr %bam_ce_pos.i, align 4
  br label %write_reg_dma.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 4, ptr noundef %addr0.i, i32 noundef 8, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit

write_reg_dma.exit:                               ; preds = %if.end23.i, %if.then21.i
  %32 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs1.i, align 4
  %cfg0.i = getelementptr inbounds %struct.nandc_regs, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %props19.i, align 4
  %is_bam.i10 = getelementptr inbounds %struct.qcom_nandc_props, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %is_bam.i10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_bam.i10, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool20.not.i11 = icmp eq i8 %37, 0
  br i1 %tobool20.not.i11, label %if.end23.i16, label %if.then21.i13

if.then21.i13:                                    ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i29 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %bam_txn1.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bam_txn1.i29, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %bam_ce_pos.i30 = getelementptr inbounds %struct.bam_transaction, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %bam_ce_pos.i30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bam_ce_pos.i30, align 4
  %arrayidx.i31 = getelementptr %struct.bam_cmd_element, ptr %41, i32 %43
  %base_phys6.i32 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %base_phys6.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_phys6.i32, align 4
  %add3.i39 = add i32 %45, 32
  %46 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cfg0.i, align 4
  %and.i.i42 = and i32 %add3.i39, 16777215
  %48 = tail call i32 @llvm.bswap.i32(i32 %and.i.i42) #12
  %49 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx.i31, align 4
  %data2.i.i.i43 = getelementptr %struct.bam_cmd_element, ptr %41, i32 %43, i32 1
  %50 = ptrtoint ptr %data2.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %data2.i.i.i43, align 4
  %mask.i.i.i44 = getelementptr %struct.bam_cmd_element, ptr %41, i32 %43, i32 2
  %51 = ptrtoint ptr %mask.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %mask.i.i.i44, align 4
  %arrayidx2.i36.1 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i31, i32 1
  %52 = ptrtoint ptr %base_phys6.i32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base_phys6.i32, align 4
  %add3.i39.1 = add i32 %53, 36
  %add.ptr10.i41.1 = getelementptr %struct.nandc_regs, ptr %33, i32 0, i32 6
  %54 = ptrtoint ptr %add.ptr10.i41.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr10.i41.1, align 4
  %and.i.i42.1 = and i32 %add3.i39.1, 16777215
  %56 = tail call i32 @llvm.bswap.i32(i32 %and.i.i42.1) #12
  %57 = ptrtoint ptr %arrayidx2.i36.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx2.i36.1, align 4
  %data2.i.i.i43.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i36.1, i32 0, i32 1
  %58 = ptrtoint ptr %data2.i.i.i43.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %data2.i.i.i43.1, align 4
  %mask.i.i.i44.1 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i36.1, i32 0, i32 2
  %59 = ptrtoint ptr %mask.i.i.i44.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %mask.i.i.i44.1, align 4
  %arrayidx2.i36.2 = getelementptr %struct.bam_cmd_element, ptr %arrayidx.i31, i32 2
  %60 = ptrtoint ptr %base_phys6.i32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %base_phys6.i32, align 4
  %add3.i39.2 = add i32 %61, 40
  %add.ptr10.i41.2 = getelementptr %struct.nandc_regs, ptr %33, i32 0, i32 7
  %62 = ptrtoint ptr %add.ptr10.i41.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr10.i41.2, align 4
  %and.i.i42.2 = and i32 %add3.i39.2, 16777215
  %64 = tail call i32 @llvm.bswap.i32(i32 %and.i.i42.2) #12
  %65 = ptrtoint ptr %arrayidx2.i36.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx2.i36.2, align 4
  %data2.i.i.i43.2 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i36.2, i32 0, i32 1
  %66 = ptrtoint ptr %data2.i.i.i43.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %data2.i.i.i43.2, align 4
  %mask.i.i.i44.2 = getelementptr inbounds %struct.bam_cmd_element, ptr %arrayidx2.i36.2, i32 0, i32 2
  %67 = ptrtoint ptr %mask.i.i.i44.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %mask.i.i.i44.2, align 4
  %68 = ptrtoint ptr %bam_ce_pos.i30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bam_ce_pos.i30, align 4
  %add12.i47 = add i32 %69, 3
  store i32 %add12.i47, ptr %bam_ce_pos.i30, align 4
  br label %write_reg_dma.exit17

if.end23.i16:                                     ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i15 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 32, ptr noundef %cfg0.i, i32 noundef 12, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit17

write_reg_dma.exit17:                             ; preds = %if.end23.i16, %if.then21.i13
  %70 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %props19.i, align 4
  %qpic_v2 = getelementptr inbounds %struct.qcom_nandc_props, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %qpic_v2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %qpic_v2, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not = icmp eq i8 %73, 0
  br i1 %tobool.not, label %if.then, label %write_reg_dma.exit17.if.end_crit_edge

write_reg_dma.exit17.if.end_crit_edge:            ; preds = %write_reg_dma.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %write_reg_dma.exit17
  %74 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs1.i, align 4
  %ecc_buf_cfg.i = getelementptr inbounds %struct.nandc_regs, ptr %75, i32 0, i32 14
  %is_bam.i21 = getelementptr inbounds %struct.qcom_nandc_props, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %is_bam.i21 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %is_bam.i21, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool20.not.i22 = icmp eq i8 %77, 0
  br i1 %tobool20.not.i22, label %if.end23.i27, label %if.then21.i24

if.then21.i24:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i23 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 240, ptr noundef %ecc_buf_cfg.i, i32 noundef 1, i32 noundef 4) #12
  br label %if.end

if.end23.i27:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i26 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 240, ptr noundef %ecc_buf_cfg.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.end23.i27, %if.then21.i24, %write_reg_dma.exit17.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_nand_cw_write(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %regs1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1.i, align 4
  %props19.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %props19.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not.i = icmp eq i8 %7, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0, ptr noundef %3, i32 noundef 1, i32 noundef 4) #12
  br label %write_reg_dma.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0, ptr noundef %3, i32 noundef 4, i1 noundef zeroext true) #12
  br label %write_reg_dma.exit

write_reg_dma.exit:                               ; preds = %if.end23.i, %if.then21.i
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1.i, align 4
  %exec.i = getelementptr inbounds %struct.nandc_regs, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %props19.i, align 4
  %is_bam.i13 = getelementptr inbounds %struct.qcom_nandc_props, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %is_bam.i13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_bam.i13, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not.i14 = icmp eq i8 %13, 0
  br i1 %tobool20.not.i14, label %if.end23.i19, label %if.then21.i16

if.then21.i16:                                    ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i15 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i, i32 noundef 1, i32 noundef 6) #12
  br label %write_reg_dma.exit20

if.end23.i19:                                     ; preds = %write_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i18 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit20

write_reg_dma.exit20:                             ; preds = %if.end23.i19, %if.then21.i16
  %reg_read_buf.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_read_buf.i, align 4
  %reg_read_pos.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_read_pos.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 %17
  %add.i = add i32 %17, 1
  store i32 %add.i, ptr %reg_read_pos.i, align 4
  %18 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %props19.i, align 4
  %is_bam.i21 = getelementptr inbounds %struct.qcom_nandc_props, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %is_bam.i21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_bam.i21, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %write_reg_dma.exit20
  call void @__sanitizer_cov_trace_pc() #14
  %call.i22 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 4) #12
  br label %read_reg_dma.exit

if.end6.i:                                        ; preds = %write_reg_dma.exit20
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i, i32 noundef 4, i1 noundef zeroext true) #12
  br label %read_reg_dma.exit

read_reg_dma.exit:                                ; preds = %if.end6.i, %if.then5.i
  %22 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs1.i, align 4
  %clrflashstatus.i = getelementptr inbounds %struct.nandc_regs, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %props19.i, align 4
  %is_bam.i26 = getelementptr inbounds %struct.qcom_nandc_props, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %is_bam.i26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_bam.i26, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool20.not.i27 = icmp eq i8 %27, 0
  br i1 %tobool20.not.i27, label %if.end23.i32, label %if.then21.i29

if.then21.i29:                                    ; preds = %read_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bam_txn1.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bam_ce_pos.i, align 4
  %arrayidx.i = getelementptr %struct.bam_cmd_element, ptr %31, i32 %33
  %base_phys6.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %base_phys6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base_phys6.i, align 4
  %add3.i = add i32 %35, 20
  %36 = ptrtoint ptr %clrflashstatus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clrflashstatus.i, align 4
  %and.i.i = and i32 %add3.i, 16777215
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i, align 4
  %data2.i.i.i = getelementptr %struct.bam_cmd_element, ptr %31, i32 %33, i32 1
  %40 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %data2.i.i.i, align 4
  %mask.i.i.i = getelementptr %struct.bam_cmd_element, ptr %31, i32 %33, i32 2
  %41 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %mask.i.i.i, align 4
  %42 = ptrtoint ptr %bam_ce_pos.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bam_ce_pos.i, align 4
  %add12.i = add i32 %43, 1
  store i32 %add12.i, ptr %bam_ce_pos.i, align 4
  br label %write_reg_dma.exit33

if.end23.i32:                                     ; preds = %read_reg_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i31 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 20, ptr noundef %clrflashstatus.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit33

write_reg_dma.exit33:                             ; preds = %if.end23.i32, %if.then21.i29
  %44 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs1.i, align 4
  %clrreadstatus.i = getelementptr inbounds %struct.nandc_regs, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %props19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %props19.i, align 4
  %is_bam.i37 = getelementptr inbounds %struct.qcom_nandc_props, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %is_bam.i37 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_bam.i37, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not.i38 = icmp eq i8 %49, 0
  br i1 %tobool20.not.i38, label %if.end23.i43, label %if.then21.i40

if.then21.i40:                                    ; preds = %write_reg_dma.exit33
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i39 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %1, i1 noundef zeroext false, i32 noundef 68, ptr noundef %clrreadstatus.i, i32 noundef 1, i32 noundef 4) #12
  br label %write_reg_dma.exit44

if.end23.i43:                                     ; preds = %write_reg_dma.exit33
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i42 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 68, ptr noundef %clrreadstatus.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit44

write_reg_dma.exit44:                             ; preds = %if.end23.i43, %if.then21.i40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_nand_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  %sub = add i32 %3, -1
  %mul = mul i32 %sub, %1
  %bbm_size = getelementptr inbounds %struct.qcom_nand_host, ptr %mtd, i32 0, i32 9
  %4 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bbm_size, align 8
  %add = add i32 %mul, %5
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %length, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_bytes_hw = getelementptr inbounds %struct.qcom_nand_host, ptr %mtd, i32 0, i32 7
  %7 = ptrtoint ptr %ecc_bytes_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ecc_bytes_hw, align 8
  %spare_bytes = getelementptr inbounds %struct.qcom_nand_host, ptr %mtd, i32 0, i32 8
  %9 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spare_bytes, align 4
  %add4 = add i32 %10, %8
  %length5 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %11 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add4, ptr %length5, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %sub7 = sub i32 %13, %add4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %storemerge = phi i32 [ 0, %if.then3 ], [ %sub7, %if.else ]
  %14 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_nand_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  %mul = shl i32 %1, 2
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %length, align 4
  %3 = load i32, ptr %steps, align 4
  %sub = add i32 %3, -1
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes, align 4
  %mul4 = mul i32 %sub, %5
  %bbm_size = getelementptr inbounds %struct.qcom_nand_host, ptr %mtd, i32 0, i32 9
  %6 = ptrtoint ptr %bbm_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bbm_size, align 8
  %add = add i32 %mul4, %7
  %8 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_nandc_command(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %buf_count.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf_count.i, align 4
  %buf_start.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %buf_start.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf_start.i, align 4
  %use_ecc.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %use_ecc.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %use_ecc.i, align 4
  %last_command.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %last_command.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %command, ptr %last_command.i, align 8
  %reg_read_pos.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %reg_read_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reg_read_pos.i.i, align 4
  %props.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %props.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %props.i.i.i, align 4
  %is_bam.i.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %is_bam.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_bam.i.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i, label %entry.clear_read_regs.exit.i_crit_edge, label %if.end.i.i.i

entry.clear_read_regs.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_read_regs.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i.i, align 4
  %reg_read_dma.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %reg_read_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_read_dma.i.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %14, i32 noundef 192, i32 noundef 2) #12
  br label %clear_read_regs.exit.i

clear_read_regs.exit.i:                           ; preds = %if.end.i.i.i, %entry.clear_read_regs.exit.i_crit_edge
  %15 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %command, label %clear_read_regs.exit.i.if.end78_crit_edge [
    i32 255, label %clear_read_regs.exit.i.if.then.i_crit_edge
    i32 144, label %clear_read_regs.exit.i.if.then.i_crit_edge232
    i32 236, label %clear_read_regs.exit.i.if.then.i_crit_edge233
    i32 96, label %clear_read_regs.exit.i.if.then.i_crit_edge234
    i32 0, label %sw.bb10
    i32 128, label %clear_read_regs.exit.i.sw.bb29_crit_edge
  ]

clear_read_regs.exit.i.sw.bb29_crit_edge:         ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

clear_read_regs.exit.i.if.then.i_crit_edge234:    ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

clear_read_regs.exit.i.if.then.i_crit_edge233:    ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

clear_read_regs.exit.i.if.then.i_crit_edge232:    ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

clear_read_regs.exit.i.if.then.i_crit_edge:       ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

clear_read_regs.exit.i.if.end78_crit_edge:        ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then.i:                                        ; preds = %clear_read_regs.exit.i.if.then.i_crit_edge, %clear_read_regs.exit.i.if.then.i_crit_edge232, %clear_read_regs.exit.i.if.then.i_crit_edge233, %clear_read_regs.exit.i.if.then.i_crit_edge234
  %16 = ptrtoint ptr %props.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %props.i.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.then.i.pre_command.exit_crit_edge, label %if.end.i.i

if.then.i.pre_command.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pre_command.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %bam_txn1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bam_txn1.i.i, align 4
  %bam_ce_pos.i.i = getelementptr inbounds %struct.bam_transaction, ptr %21, i32 0, i32 3
  %last_data_desc.i.i = getelementptr inbounds %struct.bam_transaction, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %last_data_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %last_data_desc.i.i, align 4
  %cmd_sgl.i.i = getelementptr inbounds %struct.bam_transaction, ptr %21, i32 0, i32 1
  %23 = call ptr @memset(ptr %bam_ce_pos.i.i, i32 0, i32 33)
  %24 = ptrtoint ptr %cmd_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_sgl.i.i, align 4
  %max_cwperpage.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %max_cwperpage.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_cwperpage.i.i, align 4
  %mul.i.i = shl i32 %27, 5
  tail call void @sg_init_table(ptr noundef %25, i32 noundef %mul.i.i) #12
  %data_sgl.i.i = getelementptr inbounds %struct.bam_transaction, ptr %21, i32 0, i32 2
  %28 = ptrtoint ptr %data_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_sgl.i.i, align 4
  %30 = ptrtoint ptr %max_cwperpage.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_cwperpage.i.i, align 4
  %mul3.i.i = shl i32 %31, 3
  tail call void @sg_init_table(ptr noundef %29, i32 noundef %mul3.i.i) #12
  %txn_done.i.i = getelementptr inbounds %struct.bam_transaction, ptr %21, i32 0, i32 12
  %32 = ptrtoint ptr %txn_done.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %txn_done.i.i, align 4
  br label %pre_command.exit

pre_command.exit:                                 ; preds = %if.end.i.i, %if.then.i.pre_command.exit_crit_edge
  %33 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %command, label %pre_command.exit.if.end78_crit_edge [
    i32 255, label %sw.bb
    i32 144, label %sw.bb4
    i32 236, label %sw.bb6
    i32 96, label %sw.bb8
    i32 128, label %pre_command.exit.sw.bb29_crit_edge
  ]

pre_command.exit.sw.bb29_crit_edge:               ; preds = %pre_command.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

pre_command.exit.if.end78_crit_edge:              ; preds = %pre_command.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

sw.bb:                                            ; preds = %pre_command.exit
  %34 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %controller.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs1.i.i, align 4
  %tobool.not.i.i113 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i113, label %sw.bb.nandc_set_reg.exit.i_crit_edge, label %if.then.i.i

sw.bb.nandc_set_reg.exit.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 218103808, ptr %37, align 4
  br label %nandc_set_reg.exit.i

nandc_set_reg.exit.i:                             ; preds = %if.then.i.i, %sw.bb.nandc_set_reg.exit.i_crit_edge
  %39 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %controller.i, align 4
  %regs1.i2.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %regs1.i2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs1.i2.i, align 4
  %exec.i.i = getelementptr inbounds %struct.nandc_regs, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %exec.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777216, ptr %exec.i.i, align 4
  %44 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs1.i.i, align 4
  %props19.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %35, i32 0, i32 22
  %46 = ptrtoint ptr %props19.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %props19.i.i, align 4
  %is_bam.i.i114 = getelementptr inbounds %struct.qcom_nandc_props, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %is_bam.i.i114 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_bam.i.i114, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool20.not.i.i, label %if.end23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %nandc_set_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %35, i1 noundef zeroext false, i32 noundef 0, ptr noundef %45, i32 noundef 1, i32 noundef 4) #12
  br label %write_reg_dma.exit.i

if.end23.i.i:                                     ; preds = %nandc_set_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %35, i1 noundef zeroext false, i32 noundef 0, ptr noundef %45, i32 noundef 4, i1 noundef zeroext true) #12
  br label %write_reg_dma.exit.i

write_reg_dma.exit.i:                             ; preds = %if.end23.i.i, %if.then21.i.i
  %50 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs1.i.i, align 4
  %exec.i22.i = getelementptr inbounds %struct.nandc_regs, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %props19.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %props19.i.i, align 4
  %is_bam.i11.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %is_bam.i11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_bam.i11.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool20.not.i12.i = icmp eq i8 %55, 0
  br i1 %tobool20.not.i12.i, label %if.end23.i17.i, label %if.then21.i14.i

if.then21.i14.i:                                  ; preds = %write_reg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i13.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %35, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i22.i, i32 noundef 1, i32 noundef 6) #12
  br label %write_reg_dma.exit18.i

if.end23.i17.i:                                   ; preds = %write_reg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i16.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %35, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i22.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit18.i

write_reg_dma.exit18.i:                           ; preds = %if.end23.i17.i, %if.then21.i14.i
  %reg_read_buf.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %35, i32 0, i32 16
  %56 = ptrtoint ptr %reg_read_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_read_buf.i.i, align 4
  %reg_read_pos.i.i115 = getelementptr inbounds %struct.qcom_nand_controller, ptr %35, i32 0, i32 18
  %58 = ptrtoint ptr %reg_read_pos.i.i115 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_read_pos.i.i115, align 4
  %add.ptr.i.i = getelementptr i32, ptr %57, i32 %59
  %add.i.i = add i32 %59, 1
  store i32 %add.i.i, ptr %reg_read_pos.i.i115, align 4
  %60 = ptrtoint ptr %props19.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %props19.i.i, align 4
  %is_bam.i19.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %is_bam.i19.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_bam.i19.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i20.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i20.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %write_reg_dma.exit18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i21.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %35, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i.i, i32 noundef 1, i32 noundef 4) #12
  br label %if.then69

if.end6.i.i:                                      ; preds = %write_reg_dma.exit18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %35, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i.i, i32 noundef 4, i1 noundef zeroext true) #12
  br label %if.then69

sw.bb4:                                           ; preds = %pre_command.exit
  %64 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %buf_count.i, align 4
  %65 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %controller.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column)
  %cmp.i = icmp eq i32 %column, -1
  br i1 %cmp.i, label %sw.bb4.if.then69_crit_edge, label %if.end.i

sw.bb4.if.then69_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end.i:                                         ; preds = %sw.bb4
  %regs1.i.i117 = getelementptr inbounds %struct.qcom_nand_controller, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %regs1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs1.i.i117, align 4
  %tobool.not.i.i118 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i118, label %if.end.i.nandc_set_reg.exit.i121_crit_edge, label %if.then.i.i119

if.end.i.nandc_set_reg.exit.i121_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit.i121

if.then.i.i119:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 184549376, ptr %68, align 4
  br label %nandc_set_reg.exit.i121

nandc_set_reg.exit.i121:                          ; preds = %if.then.i.i119, %if.end.i.nandc_set_reg.exit.i121_crit_edge
  %70 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %controller.i, align 4
  %regs1.i2.i120 = getelementptr inbounds %struct.qcom_nand_controller, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %regs1.i2.i120 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs1.i2.i120, align 4
  %addr0.i.i = getelementptr inbounds %struct.nandc_regs, ptr %73, i32 0, i32 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %column) #12
  %75 = ptrtoint ptr %addr0.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %addr0.i.i, align 4
  %76 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %controller.i, align 4
  %regs1.i8.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %regs1.i8.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs1.i8.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %addr1.i.i, align 4
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %66, i32 0, i32 22
  %81 = load ptr, ptr %controller.i, align 4
  %regs1.i14.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %81, i32 0, i32 19
  %82 = ptrtoint ptr %regs1.i14.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs1.i14.i, align 4
  %chip_sel.i.i = getelementptr inbounds %struct.nandc_regs, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %props.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i = icmp eq i8 %87, 0
  %cond.i = select i1 %tobool.not.i, i32 67108864, i32 0
  %88 = ptrtoint ptr %chip_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond.i, ptr %chip_sel.i.i, align 4
  %89 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %controller.i, align 4
  %regs1.i20.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %90, i32 0, i32 19
  %91 = ptrtoint ptr %regs1.i20.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs1.i20.i, align 4
  %exec.i.i122 = getelementptr inbounds %struct.nandc_regs, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %exec.i.i122 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 16777216, ptr %exec.i.i122, align 4
  %94 = ptrtoint ptr %regs1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs1.i.i117, align 4
  %96 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %props.i, align 4
  %is_bam.i.i123 = getelementptr inbounds %struct.qcom_nandc_props, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %is_bam.i.i123 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_bam.i.i123, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool20.not.i.i124 = icmp eq i8 %99, 0
  br i1 %tobool20.not.i.i124, label %if.end23.i.i128, label %if.then21.i.i126

if.then21.i.i126:                                 ; preds = %nandc_set_reg.exit.i121
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i.i125 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %66, i1 noundef zeroext false, i32 noundef 0, ptr noundef %95, i32 noundef 4, i32 noundef 4) #12
  br label %write_reg_dma.exit.i129

if.end23.i.i128:                                  ; preds = %nandc_set_reg.exit.i121
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i.i127 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %66, i1 noundef zeroext false, i32 noundef 0, ptr noundef %95, i32 noundef 16, i1 noundef zeroext true) #12
  br label %write_reg_dma.exit.i129

write_reg_dma.exit.i129:                          ; preds = %if.end23.i.i128, %if.then21.i.i126
  %100 = ptrtoint ptr %regs1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs1.i.i117, align 4
  %exec.i40.i = getelementptr inbounds %struct.nandc_regs, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %props.i, align 4
  %is_bam.i29.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %is_bam.i29.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %is_bam.i29.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool20.not.i30.i = icmp eq i8 %105, 0
  br i1 %tobool20.not.i30.i, label %if.end23.i35.i, label %if.then21.i32.i

if.then21.i32.i:                                  ; preds = %write_reg_dma.exit.i129
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i31.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %66, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i40.i, i32 noundef 1, i32 noundef 6) #12
  br label %write_reg_dma.exit36.i

if.end23.i35.i:                                   ; preds = %write_reg_dma.exit.i129
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i34.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %66, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i40.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit36.i

write_reg_dma.exit36.i:                           ; preds = %if.end23.i35.i, %if.then21.i32.i
  %reg_read_buf.i.i130 = getelementptr inbounds %struct.qcom_nand_controller, ptr %66, i32 0, i32 16
  %106 = ptrtoint ptr %reg_read_buf.i.i130 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_read_buf.i.i130, align 4
  %reg_read_pos.i.i131 = getelementptr inbounds %struct.qcom_nand_controller, ptr %66, i32 0, i32 18
  %108 = ptrtoint ptr %reg_read_pos.i.i131 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reg_read_pos.i.i131, align 4
  %add.ptr.i.i132 = getelementptr i32, ptr %107, i32 %109
  %add.i.i133 = add i32 %109, 1
  store i32 %add.i.i133, ptr %reg_read_pos.i.i131, align 4
  %110 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %props.i, align 4
  %is_bam.i37.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %is_bam.i37.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_bam.i37.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i38.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i38.i, label %if.end6.i.i136, label %if.then5.i.i134

if.then5.i.i134:                                  ; preds = %write_reg_dma.exit36.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i39.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %66, i1 noundef zeroext true, i32 noundef 64, ptr noundef %add.ptr.i.i132, i32 noundef 1, i32 noundef 4) #12
  br label %if.then69

if.end6.i.i136:                                   ; preds = %write_reg_dma.exit36.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i135 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %66, i1 noundef zeroext true, i32 noundef 64, ptr noundef %add.ptr.i.i132, i32 noundef 4, i1 noundef zeroext true) #12
  br label %if.then69

sw.bb6:                                           ; preds = %pre_command.exit
  %114 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %controller.i, align 4
  %props.i138 = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 22
  %regs1.i2.i139 = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 19
  %116 = ptrtoint ptr %regs1.i2.i139 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs1.i2.i139, align 4
  %tobool.not.i4.i = icmp eq ptr %117, null
  br i1 %tobool.not.i4.i, label %sw.bb6.if.end.i143_crit_edge, label %if.end.sink.split.i

sw.bb6.if.end.i143_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i143

if.end.sink.split.i:                              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %props.i138, align 4
  %qpic_v2.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %qpic_v2.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %qpic_v2.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i140 = icmp eq i8 %121, 0
  %..i = select i1 %tobool.not.i140, i32 838860800, i32 889192448
  %122 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %..i, ptr %117, align 4
  br label %if.end.i143

if.end.i143:                                      ; preds = %if.end.sink.split.i, %sw.bb6.if.end.i143_crit_edge
  %123 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %controller.i, align 4
  %regs1.i8.i141 = getelementptr inbounds %struct.qcom_nand_controller, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %regs1.i8.i141 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs1.i8.i141, align 4
  %addr0.i.i142 = getelementptr inbounds %struct.nandc_regs, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %addr0.i.i142 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %addr0.i.i142, align 4
  %128 = load ptr, ptr %controller.i, align 4
  %regs1.i14.i144 = getelementptr inbounds %struct.qcom_nand_controller, ptr %128, i32 0, i32 19
  %129 = ptrtoint ptr %regs1.i14.i144 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs1.i14.i144, align 4
  %addr1.i.i145 = getelementptr inbounds %struct.nandc_regs, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %addr1.i.i145 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %addr1.i.i145, align 4
  %132 = load ptr, ptr %controller.i, align 4
  %regs1.i20.i146 = getelementptr inbounds %struct.qcom_nand_controller, ptr %132, i32 0, i32 19
  %133 = ptrtoint ptr %regs1.i20.i146 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs1.i20.i146, align 4
  %cfg0.i.i = getelementptr inbounds %struct.nandc_regs, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %cfg0.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1064, ptr %cfg0.i.i, align 4
  %136 = load ptr, ptr %controller.i, align 4
  %regs1.i26.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %136, i32 0, i32 19
  %137 = ptrtoint ptr %regs1.i26.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs1.i26.i, align 4
  %cfg1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %cfg1.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1560544512, ptr %cfg1.i.i, align 4
  %140 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %props.i138, align 4
  %qpic_v23.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %qpic_v23.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %qpic_v23.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool4.not.i = icmp eq i8 %143, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i143.if.end6.i_crit_edge

if.end.i143.if.end6.i_crit_edge:                  ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %controller.i, align 4
  %regs1.i32.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %145, i32 0, i32 19
  %146 = ptrtoint ptr %regs1.i32.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs1.i32.i, align 4
  %ecc_buf_cfg.i.i = getelementptr inbounds %struct.nandc_regs, ptr %147, i32 0, i32 14
  %148 = ptrtoint ptr %ecc_buf_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 16777216, ptr %ecc_buf_cfg.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i143.if.end6.i_crit_edge
  %149 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %props.i138, align 4
  %qpic_v28.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %qpic_v28.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %qpic_v28.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool9.not.i = icmp eq i8 %152, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end6.i.if.end12.i_crit_edge

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %controller.i, align 4
  %regs1.i38.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %154, i32 0, i32 19
  %155 = ptrtoint ptr %regs1.i38.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs1.i38.i, align 4
  %vld.i.i = getelementptr inbounds %struct.nandc_regs, ptr %156, i32 0, i32 11
  %vld.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 21
  %157 = ptrtoint ptr %vld.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vld.i, align 4
  %and.i = and i32 %158, -2
  %159 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %160 = ptrtoint ptr %vld.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %vld.i.i, align 4
  %161 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %controller.i, align 4
  %regs1.i44.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %162, i32 0, i32 19
  %163 = ptrtoint ptr %regs1.i44.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs1.i44.i, align 4
  %cmd1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %164, i32 0, i32 10
  %cmd1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 20
  %165 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cmd1.i, align 4
  %and11.i = and i32 %166, -256
  %or.i = or i32 %and11.i, 236
  %167 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %168 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %cmd1.i.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end12.i_crit_edge
  %169 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %controller.i, align 4
  %regs1.i50.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %170, i32 0, i32 19
  %171 = ptrtoint ptr %regs1.i50.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs1.i50.i, align 4
  %exec.i.i147 = getelementptr inbounds %struct.nandc_regs, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %exec.i.i147 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 16777216, ptr %exec.i.i147, align 4
  %174 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %props.i138, align 4
  %qpic_v214.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %qpic_v214.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %qpic_v214.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool15.not.i = icmp eq i8 %177, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end12.i.if.end19.i_crit_edge

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %178 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %controller.i, align 4
  %regs1.i56.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %179, i32 0, i32 19
  %180 = ptrtoint ptr %regs1.i56.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs1.i56.i, align 4
  %orig_cmd1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %181, i32 0, i32 12
  %cmd117.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 20
  %182 = ptrtoint ptr %cmd117.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cmd117.i, align 4
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #12
  %185 = ptrtoint ptr %orig_cmd1.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %orig_cmd1.i.i, align 4
  %186 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %controller.i, align 4
  %regs1.i62.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %187, i32 0, i32 19
  %188 = ptrtoint ptr %regs1.i62.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs1.i62.i, align 4
  %orig_vld.i.i = getelementptr inbounds %struct.nandc_regs, ptr %189, i32 0, i32 13
  %vld18.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 21
  %190 = ptrtoint ptr %vld18.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %vld18.i, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #12
  %193 = ptrtoint ptr %orig_vld.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %orig_vld.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end19.i_crit_edge
  %194 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %controller.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %195, i32 0, i32 22
  %196 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %props.i.i, align 4
  %qpic_v2.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %qpic_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %qpic_v2.i.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i68.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i68.i, label %if.end19.i.if.else.i.i_crit_edge, label %land.lhs.true6.i.i

if.end19.i.if.else.i.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true6.i.i:                               ; preds = %if.end19.i
  %steps.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %200 = ptrtoint ptr %steps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %steps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp.i.i.i = icmp eq i32 %201, 1
  br i1 %cmp.i.i.i, label %if.then8.i.i, label %land.lhs.true6.i.i.if.else.i.i_crit_edge

land.lhs.true6.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  %regs1.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %195, i32 0, i32 19
  %202 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs1.i.i.i, align 4
  %read_location_last0.i = getelementptr inbounds %struct.nandc_regs, ptr %203, i32 0, i32 19
  %tobool.not.i.i.i148 = icmp eq ptr %read_location_last0.i, null
  br i1 %tobool.not.i.i.i148, label %if.then8.i.i.nandc_set_read_loc.exit.i_crit_edge, label %if.then8.i.i.cleanup.sink.split.i.i_crit_edge

if.then8.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.then8.i.i.nandc_set_read_loc.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true6.i.i.if.else.i.i_crit_edge, %if.end19.i.if.else.i.i_crit_edge
  %regs1.i34.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %195, i32 0, i32 19
  %204 = ptrtoint ptr %regs1.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs1.i34.i.i, align 4
  %read_location0.i = getelementptr inbounds %struct.nandc_regs, ptr %205, i32 0, i32 15
  %tobool.not.i36.i.i = icmp eq ptr %read_location0.i, null
  br i1 %tobool.not.i36.i.i, label %if.else.i.i.nandc_set_read_loc.exit.i_crit_edge, label %if.else.i.i.cleanup.sink.split.i.i_crit_edge

if.else.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.else.i.i.nandc_set_read_loc.exit.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_read_loc.exit.i

cleanup.sink.split.i.i:                           ; preds = %if.else.i.i.cleanup.sink.split.i.i_crit_edge, %if.then8.i.i.cleanup.sink.split.i.i_crit_edge
  %call2.i35.sink.i.i = phi ptr [ %read_location_last0.i, %if.then8.i.i.cleanup.sink.split.i.i_crit_edge ], [ %read_location0.i, %if.else.i.i.cleanup.sink.split.i.i_crit_edge ]
  %206 = ptrtoint ptr %call2.i35.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 130, ptr %call2.i35.sink.i.i, align 4
  br label %nandc_set_read_loc.exit.i

nandc_set_read_loc.exit.i:                        ; preds = %cleanup.sink.split.i.i, %if.else.i.i.nandc_set_read_loc.exit.i_crit_edge, %if.then8.i.i.nandc_set_read_loc.exit.i_crit_edge
  %207 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %props.i138, align 4
  %qpic_v221.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %qpic_v221.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %qpic_v221.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool22.not.i = icmp eq i8 %210, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %nandc_set_read_loc.exit.i.if.end26.i_crit_edge

nandc_set_read_loc.exit.i.if.end26.i_crit_edge:   ; preds = %nandc_set_read_loc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then23.i:                                      ; preds = %nandc_set_read_loc.exit.i
  %211 = ptrtoint ptr %regs1.i2.i139 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs1.i2.i139, align 4
  %vld.i124.i = getelementptr inbounds %struct.nandc_regs, ptr %212, i32 0, i32 11
  %dev_cmd_reg_start16.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %208, i32 0, i32 4
  %213 = ptrtoint ptr %dev_cmd_reg_start16.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dev_cmd_reg_start16.i.i, align 4
  %add17.i.i = add i32 %214, 172
  %is_bam.i.i149 = getelementptr inbounds %struct.qcom_nandc_props, ptr %208, i32 0, i32 1
  %215 = ptrtoint ptr %is_bam.i.i149 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %is_bam.i.i149, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool20.not.i.i150 = icmp eq i8 %216, 0
  br i1 %tobool20.not.i.i150, label %if.end23.i.i155, label %if.then21.i.i153

if.then21.i.i153:                                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i.i151 = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 10
  %217 = ptrtoint ptr %bam_txn1.i.i151 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bam_txn1.i.i151, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %bam_ce_pos.i.i152 = getelementptr inbounds %struct.bam_transaction, ptr %218, i32 0, i32 3
  %221 = ptrtoint ptr %bam_ce_pos.i.i152 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %bam_ce_pos.i.i152, align 4
  %arrayidx.i.i = getelementptr %struct.bam_cmd_element, ptr %220, i32 %222
  %base_phys6.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 4
  %223 = ptrtoint ptr %base_phys6.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %base_phys6.i.i, align 4
  %add3.i.i = add i32 %224, %add17.i.i
  %225 = ptrtoint ptr %vld.i124.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %vld.i124.i, align 4
  %and.i.i.i = and i32 %add3.i.i, 16777215
  %227 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #12
  %228 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %arrayidx.i.i, align 4
  %data2.i.i.i.i = getelementptr %struct.bam_cmd_element, ptr %220, i32 %222, i32 1
  %229 = ptrtoint ptr %data2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %226, ptr %data2.i.i.i.i, align 4
  %mask.i.i.i.i = getelementptr %struct.bam_cmd_element, ptr %220, i32 %222, i32 2
  %230 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 -1, ptr %mask.i.i.i.i, align 4
  %231 = ptrtoint ptr %bam_ce_pos.i.i152 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %bam_ce_pos.i.i152, align 4
  %add12.i.i = add i32 %232, 1
  store i32 %add12.i.i, ptr %bam_ce_pos.i.i152, align 4
  br label %write_reg_dma.exit.i157

if.end23.i.i155:                                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i.i)
  %cmp24.i.i = icmp eq i32 %add17.i.i, 0
  %call28.i.i154 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %115, i1 noundef zeroext false, i32 noundef %add17.i.i, ptr noundef %vld.i124.i, i32 noundef 4, i1 noundef zeroext %cmp24.i.i) #12
  br label %write_reg_dma.exit.i157

write_reg_dma.exit.i157:                          ; preds = %if.end23.i.i155, %if.then21.i.i153
  %233 = ptrtoint ptr %regs1.i2.i139 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs1.i2.i139, align 4
  %cmd1.i125.i = getelementptr inbounds %struct.nandc_regs, ptr %234, i32 0, i32 10
  %235 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %props.i138, align 4
  %dev_cmd_reg_start.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %dev_cmd_reg_start.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %dev_cmd_reg_start.i.i, align 4
  %add.i.i156 = add i32 %238, 164
  %239 = zext i32 %238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %238, label %write_reg_dma.exit.i157.if.end18.i.i_crit_edge [
    i32 48715, label %write_reg_dma.exit.i157.if.then14.i.i_crit_edge
    i32 8, label %write_reg_dma.exit.i157.if.then14.i.i_crit_edge235
  ]

write_reg_dma.exit.i157.if.then14.i.i_crit_edge235: ; preds = %write_reg_dma.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i.i

write_reg_dma.exit.i157.if.then14.i.i_crit_edge:  ; preds = %write_reg_dma.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i.i

write_reg_dma.exit.i157.if.end18.i.i_crit_edge:   ; preds = %write_reg_dma.exit.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.then14.i.i:                                    ; preds = %write_reg_dma.exit.i157.if.then14.i.i_crit_edge, %write_reg_dma.exit.i157.if.then14.i.i_crit_edge235
  %add17.i75.i = add nuw nsw i32 %238, 172
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then14.i.i, %write_reg_dma.exit.i157.if.end18.i.i_crit_edge
  %first.addr.1.i.i = phi i32 [ %add17.i75.i, %if.then14.i.i ], [ %add.i.i156, %write_reg_dma.exit.i157.if.end18.i.i_crit_edge ]
  %is_bam.i77.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %236, i32 0, i32 1
  %240 = ptrtoint ptr %is_bam.i77.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_bam.i77.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool20.not.i78.i = icmp eq i8 %241, 0
  br i1 %tobool20.not.i78.i, label %if.end23.i83.i, label %if.then21.i80.i

if.then21.i80.i:                                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i79.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %115, i1 noundef zeroext false, i32 noundef %first.addr.1.i.i, ptr noundef %cmd1.i125.i, i32 noundef 1, i32 noundef 4) #12
  br label %if.end26.i

if.end23.i83.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.addr.1.i.i)
  %cmp24.i81.i = icmp eq i32 %first.addr.1.i.i, 0
  %call28.i82.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %115, i1 noundef zeroext false, i32 noundef %first.addr.1.i.i, ptr noundef %cmd1.i125.i, i32 noundef 4, i1 noundef zeroext %cmp24.i81.i) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end23.i83.i, %if.then21.i80.i, %nandc_set_read_loc.exit.i.if.end26.i_crit_edge
  %buf_count.i158 = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 13
  %242 = ptrtoint ptr %buf_count.i158 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 512, ptr %buf_count.i158, align 4
  %data_buffer.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 11
  %243 = ptrtoint ptr %data_buffer.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %data_buffer.i, align 4
  %245 = call ptr @memset(ptr %244, i32 255, i32 512)
  tail call fastcc void @config_nand_page_read(ptr noundef %chip) #12
  tail call fastcc void @config_nand_cw_read(ptr noundef %chip, i1 noundef zeroext false, i32 noundef 0) #12
  %246 = ptrtoint ptr %data_buffer.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data_buffer.i, align 4
  %248 = ptrtoint ptr %buf_count.i158 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %buf_count.i158, align 4
  tail call fastcc void @read_data_dma(ptr noundef %115, i32 noundef 256, ptr noundef %247, i32 noundef %249) #12
  %250 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %props.i138, align 4
  %qpic_v232.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %qpic_v232.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %qpic_v232.i, align 2, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool33.not.i = icmp eq i8 %253, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end26.i.if.then69_crit_edge

if.end26.i.if.then69_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.then34.i:                                      ; preds = %if.end26.i
  %254 = ptrtoint ptr %regs1.i2.i139 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs1.i2.i139, align 4
  %orig_cmd1.i147.i = getelementptr inbounds %struct.nandc_regs, ptr %255, i32 0, i32 12
  %dev_cmd_reg_start.i88.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %251, i32 0, i32 4
  %256 = ptrtoint ptr %dev_cmd_reg_start.i88.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dev_cmd_reg_start.i88.i, align 4
  %add.i89.i = add i32 %257, 164
  %258 = zext i32 %257 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %257, label %if.then34.i.if.end18.i98.i_crit_edge [
    i32 48715, label %if.then34.i.if.then14.i93.i_crit_edge
    i32 8, label %if.then34.i.if.then14.i93.i_crit_edge236
  ]

if.then34.i.if.then14.i93.i_crit_edge236:         ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i93.i

if.then34.i.if.then14.i93.i_crit_edge:            ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i93.i

if.then34.i.if.end18.i98.i_crit_edge:             ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i98.i

if.then14.i93.i:                                  ; preds = %if.then34.i.if.then14.i93.i_crit_edge, %if.then34.i.if.then14.i93.i_crit_edge236
  %add17.i92.i = add nuw nsw i32 %257, 172
  br label %if.end18.i98.i

if.end18.i98.i:                                   ; preds = %if.then14.i93.i, %if.then34.i.if.end18.i98.i_crit_edge
  %first.addr.1.i94.i = phi i32 [ %add17.i92.i, %if.then14.i93.i ], [ %add.i89.i, %if.then34.i.if.end18.i98.i_crit_edge ]
  %is_bam.i96.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %251, i32 0, i32 1
  %259 = ptrtoint ptr %is_bam.i96.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %is_bam.i96.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool20.not.i97.i = icmp eq i8 %260, 0
  br i1 %tobool20.not.i97.i, label %if.end23.i103.i, label %if.then21.i100.i

if.then21.i100.i:                                 ; preds = %if.end18.i98.i
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i126.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 10
  %261 = ptrtoint ptr %bam_txn1.i126.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %bam_txn1.i126.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  %bam_ce_pos.i127.i = getelementptr inbounds %struct.bam_transaction, ptr %262, i32 0, i32 3
  %265 = ptrtoint ptr %bam_ce_pos.i127.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %bam_ce_pos.i127.i, align 4
  %arrayidx.i128.i = getelementptr %struct.bam_cmd_element, ptr %264, i32 %266
  %base_phys6.i129.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %115, i32 0, i32 4
  %267 = ptrtoint ptr %base_phys6.i129.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %base_phys6.i129.i, align 4
  %add3.i136.i = add i32 %268, %first.addr.1.i94.i
  %269 = ptrtoint ptr %orig_cmd1.i147.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %orig_cmd1.i147.i, align 4
  %and.i.i139.i = and i32 %add3.i136.i, 16777215
  %271 = tail call i32 @llvm.bswap.i32(i32 %and.i.i139.i) #12
  %272 = ptrtoint ptr %arrayidx.i128.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %arrayidx.i128.i, align 4
  %data2.i.i.i141.i = getelementptr %struct.bam_cmd_element, ptr %264, i32 %266, i32 1
  %273 = ptrtoint ptr %data2.i.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %270, ptr %data2.i.i.i141.i, align 4
  %mask.i.i.i142.i = getelementptr %struct.bam_cmd_element, ptr %264, i32 %266, i32 2
  %274 = ptrtoint ptr %mask.i.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 -1, ptr %mask.i.i.i142.i, align 4
  %275 = ptrtoint ptr %bam_ce_pos.i127.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %bam_ce_pos.i127.i, align 4
  %add12.i145.i = add i32 %276, 1
  store i32 %add12.i145.i, ptr %bam_ce_pos.i127.i, align 4
  br label %write_reg_dma.exit104.i

if.end23.i103.i:                                  ; preds = %if.end18.i98.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.addr.1.i94.i)
  %cmp24.i101.i = icmp eq i32 %first.addr.1.i94.i, 0
  %call28.i102.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %115, i1 noundef zeroext false, i32 noundef %first.addr.1.i94.i, ptr noundef %orig_cmd1.i147.i, i32 noundef 4, i1 noundef zeroext %cmp24.i101.i) #12
  br label %write_reg_dma.exit104.i

write_reg_dma.exit104.i:                          ; preds = %if.end23.i103.i, %if.then21.i100.i
  %277 = ptrtoint ptr %regs1.i2.i139 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs1.i2.i139, align 4
  %orig_vld.i148.i = getelementptr inbounds %struct.nandc_regs, ptr %278, i32 0, i32 13
  %279 = ptrtoint ptr %props.i138 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %props.i138, align 4
  %dev_cmd_reg_start16.i108.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %280, i32 0, i32 4
  %281 = ptrtoint ptr %dev_cmd_reg_start16.i108.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %dev_cmd_reg_start16.i108.i, align 4
  %add17.i109.i = add i32 %282, 172
  %is_bam.i113.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %280, i32 0, i32 1
  %283 = ptrtoint ptr %is_bam.i113.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %is_bam.i113.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool20.not.i114.i = icmp eq i8 %284, 0
  br i1 %tobool20.not.i114.i, label %if.end23.i120.i, label %if.then21.i117.i

if.then21.i117.i:                                 ; preds = %write_reg_dma.exit104.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i116.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %115, i1 noundef zeroext false, i32 noundef %add17.i109.i, ptr noundef %orig_vld.i148.i, i32 noundef 1, i32 noundef 4) #12
  br label %if.then69

if.end23.i120.i:                                  ; preds = %write_reg_dma.exit104.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i109.i)
  %cmp24.i118.i = icmp eq i32 %add17.i109.i, 0
  %call28.i119.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %115, i1 noundef zeroext false, i32 noundef %add17.i109.i, ptr noundef %orig_vld.i148.i, i32 noundef 4, i1 noundef zeroext %cmp24.i118.i) #12
  br label %if.then69

sw.bb8:                                           ; preds = %pre_command.exit
  %285 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %controller.i, align 4
  %regs1.i.i160 = getelementptr inbounds %struct.qcom_nand_controller, ptr %286, i32 0, i32 19
  %287 = ptrtoint ptr %regs1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs1.i.i160, align 4
  %tobool.not.i.i161 = icmp eq ptr %288, null
  br i1 %tobool.not.i.i161, label %sw.bb8.nandc_set_reg.exit.i165_crit_edge, label %if.then.i.i162

sw.bb8.nandc_set_reg.exit.i165_crit_edge:         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_set_reg.exit.i165

if.then.i.i162:                                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 973078528, ptr %288, align 4
  br label %nandc_set_reg.exit.i165

nandc_set_reg.exit.i165:                          ; preds = %if.then.i.i162, %sw.bb8.nandc_set_reg.exit.i165_crit_edge
  %290 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %controller.i, align 4
  %regs1.i2.i163 = getelementptr inbounds %struct.qcom_nand_controller, ptr %291, i32 0, i32 19
  %292 = ptrtoint ptr %regs1.i2.i163 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs1.i2.i163, align 4
  %addr0.i.i164 = getelementptr inbounds %struct.nandc_regs, ptr %293, i32 0, i32 1
  %294 = tail call i32 @llvm.bswap.i32(i32 %page_addr) #12
  %295 = ptrtoint ptr %addr0.i.i164 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %addr0.i.i164, align 4
  %296 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %controller.i, align 4
  %regs1.i8.i166 = getelementptr inbounds %struct.qcom_nand_controller, ptr %297, i32 0, i32 19
  %298 = ptrtoint ptr %regs1.i8.i166 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs1.i8.i166, align 4
  %addr1.i.i167 = getelementptr inbounds %struct.nandc_regs, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %addr1.i.i167 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %addr1.i.i167, align 4
  %301 = load ptr, ptr %controller.i, align 4
  %regs1.i14.i168 = getelementptr inbounds %struct.qcom_nand_controller, ptr %301, i32 0, i32 19
  %302 = ptrtoint ptr %regs1.i14.i168 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs1.i14.i168, align 4
  %cfg0.i.i169 = getelementptr inbounds %struct.nandc_regs, ptr %303, i32 0, i32 5
  %cfg0_raw.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 14
  %304 = ptrtoint ptr %cfg0_raw.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %cfg0_raw.i, align 4
  %and.i170 = and i32 %305, -449
  %306 = tail call i32 @llvm.bswap.i32(i32 %and.i170) #12
  %307 = ptrtoint ptr %cfg0.i.i169 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %cfg0.i.i169, align 4
  %308 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %controller.i, align 4
  %regs1.i20.i171 = getelementptr inbounds %struct.qcom_nand_controller, ptr %309, i32 0, i32 19
  %310 = ptrtoint ptr %regs1.i20.i171 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs1.i20.i171, align 4
  %cfg1.i.i172 = getelementptr inbounds %struct.nandc_regs, ptr %311, i32 0, i32 6
  %cfg1_raw.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 15
  %312 = ptrtoint ptr %cfg1_raw.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %cfg1_raw.i, align 8
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #12
  %315 = ptrtoint ptr %cfg1.i.i172 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %cfg1.i.i172, align 4
  %316 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %controller.i, align 4
  %regs1.i26.i173 = getelementptr inbounds %struct.qcom_nand_controller, ptr %317, i32 0, i32 19
  %318 = ptrtoint ptr %regs1.i26.i173 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %regs1.i26.i173, align 4
  %exec.i.i174 = getelementptr inbounds %struct.nandc_regs, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %exec.i.i174 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 16777216, ptr %exec.i.i174, align 4
  %321 = load ptr, ptr %controller.i, align 4
  %regs1.i32.i175 = getelementptr inbounds %struct.qcom_nand_controller, ptr %321, i32 0, i32 19
  %322 = ptrtoint ptr %regs1.i32.i175 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %regs1.i32.i175, align 4
  %clrflashstatus.i.i = getelementptr inbounds %struct.nandc_regs, ptr %323, i32 0, i32 8
  %clrflashstatus.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 18
  %324 = ptrtoint ptr %clrflashstatus.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %clrflashstatus.i, align 4
  %326 = tail call i32 @llvm.bswap.i32(i32 %325) #12
  %327 = ptrtoint ptr %clrflashstatus.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %clrflashstatus.i.i, align 4
  %328 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %controller.i, align 4
  %regs1.i38.i176 = getelementptr inbounds %struct.qcom_nand_controller, ptr %329, i32 0, i32 19
  %330 = ptrtoint ptr %regs1.i38.i176 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %regs1.i38.i176, align 4
  %clrreadstatus.i.i = getelementptr inbounds %struct.nandc_regs, ptr %331, i32 0, i32 9
  %clrreadstatus.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 19
  %332 = ptrtoint ptr %clrreadstatus.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %clrreadstatus.i, align 8
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #12
  %335 = ptrtoint ptr %clrreadstatus.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %clrreadstatus.i.i, align 4
  %336 = ptrtoint ptr %regs1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs1.i.i160, align 4
  %props19.i.i177 = getelementptr inbounds %struct.qcom_nand_controller, ptr %286, i32 0, i32 22
  %338 = ptrtoint ptr %props19.i.i177 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %props19.i.i177, align 4
  %is_bam.i.i178 = getelementptr inbounds %struct.qcom_nandc_props, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %is_bam.i.i178 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %is_bam.i.i178, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool20.not.i.i179 = icmp eq i8 %341, 0
  br i1 %tobool20.not.i.i179, label %if.end23.i.i183, label %if.then21.i.i181

if.then21.i.i181:                                 ; preds = %nandc_set_reg.exit.i165
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i.i180 = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %286, i1 noundef zeroext false, i32 noundef 0, ptr noundef %337, i32 noundef 3, i32 noundef 4) #12
  br label %write_reg_dma.exit.i184

if.end23.i.i183:                                  ; preds = %nandc_set_reg.exit.i165
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i.i182 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %286, i1 noundef zeroext false, i32 noundef 0, ptr noundef %337, i32 noundef 12, i1 noundef zeroext true) #12
  br label %write_reg_dma.exit.i184

write_reg_dma.exit.i184:                          ; preds = %if.end23.i.i183, %if.then21.i.i181
  %342 = ptrtoint ptr %regs1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %regs1.i.i160, align 4
  %cfg0.i91.i = getelementptr inbounds %struct.nandc_regs, ptr %343, i32 0, i32 5
  %344 = ptrtoint ptr %props19.i.i177 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %props19.i.i177, align 4
  %is_bam.i47.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %345, i32 0, i32 1
  %346 = ptrtoint ptr %is_bam.i47.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %is_bam.i47.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool20.not.i48.i = icmp eq i8 %347, 0
  br i1 %tobool20.not.i48.i, label %if.end23.i53.i, label %if.then21.i50.i

if.then21.i50.i:                                  ; preds = %write_reg_dma.exit.i184
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i49.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %286, i1 noundef zeroext false, i32 noundef 32, ptr noundef %cfg0.i91.i, i32 noundef 2, i32 noundef 4) #12
  br label %write_reg_dma.exit54.i

if.end23.i53.i:                                   ; preds = %write_reg_dma.exit.i184
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i52.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %286, i1 noundef zeroext false, i32 noundef 32, ptr noundef %cfg0.i91.i, i32 noundef 8, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit54.i

write_reg_dma.exit54.i:                           ; preds = %if.end23.i53.i, %if.then21.i50.i
  %348 = ptrtoint ptr %regs1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regs1.i.i160, align 4
  %exec.i92.i = getelementptr inbounds %struct.nandc_regs, ptr %349, i32 0, i32 4
  %350 = ptrtoint ptr %props19.i.i177 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %props19.i.i177, align 4
  %is_bam.i58.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %is_bam.i58.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %is_bam.i58.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool20.not.i59.i = icmp eq i8 %353, 0
  br i1 %tobool20.not.i59.i, label %if.end23.i64.i, label %if.then21.i61.i

if.then21.i61.i:                                  ; preds = %write_reg_dma.exit54.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i60.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %286, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i92.i, i32 noundef 1, i32 noundef 6) #12
  br label %write_reg_dma.exit65.i

if.end23.i64.i:                                   ; preds = %write_reg_dma.exit54.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i63.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %286, i1 noundef zeroext false, i32 noundef 16, ptr noundef %exec.i92.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit65.i

write_reg_dma.exit65.i:                           ; preds = %if.end23.i64.i, %if.then21.i61.i
  %reg_read_buf.i.i185 = getelementptr inbounds %struct.qcom_nand_controller, ptr %286, i32 0, i32 16
  %354 = ptrtoint ptr %reg_read_buf.i.i185 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %reg_read_buf.i.i185, align 4
  %reg_read_pos.i.i186 = getelementptr inbounds %struct.qcom_nand_controller, ptr %286, i32 0, i32 18
  %356 = ptrtoint ptr %reg_read_pos.i.i186 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %reg_read_pos.i.i186, align 4
  %add.ptr.i.i187 = getelementptr i32, ptr %355, i32 %357
  %add.i.i188 = add i32 %357, 1
  store i32 %add.i.i188, ptr %reg_read_pos.i.i186, align 4
  %358 = ptrtoint ptr %props19.i.i177 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %props19.i.i177, align 4
  %is_bam.i66.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %is_bam.i66.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %is_bam.i66.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i67.i = icmp eq i8 %361, 0
  br i1 %tobool.not.i67.i, label %if.end6.i.i191, label %if.then5.i.i189

if.then5.i.i189:                                  ; preds = %write_reg_dma.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i68.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %286, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i.i187, i32 noundef 1, i32 noundef 4) #12
  br label %read_reg_dma.exit.i

if.end6.i.i191:                                   ; preds = %write_reg_dma.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.i190 = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %286, i1 noundef zeroext true, i32 noundef 20, ptr noundef %add.ptr.i.i187, i32 noundef 4, i1 noundef zeroext true) #12
  br label %read_reg_dma.exit.i

read_reg_dma.exit.i:                              ; preds = %if.end6.i.i191, %if.then5.i.i189
  %362 = ptrtoint ptr %regs1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %regs1.i.i160, align 4
  %clrflashstatus.i95.i = getelementptr inbounds %struct.nandc_regs, ptr %363, i32 0, i32 8
  %364 = ptrtoint ptr %props19.i.i177 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %props19.i.i177, align 4
  %is_bam.i72.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %is_bam.i72.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %is_bam.i72.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool20.not.i73.i = icmp eq i8 %367, 0
  br i1 %tobool20.not.i73.i, label %if.end23.i78.i, label %if.then21.i75.i

if.then21.i75.i:                                  ; preds = %read_reg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i.i192 = getelementptr inbounds %struct.qcom_nand_controller, ptr %286, i32 0, i32 10
  %368 = ptrtoint ptr %bam_txn1.i.i192 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %bam_txn1.i.i192, align 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %369, align 4
  %bam_ce_pos.i.i193 = getelementptr inbounds %struct.bam_transaction, ptr %369, i32 0, i32 3
  %372 = ptrtoint ptr %bam_ce_pos.i.i193 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %bam_ce_pos.i.i193, align 4
  %arrayidx.i.i194 = getelementptr %struct.bam_cmd_element, ptr %371, i32 %373
  %base_phys6.i.i195 = getelementptr inbounds %struct.qcom_nand_controller, ptr %286, i32 0, i32 4
  %374 = ptrtoint ptr %base_phys6.i.i195 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %base_phys6.i.i195, align 4
  %add3.i.i196 = add i32 %375, 20
  %376 = ptrtoint ptr %clrflashstatus.i95.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %clrflashstatus.i95.i, align 4
  %and.i.i.i197 = and i32 %add3.i.i196, 16777215
  %378 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i197) #12
  %379 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %arrayidx.i.i194, align 4
  %data2.i.i.i.i198 = getelementptr %struct.bam_cmd_element, ptr %371, i32 %373, i32 1
  %380 = ptrtoint ptr %data2.i.i.i.i198 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %377, ptr %data2.i.i.i.i198, align 4
  %mask.i.i.i.i199 = getelementptr %struct.bam_cmd_element, ptr %371, i32 %373, i32 2
  %381 = ptrtoint ptr %mask.i.i.i.i199 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 -1, ptr %mask.i.i.i.i199, align 4
  %382 = ptrtoint ptr %bam_ce_pos.i.i193 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %bam_ce_pos.i.i193, align 4
  %add12.i.i200 = add i32 %383, 1
  store i32 %add12.i.i200, ptr %bam_ce_pos.i.i193, align 4
  br label %write_reg_dma.exit79.i

if.end23.i78.i:                                   ; preds = %read_reg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i77.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %286, i1 noundef zeroext false, i32 noundef 20, ptr noundef %clrflashstatus.i95.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %write_reg_dma.exit79.i

write_reg_dma.exit79.i:                           ; preds = %if.end23.i78.i, %if.then21.i75.i
  %384 = ptrtoint ptr %regs1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %regs1.i.i160, align 4
  %clrreadstatus.i96.i = getelementptr inbounds %struct.nandc_regs, ptr %385, i32 0, i32 9
  %386 = ptrtoint ptr %props19.i.i177 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %props19.i.i177, align 4
  %is_bam.i83.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %is_bam.i83.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %is_bam.i83.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool20.not.i84.i = icmp eq i8 %389, 0
  br i1 %tobool20.not.i84.i, label %if.end23.i89.i, label %if.then21.i86.i

if.then21.i86.i:                                  ; preds = %write_reg_dma.exit79.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i85.i = tail call fastcc i32 @prep_bam_dma_desc_cmd(ptr noundef %286, i1 noundef zeroext false, i32 noundef 68, ptr noundef %clrreadstatus.i96.i, i32 noundef 1, i32 noundef 4) #12
  br label %if.then69

if.end23.i89.i:                                   ; preds = %write_reg_dma.exit79.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i88.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %286, i1 noundef zeroext false, i32 noundef 68, ptr noundef %clrreadstatus.i96.i, i32 noundef 4, i1 noundef zeroext false) #12
  br label %if.then69

sw.bb10:                                          ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %column)
  %cmp.not = icmp eq i32 %column, 0
  br i1 %cmp.not, label %sw.bb10.if.end_crit_edge, label %do.end, !prof !210

sw.bb10.if.end_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1566, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb10.if.end_crit_edge
  %390 = ptrtoint ptr %use_ecc.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 1, ptr %use_ecc.i, align 4
  %391 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %controller.i, align 4
  %regs1.i.i201 = getelementptr inbounds %struct.qcom_nand_controller, ptr %392, i32 0, i32 19
  %393 = ptrtoint ptr %regs1.i.i201 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regs1.i.i201, align 4
  %addr0.i.i202 = getelementptr inbounds %struct.nandc_regs, ptr %394, i32 0, i32 1
  %395 = tail call i32 @llvm.bswap.i32(i32 %page_addr)
  %396 = lshr i32 %395, 16
  %397 = ptrtoint ptr %addr0.i.i202 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %addr0.i.i202, align 4
  %398 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %399, i32 0, i32 19
  %400 = ptrtoint ptr %regs1.i11.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %regs1.i11.i, align 4
  %addr1.i.i204 = getelementptr inbounds %struct.nandc_regs, ptr %401, i32 0, i32 2
  %402 = shl i32 %page_addr, 8
  %and5.i = and i32 %402, -16777216
  %403 = ptrtoint ptr %addr1.i.i204 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %and5.i, ptr %addr1.i.i204, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %404 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %steps, align 4
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef %405, i1 noundef zeroext true, i32 noundef 0)
  br label %if.end78.thread

sw.bb29:                                          ; preds = %pre_command.exit.sw.bb29_crit_edge, %clear_read_regs.exit.i.sw.bb29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %column)
  %cmp31.not = icmp eq i32 %column, 0
  br i1 %cmp31.not, label %sw.bb29.if.end53_crit_edge, label %do.end47, !prof !210

sw.bb29.if.end53_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end47:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1574, i32 noundef 9, ptr noundef null) #12
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %sw.bb29.if.end53_crit_edge
  %406 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %controller.i, align 4
  %regs1.i.i207 = getelementptr inbounds %struct.qcom_nand_controller, ptr %407, i32 0, i32 19
  %408 = ptrtoint ptr %regs1.i.i207 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %regs1.i.i207, align 4
  %addr0.i.i208 = getelementptr inbounds %struct.nandc_regs, ptr %409, i32 0, i32 1
  %410 = tail call i32 @llvm.bswap.i32(i32 %page_addr)
  %411 = lshr i32 %410, 16
  %412 = ptrtoint ptr %addr0.i.i208 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %411, ptr %addr0.i.i208, align 4
  %413 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i212 = getelementptr inbounds %struct.qcom_nand_controller, ptr %414, i32 0, i32 19
  %415 = ptrtoint ptr %regs1.i11.i212 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs1.i11.i212, align 4
  %addr1.i.i213 = getelementptr inbounds %struct.nandc_regs, ptr %416, i32 0, i32 2
  %417 = shl i32 %page_addr, 8
  %and5.i215 = and i32 %417, -16777216
  %418 = ptrtoint ptr %addr1.i.i213 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %and5.i215, ptr %addr1.i.i213, align 4
  br label %if.end78.thread

if.then69:                                        ; preds = %if.end23.i89.i, %if.then21.i86.i, %if.end23.i120.i, %if.then21.i117.i, %if.end26.i.if.then69_crit_edge, %if.end6.i.i136, %if.then5.i.i134, %sw.bb4.if.then69_crit_edge, %if.end6.i.i, %if.then5.i.i
  %call70 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.if.end78_crit_edge, label %do.end75

if.then69.if.end78_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  %dev76 = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %419 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %420, ptr noundef nonnull @.str.69, i32 noundef %command) #15
  br label %if.end78

if.end78.thread:                                  ; preds = %if.end53, %if.end
  tail call fastcc void @free_descs(ptr noundef %1)
  br label %post_command.exit

if.end78:                                         ; preds = %do.end75, %if.then69.if.end78_crit_edge, %pre_command.exit.if.end78_crit_edge, %clear_read_regs.exit.i.if.end78_crit_edge
  tail call fastcc void @free_descs(ptr noundef %1)
  %421 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %controller.i, align 4
  %423 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %423, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %command, label %if.end78.post_command.exit_crit_edge [
    i32 144, label %sw.bb.i
    i32 16, label %cond.true.i.i
    i32 96, label %if.end78.cond.end.i.i_crit_edge
  ]

if.end78.cond.end.i.i_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

if.end78.post_command.exit_crit_edge:             ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %post_command.exit

sw.bb.i:                                          ; preds = %if.end78
  %props.i.i217 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 22
  %424 = ptrtoint ptr %props.i.i217 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %props.i.i217, align 4
  %is_bam.i.i218 = getelementptr inbounds %struct.qcom_nandc_props, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %is_bam.i.i218 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %is_bam.i.i218, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool.not.i.i219 = icmp eq i8 %427, 0
  br i1 %tobool.not.i.i219, label %sw.bb.i.nandc_read_buffer_sync.exit.i_crit_edge, label %if.end.i.i220

sw.bb.i.nandc_read_buffer_sync.exit.i_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_read_buffer_sync.exit.i

if.end.i.i220:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 2
  %428 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 17
  %430 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %429, i32 noundef %431, i32 noundef 192, i32 noundef 2) #12
  br label %nandc_read_buffer_sync.exit.i

nandc_read_buffer_sync.exit.i:                    ; preds = %if.end.i.i220, %sw.bb.i.nandc_read_buffer_sync.exit.i_crit_edge
  %data_buffer.i221 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 11
  %432 = ptrtoint ptr %data_buffer.i221 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %data_buffer.i221, align 4
  %reg_read_buf.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 16
  %434 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %reg_read_buf.i, align 4
  %buf_count.i222 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 13
  %436 = ptrtoint ptr %buf_count.i222 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %buf_count.i222, align 4
  %438 = call ptr @memcpy(ptr %433, ptr %435, i32 %437)
  br label %post_command.exit

cond.true.i.i:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %439 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %steps.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end78.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %440, %cond.true.i.i ], [ 1, %if.end78.cond.end.i.i_crit_edge ]
  %props.i.i.i223 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 22
  %441 = ptrtoint ptr %props.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %props.i.i.i223, align 4
  %is_bam.i.i.i224 = getelementptr inbounds %struct.qcom_nandc_props, ptr %442, i32 0, i32 1
  %443 = ptrtoint ptr %is_bam.i.i.i224 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %is_bam.i.i.i224, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %tobool.not.i.i.i225 = icmp eq i8 %444, 0
  br i1 %tobool.not.i.i.i225, label %cond.end.i.i.nandc_read_buffer_sync.exit.i.i_crit_edge, label %if.end.i.i.i228

cond.end.i.i.nandc_read_buffer_sync.exit.i.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nandc_read_buffer_sync.exit.i.i

if.end.i.i.i228:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i226 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 2
  %445 = ptrtoint ptr %dev.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %dev.i.i.i226, align 4
  %reg_read_dma.i.i.i227 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 17
  %447 = ptrtoint ptr %reg_read_dma.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %reg_read_dma.i.i.i227, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %446, i32 noundef %448, i32 noundef 192, i32 noundef 2) #12
  br label %nandc_read_buffer_sync.exit.i.i

nandc_read_buffer_sync.exit.i.i:                  ; preds = %if.end.i.i.i228, %cond.end.i.i.nandc_read_buffer_sync.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp327.i.i = icmp sgt i32 %cond.i.i, 0
  br i1 %cmp327.i.i, label %for.body.lr.ph.i.i, label %nandc_read_buffer_sync.exit.i.i.post_command.exit_crit_edge

nandc_read_buffer_sync.exit.i.i.post_command.exit_crit_edge: ; preds = %nandc_read_buffer_sync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %post_command.exit

for.body.lr.ph.i.i:                               ; preds = %nandc_read_buffer_sync.exit.i.i
  %reg_read_buf.i.i229 = getelementptr inbounds %struct.qcom_nand_controller, ptr %422, i32 0, i32 16
  %status.i.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 10
  %sub.i.i = add nsw i32 %cond.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end16.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end16.i.i.for.body.i.i_crit_edge ]
  %449 = ptrtoint ptr %reg_read_buf.i.i229 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %reg_read_buf.i.i229, align 4
  %arrayidx.i.i230 = getelementptr i32, ptr %450, i32 %i.028.i.i
  %451 = ptrtoint ptr %arrayidx.i.i230 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %arrayidx.i.i230, align 4
  %453 = tail call i32 @llvm.bswap.i32(i32 %452) #12
  %and.i.i = and i32 %453, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i8.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i8.i, label %for.body.i.i.if.end.i9.i_crit_edge, label %if.then.i.i231

for.body.i.i.if.end.i9.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i9.i

if.then.i.i231:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %454 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %status.i.i, align 4
  %456 = and i8 %455, 127
  store i8 %456, ptr %status.i.i, align 4
  br label %if.end.i9.i

if.end.i9.i:                                      ; preds = %if.then.i.i231, %for.body.i.i.if.end.i9.i_crit_edge
  %and6.i.i = and i32 %453, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i, label %if.end.i9.i.if.then12.i.i_crit_edge

if.end.i9.i.if.then12.i.i_crit_edge:              ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.028.i.i, i32 %sub.i.i)
  %cmp8.i.i = icmp ne i32 %i.028.i.i, %sub.i.i
  %and10.i.i = and i32 %453, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %or.cond.i.i = select i1 %cmp8.i.i, i1 true, i1 %tobool11.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.if.end16.i.i_crit_edge, label %lor.lhs.false.i.i.if.then12.i.i_crit_edge

lor.lhs.false.i.i.if.then12.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i.i

lor.lhs.false.i.i.if.end16.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.then12.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then12.i.i_crit_edge, %if.end.i9.i.if.then12.i.i_crit_edge
  %457 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %status.i.i, align 4
  %459 = or i8 %458, 1
  store i8 %459, ptr %status.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then12.i.i, %lor.lhs.false.i.i.if.end16.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %cond.i.i
  br i1 %exitcond.not.i.i, label %if.end16.i.i.post_command.exit_crit_edge, label %if.end16.i.i.for.body.i.i_crit_edge

if.end16.i.i.for.body.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end16.i.i.post_command.exit_crit_edge:         ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %post_command.exit

post_command.exit:                                ; preds = %if.end16.i.i.post_command.exit_crit_edge, %nandc_read_buffer_sync.exit.i.i.post_command.exit_crit_edge, %nandc_read_buffer_sync.exit.i, %if.end78.post_command.exit_crit_edge, %if.end78.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_nandc_select_chip(ptr nocapture noundef readonly %chip, i32 noundef %chipnr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chipnr)
  %cmp = icmp slt i32 %chipnr, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.71) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qcom_nandc_read_byte(ptr nocapture noundef %chip) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_buffer, align 4
  %last_command = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 11
  %4 = ptrtoint ptr %last_command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_command, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %5)
  %cmp = icmp eq i32 %5, 112
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %status = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 4
  store i8 -64, ptr %status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_start = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_start, align 4
  %buf_count = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %9, 1
  %12 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %buf_start, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ %7, %if.then ], [ %14, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qcom_nandc_read_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %buf_count = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_count, align 4
  %buf_start = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_start, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_buffer, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %5
  %9 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %6)
  %10 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_start, align 4
  %add = add i32 %11, %6
  store i32 %add, ptr %buf_start, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qcom_nandc_write_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %buf_count = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_count, align 4
  %buf_start = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_start, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_buffer, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %5
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %6)
  %10 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_start, align 4
  %add = add i32 %11, %6
  store i32 %add, ptr %buf_start, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_set_features_notsupp(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_block_bad(ptr noundef %chip, i64 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %2 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %ofs, %sh_prom
  %conv = trunc i64 %shr to i32
  %pagemask = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 20
  %4 = ptrtoint ptr %pagemask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagemask, align 8
  %and = and i32 %5, %conv
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %use_ecc, align 4
  %props.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %props.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %props.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.clear_bam_transaction.exit_crit_edge, label %if.end.i

entry.clear_bam_transaction.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 1
  %14 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %15 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %18, 5
  tail call void @sg_init_table(ptr noundef %16, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_sgl.i, align 4
  %21 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %22, 3
  tail call void @sg_init_table(ptr noundef %20, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %12, i32 0, i32 12
  %23 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %entry.clear_bam_transaction.exit_crit_edge
  %24 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller.i, align 4
  %reg_read_pos.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %reg_read_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reg_read_pos.i.i, align 4
  %props.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %25, i32 0, i32 22
  %27 = ptrtoint ptr %props.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %props.i.i.i, align 4
  %is_bam.i.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %is_bam.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_bam.i.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i.i, label %clear_bam_transaction.exit.clear_read_regs.exit.i_crit_edge, label %if.end.i.i.i

clear_bam_transaction.exit.clear_read_regs.exit.i_crit_edge: ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_read_regs.exit.i

if.end.i.i.i:                                     ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i.i, align 4
  %reg_read_dma.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %25, i32 0, i32 17
  %33 = ptrtoint ptr %reg_read_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_read_dma.i.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %32, i32 noundef %34, i32 noundef 192, i32 noundef 2) #12
  br label %clear_read_regs.exit.i

clear_read_regs.exit.i:                           ; preds = %if.end.i.i.i, %clear_bam_transaction.exit.clear_read_regs.exit.i_crit_edge
  %35 = ptrtoint ptr %use_ecc to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_ecc, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i36 = icmp eq i8 %36, 0
  %cw_data.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 4
  %cw_size.i = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 3
  %cond.in.i = select i1 %tobool.not.i36, ptr %cw_size.i, ptr %cw_data.i
  %37 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %data_buffer.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %25, i32 0, i32 11
  %38 = ptrtoint ptr %data_buffer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data_buffer.i, align 4
  %40 = call ptr @memset(ptr %39, i32 255, i32 %cond.i)
  %41 = ptrtoint ptr %cw_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cw_size.i, align 4
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %43 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %steps.i, align 4
  %sub.i = add i32 %44, 65535
  %mul.i37 = mul i32 %sub.i, %42
  %conv.i = trunc i32 %mul.i37 to i16
  %45 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %controller.i, align 4
  %regs1.i.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %regs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs1.i.i.i, align 4
  %addr0.i.i.i = getelementptr inbounds %struct.nandc_regs, ptr %48, i32 0, i32 1
  %shl.i.i = shl i32 %and, 16
  %options.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %49 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %options.i.i, align 8
  %51 = trunc i32 %50 to i16
  %52 = lshr i16 %51, 1
  %53 = and i16 %52, 1
  %spec.select.i.i = lshr i16 %conv.i, %53
  %conv3.i.i = zext i16 %spec.select.i.i to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %55 = ptrtoint ptr %addr0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %addr0.i.i.i, align 4
  %56 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %regs1.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs1.i11.i.i, align 4
  %addr1.i.i.i = getelementptr inbounds %struct.nandc_regs, ptr %59, i32 0, i32 2
  %60 = shl i32 %and, 8
  %and5.i.i = and i32 %60, -16777216
  %61 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and5.i.i, ptr %addr1.i.i.i, align 4
  %62 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %steps.i, align 4
  %sub5.i = add i32 %63, -1
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef 1, i1 noundef zeroext true, i32 noundef %sub5.i) #12
  %64 = ptrtoint ptr %use_ecc to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %use_ecc, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool7.i = icmp ne i8 %65, 0
  %66 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %steps.i, align 4
  %sub9.i = add i32 %67, -1
  tail call fastcc void @config_nand_page_read(ptr noundef %chip) #12
  tail call fastcc void @config_nand_cw_read(ptr noundef %chip, i1 noundef zeroext %tobool7.i, i32 noundef %sub9.i) #12
  %68 = ptrtoint ptr %data_buffer.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data_buffer.i, align 4
  tail call fastcc void @read_data_dma(ptr noundef %25, i32 noundef 256, ptr noundef %69, i32 noundef %cond.i) #12
  %call12.i = tail call fastcc i32 @submit_descs(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end, label %copy_last_cw.exit

copy_last_cw.exit:                                ; preds = %clear_read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %25, i32 0, i32 2
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.76) #15
  tail call fastcc void @free_descs(ptr noundef %25) #12
  br label %err

if.end:                                           ; preds = %clear_read_regs.exit.i
  tail call fastcc void @free_descs(ptr noundef %25) #12
  %72 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %controller.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %73, i32 0, i32 22
  %74 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i.i, label %if.end.check_flash_errors.exit_crit_edge, label %if.end.i.i

if.end.check_flash_errors.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_flash_errors.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %73, i32 0, i32 2
  %78 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %73, i32 0, i32 17
  %80 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %79, i32 noundef %81, i32 noundef 192, i32 noundef 2) #12
  br label %check_flash_errors.exit

check_flash_errors.exit:                          ; preds = %if.end.i.i, %if.end.check_flash_errors.exit_crit_edge
  %reg_read_buf.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %73, i32 0, i32 16
  %82 = ptrtoint ptr %reg_read_buf.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_read_buf.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %86 = and i32 %85, 268500992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i40 = icmp eq i32 %86, 0
  br i1 %tobool.not.i40, label %if.end8, label %do.end

do.end:                                           ; preds = %check_flash_errors.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.74) #15
  br label %err

if.end8:                                          ; preds = %check_flash_errors.exit
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %89 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %writesize, align 4
  %91 = ptrtoint ptr %cw_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cw_size.i, align 4
  %93 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %steps.i, align 4
  %sub = add i32 %94, -1
  %mul = mul i32 %sub, %92
  %sub9 = sub i32 %90, %mul
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 11
  %95 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data_buffer, align 4
  %arrayidx = getelementptr i8, ptr %96, i32 %sub9
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %98)
  %cmp = icmp ne i8 %98, -1
  %99 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %options.i.i, align 8
  %and12 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %brmerge = select i1 %tobool13.not, i1 true, i1 %cmp
  %not.tobool13.not = xor i1 %tobool13.not, true
  %cmp.mux = select i1 %not.tobool13.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end8.err_crit_edge, label %lor.rhs

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

lor.rhs:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %sub9, 1
  %arrayidx17 = getelementptr i8, ptr %96, i32 %add
  %101 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %cmp19 = icmp ne i8 %102, -1
  br label %err

err:                                              ; preds = %lor.rhs, %if.end8.err_crit_edge, %do.end, %copy_last_cw.exit
  %bad.0.shrunk = phi i1 [ false, %copy_last_cw.exit ], [ false, %do.end ], [ %cmp.mux, %if.end8.err_crit_edge ], [ %cmp19, %lor.rhs ]
  %bad.0 = zext i1 %bad.0.shrunk to i32
  ret i32 %bad.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_nandc_block_markbad(ptr noundef %chip, i64 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %reg_read_pos.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %reg_read_pos.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg_read_pos.i, align 4
  %props.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props.i.i, align 4
  %is_bam.i.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %is_bam.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_bam.i.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %entry.clear_read_regs.exit_crit_edge, label %if.end.i.i

entry.clear_read_regs.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_read_regs.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %reg_read_dma.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %reg_read_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_read_dma.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %8, i32 noundef %10, i32 noundef 192, i32 noundef 2) #12
  br label %clear_read_regs.exit

clear_read_regs.exit:                             ; preds = %if.end.i.i, %entry.clear_read_regs.exit_crit_edge
  %11 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props.i.i, align 4
  %is_bam.i = getelementptr inbounds %struct.qcom_nandc_props, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %is_bam.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_bam.i, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge, label %if.end.i

clear_read_regs.exit.clear_bam_transaction.exit_crit_edge: ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_bam_transaction.exit

if.end.i:                                         ; preds = %clear_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bam_txn1.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %bam_txn1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bam_txn1.i, align 4
  %bam_ce_pos.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 3
  %last_data_desc.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %last_data_desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %last_data_desc.i, align 4
  %cmd_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 1
  %18 = call ptr @memset(ptr %bam_ce_pos.i, i32 0, i32 33)
  %19 = ptrtoint ptr %cmd_sgl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_sgl.i, align 4
  %max_cwperpage.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_cwperpage.i, align 4
  %mul.i = shl i32 %22, 5
  tail call void @sg_init_table(ptr noundef %20, i32 noundef %mul.i) #12
  %data_sgl.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %data_sgl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_sgl.i, align 4
  %25 = ptrtoint ptr %max_cwperpage.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_cwperpage.i, align 4
  %mul3.i = shl i32 %26, 3
  tail call void @sg_init_table(ptr noundef %24, i32 noundef %mul3.i) #12
  %txn_done.i = getelementptr inbounds %struct.bam_transaction, ptr %16, i32 0, i32 12
  %27 = ptrtoint ptr %txn_done.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %txn_done.i, align 4
  br label %clear_bam_transaction.exit

clear_bam_transaction.exit:                       ; preds = %if.end.i, %clear_read_regs.exit.clear_bam_transaction.exit_crit_edge
  %data_buffer = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data_buffer, align 4
  %cw_size = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 3
  %30 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cw_size, align 4
  %32 = call ptr @memset(ptr %29, i32 0, i32 %31)
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %33 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %34 to i64
  %shr = ashr i64 %ofs, %sh_prom
  %conv = trunc i64 %shr to i32
  %pagemask = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 20
  %35 = ptrtoint ptr %pagemask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagemask, align 8
  %and = and i32 %36, %conv
  %use_ecc = getelementptr inbounds %struct.qcom_nand_host, ptr %chip, i32 0, i32 5
  %37 = ptrtoint ptr %use_ecc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %use_ecc, align 4
  %38 = load i32, ptr %cw_size, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %39 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %steps, align 4
  %sub = add i32 %40, 65535
  %mul = mul i32 %sub, %38
  %conv4 = trunc i32 %mul to i16
  %41 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controller.i, align 4
  %regs1.i.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs1.i.i, align 4
  %addr0.i.i = getelementptr inbounds %struct.nandc_regs, ptr %44, i32 0, i32 1
  %shl.i = shl i32 %and, 16
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %45 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %options.i, align 8
  %47 = trunc i32 %46 to i16
  %48 = lshr i16 %47, 1
  %49 = and i16 %48, 1
  %spec.select.i = lshr i16 %conv4, %49
  %conv3.i = zext i16 %spec.select.i to i32
  %or.i = or i32 %shl.i, %conv3.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %51 = ptrtoint ptr %addr0.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %addr0.i.i, align 4
  %52 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %controller.i, align 4
  %regs1.i11.i = getelementptr inbounds %struct.qcom_nand_controller, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %regs1.i11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs1.i11.i, align 4
  %addr1.i.i = getelementptr inbounds %struct.nandc_regs, ptr %55, i32 0, i32 2
  %56 = shl i32 %and, 8
  %and5.i = and i32 %56, -16777216
  %57 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and5.i, ptr %addr1.i.i, align 4
  %58 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %steps, align 4
  %sub6 = add i32 %59, -1
  tail call fastcc void @update_rw_regs(ptr noundef %chip, i32 noundef 1, i1 noundef zeroext false, i32 noundef %sub6)
  tail call fastcc void @config_nand_page_write(ptr noundef %chip)
  %60 = ptrtoint ptr %data_buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_buffer, align 4
  %62 = ptrtoint ptr %cw_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cw_size, align 4
  %64 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %props.i.i, align 4
  %is_bam.i37 = getelementptr inbounds %struct.qcom_nandc_props, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %is_bam.i37 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %is_bam.i37, align 4, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i38 = icmp eq i8 %67, 0
  br i1 %tobool.not.i38, label %if.end.i39, label %if.then.i

if.then.i:                                        ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @prep_bam_dma_desc_data(ptr noundef %1, i1 noundef zeroext false, ptr noundef %61, i32 noundef %63, i32 noundef 0) #12
  br label %write_data_dma.exit

if.end.i39:                                       ; preds = %clear_bam_transaction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @prep_adm_dma_desc(ptr noundef %1, i1 noundef zeroext false, i32 noundef 256, ptr noundef %61, i32 noundef %63, i1 noundef zeroext false) #12
  br label %write_data_dma.exit

write_data_dma.exit:                              ; preds = %if.end.i39, %if.then.i
  tail call fastcc void @config_nand_cw_write(ptr noundef %chip)
  %call10 = tail call fastcc i32 @submit_descs(ptr noundef %1)
  tail call fastcc void @free_descs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %write_data_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.qcom_nand_controller, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.78) #15
  br label %cleanup

if.end:                                           ; preds = %write_data_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !68, !70, !71, !72, !74, !75, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !143, !144, !145, !147, !149, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_qcom_nandc__256_3200_qcom_nandc_driver_init6, !1, !"__initcall__kmod_qcom_nandc__256_3200_qcom_nandc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3200, i32 1}
!2 = !{ptr @__exitcall_qcom_nandc_driver_exit, !1, !"__exitcall_qcom_nandc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author257, !4, !"__UNIQUE_ID_author257", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3202, i32 1}
!5 = !{ptr @__UNIQUE_ID_description258, !6, !"__UNIQUE_ID_description258", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3203, i32 1}
!7 = !{ptr @__UNIQUE_ID_file259, !8, !"__UNIQUE_ID_file259", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3204, i32 1}
!9 = !{ptr @__UNIQUE_ID_license260, !8, !"__UNIQUE_ID_license260", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3194, i32 11}
!12 = !{ptr @qcom_nandc_driver, !13, !"qcom_nandc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3192, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3045, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qcom_nandc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qcom_nandc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3051, i32 38}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3055, i32 37}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3010, i32 34}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3013, i32 4}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qcom_nandc_parse_dt._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @qcom_nandc_parse_dt._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3017, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3020, i32 4}
!37 = !{ptr @qcom_nandc_parse_dt._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_nandc_parse_dt._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2761, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qcom_nandc_alloc._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @qcom_nandc_alloc._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2796, i32 4}
!46 = !{ptr @qcom_nandc_alloc._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @qcom_nandc_alloc._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2800, i32 49}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2805, i32 11}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2809, i32 49}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2814, i32 11}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2818, i32 50}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2823, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2836, i32 4}
!62 = !{ptr @qcom_nandc_alloc._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qcom_nandc_alloc._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2842, i32 46}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2847, i32 11}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @init_completion.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../include/linux/completion.h", i32 87, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nand_controller_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @qcom_nandc_ops, !79, !"qcom_nandc_ops", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2728, i32 41}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2584, i32 3}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qcom_nand_attach_chip._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qcom_nand_attach_chip._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2719, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qcom_nand_attach_chip.__UNIQUE_ID_ddebug255, !86, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!89 = !{ptr @qcom_nandc_ecc_caps, !90, !"qcom_nandc_ecc_caps", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2559, i32 1}
!91 = !{ptr @qcom_nandc_ecc_caps_stepinfo, !90, !"qcom_nandc_ecc_caps_stepinfo", i1 false, i1 false}
!92 = !{ptr @qcom_nandc_ecc_caps_strengths, !90, !"qcom_nandc_ecc_caps_strengths", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 1998, i32 3}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @read_page_ecc._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @read_page_ecc._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 821, i32 3}
!100 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @prepare_bam_async_desc._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @prepare_bam_async_desc._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 833, i32 3}
!105 = !{ptr @prepare_bam_async_desc._entry.43, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @prepare_bam_async_desc._entry_ptr.45, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 1004, i32 3}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @prep_adm_dma_desc._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @prep_adm_dma_desc._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 1010, i32 3}
!114 = !{ptr @prep_adm_dma_desc._entry.48, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @prep_adm_dma_desc._entry_ptr.50, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 1743, i32 3}
!118 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @qcom_nandc_read_cw_raw._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @qcom_nandc_read_cw_raw._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2157, i32 3}
!123 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qcom_nandc_write_page._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @qcom_nandc_write_page._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2230, i32 3}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @qcom_nandc_write_page_raw._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @qcom_nandc_write_page_raw._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2282, i32 3}
!133 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @qcom_nandc_write_oob._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @qcom_nandc_write_oob._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @qcom_nand_ooblayout_ops, !137, !"qcom_nand_ooblayout_ops", i1 false, i1 false}
!137 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2549, i32 39}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2914, i32 33}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2916, i32 3}
!142 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @qcom_nand_host_init_and_register._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @qcom_nand_host_init_and_register._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2921, i32 46}
!147 = !{ptr @qcom_nand_host_init_and_register._entry.63, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2962, i32 4}
!149 = !{ptr @qcom_nand_host_init_and_register._entry_ptr.64, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 1586, i32 3}
!154 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qcom_nandc_command._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @qcom_nandc_command._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 1595, i32 4}
!159 = !{ptr @qcom_nandc_command._entry.68, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @qcom_nandc_command._entry_ptr.70, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2423, i32 2}
!163 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @qcom_nandc_select_chip._entry, !162, !"_entry", i1 false, i1 false}
!166 = !{ptr @qcom_nandc_select_chip._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2313, i32 3}
!169 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @qcom_nandc_block_bad._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @qcom_nandc_block_bad._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2033, i32 3}
!174 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @copy_last_cw._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @copy_last_cw._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2361, i32 3}
!179 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qcom_nandc_block_markbad._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qcom_nandc_block_markbad._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2903, i32 40}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2903, i32 55}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2903, i32 65}
!188 = !{ptr @probes, !189, !"probes", i1 false, i1 false}
!189 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 2903, i32 27}
!190 = !{ptr @qcom_nandc_of_match, !191, !"qcom_nandc_of_match", i1 false, i1 false}
!191 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3167, i32 34}
!192 = !{ptr @ipq806x_nandc_props, !193, !"ipq806x_nandc_props", i1 false, i1 false}
!193 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3135, i32 38}
!194 = !{ptr @ipq4019_nandc_props, !195, !"ipq4019_nandc_props", i1 false, i1 false}
!195 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3141, i32 38}
!196 = !{ptr @ipq8074_nandc_props, !197, !"ipq8074_nandc_props", i1 false, i1 false}
!197 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3148, i32 38}
!198 = !{ptr @sdx55_nandc_props, !199, !"sdx55_nandc_props", i1 false, i1 false}
!199 = !{!"../drivers/mtd/nand/raw/qcom_nandc.c", i32 3155, i32 38}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i8 0, i8 2}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i64 2153919316}
!212 = !{i64 6377194}
!213 = !{i64 6377612}
!214 = !{i64 2153917961}
!215 = !{i64 2148809124, i64 2148809129, i64 2148809142, i64 2148809186, i64 2148809220, i64 2148809241}
!216 = !{!"branch_weights", i32 1, i32 2000}
!217 = !{i64 2153941639, i64 2153942131, i64 2153941676, i64 2153941732, i64 2153941766, i64 2153941790, i64 2153941831, i64 2153941852, i64 2153941880, i64 2153941914}
!218 = !{i64 2153935320, i64 2153935812, i64 2153935357, i64 2153935413, i64 2153935447, i64 2153935471, i64 2153935512, i64 2153935533, i64 2153935561, i64 2153935595}
!219 = !{i64 2153936930, i64 2153937422, i64 2153936967, i64 2153937023, i64 2153937057, i64 2153937081, i64 2153937122, i64 2153937143, i64 2153937171, i64 2153937205}
