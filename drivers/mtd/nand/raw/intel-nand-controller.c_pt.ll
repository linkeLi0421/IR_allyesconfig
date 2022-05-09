; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/intel-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/intel-nand-controller.c"
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
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ebu_nand_controller = type { %struct.nand_controller, %struct.nand_chip, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, ptr, i32, i8, [2 x %struct.ebu_nand_cs] }
%struct.nand_controller = type { %struct.mutex, ptr }
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
%struct.ebu_nand_cs = type { ptr, i32, i32 }
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
%struct.mtd_oob_region = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_intel_nand_controller__253_734_ebu_nand_driver_init6 = internal global ptr @ebu_nand_driver_init, section ".initcall6.init", align 4
@ebu_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ebu_nand_probe, ptr @ebu_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ebu_nand_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ebu_nand_driver_exit = internal global ptr @ebu_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file254 = internal constant [70 x i8] c"intel_nand_controller.file=drivers/mtd/nand/raw/intel-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [37 x i8] c"intel_nand_controller.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [87 x i8] c"intel_nand_controller.author=Vadivel Murugan R <vadivel.muruganx.ramuthevar@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [82 x i8] c"intel_nand_controller.description=Intel's LGM External Bus NAND Controller driver\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"intel-nand-controller\00", [42 x i8] zeroinitializer }, align 32
@ebu_nand_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-ebunand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ebunand\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsnand\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 609, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get chip select: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ebu_nand_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/mtd/nand/raw/intel-nand-controller.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry_ptr = internal global ptr @ebu_nand_probe._entry, section ".printk_index", align 4
@ebu_nand_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 613, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"got invalid chip select: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry_ptr.11 = internal global ptr @ebu_nand_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nand_cs%d\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 633, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry_ptr.16 = internal global ptr @ebu_nand_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request DMA tx chan!.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request DMA rx chan!.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"addr_sel%d\00", [21 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 667, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NAND label property is mandatory\0A\00", [62 x i8] zeroinitializer }, align 32
@ebu_nand_probe._entry_ptr.24 = internal global ptr @ebu_nand_probe._entry.22, section ".printk_index", align 4
@ebu_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @ebu_nand_attach_chip, ptr null, ptr @ebu_nand_exec_op, ptr @ebu_nand_set_timings }, [16 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@ecc_strength = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\01\04\08\18 (<", [24 x i8] zeroinitializer }, align 32
@ebu_nand_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @ebu_nand_ooblayout_ecc, ptr @ebu_nand_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@ebu_dma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 315, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to map DMA buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ebu_dma_start\00", [18 x i8] zeroinitializer }, align 32
@ebu_dma_start._entry_ptr = internal global ptr @ebu_dma_start._entry, section ".printk_index", align 4
@ebu_dma_start._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.6, i32 332, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_submit_error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ebu_dma_start._entry_ptr.31 = internal global ptr @ebu_dma_start._entry.29, section ".printk_index", align 4
@ebu_dma_start._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.6, i32 344, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I/O Error in DMA RX (status %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ebu_dma_start._entry_ptr.34 = internal global ptr @ebu_dma_start._entry.32, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"ebu_nand_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 725, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 729, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"ebu_nand_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 718, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 597, i32 59 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 602, i32 59 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 607, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 609, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 613, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 619, i32 44 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 629, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 633, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 638, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 641, i32 9 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 645, i32 43 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 648, i32 9 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 653, i32 44 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 667, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [24 x i8] c"ebu_nand_controller_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 564, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1105, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 464, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"ecc_strength\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 446, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant [23 x i8] c"ebu_nand_ooblayout_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 267, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 315, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 332, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private constant [48 x i8] c"../drivers/mtd/nand/raw/intel-nand-controller.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 343, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 326, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 87, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1169, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_ebu_nand_driver_exit, ptr @__initcall__kmod_intel_nand_controller__253_734_ebu_nand_driver_init6, ptr @ebu_dma_start._entry, ptr @ebu_dma_start._entry.29, ptr @ebu_dma_start._entry.32, ptr @ebu_dma_start._entry_ptr, ptr @ebu_dma_start._entry_ptr.31, ptr @ebu_dma_start._entry_ptr.34, ptr @ebu_nand_driver_exit, ptr @ebu_nand_probe._entry, ptr @ebu_nand_probe._entry.14, ptr @ebu_nand_probe._entry.22, ptr @ebu_nand_probe._entry.9, ptr @ebu_nand_probe._entry_ptr, ptr @ebu_nand_probe._entry_ptr.11, ptr @ebu_nand_probe._entry_ptr.16, ptr @ebu_nand_probe._entry_ptr.24, ptr @ebu_nand_driver, ptr @.str, ptr @ebu_nand_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @ebu_nand_controller_ops, ptr @nand_controller_init.__key, ptr @.str.25, ptr @.str.26, ptr @ecc_strength, ptr @ebu_nand_ooblayout_ops, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_strength to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_nand_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_dma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_dma_start._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebu_dma_start._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ebu_nand_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebu_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ebu_nand_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #8
  %0 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cs, align 4, !annotation !98
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2384, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @nand_controller_init.__key) #8
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #8
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #8
  %ebu = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %ebu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %ebu, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #8
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #8
  %hsnand = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %hsnand to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %hsnand, align 8
  %cmp.i214 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call.i215 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %cs, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool22.not = icmp eq i32 %call.i215, 0
  br i1 %tobool22.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call.i215) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %6 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %7) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %conv = trunc i32 %7 to i8
  %cs_num = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %cs_num to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %cs_num, align 8
  %call30 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %7) #8
  %call31 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %call30) #8
  %call32 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call31) #8
  %9 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cs, align 4
  %arrayidx = getelementptr %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 12, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call31, align 4
  %nand_pa = getelementptr %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 12, i32 %10, i32 1
  %14 = ptrtoint ptr %nand_pa to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nand_pa, align 4
  %cmp.i216 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end29
  %call46 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call46, ptr %clk, align 8
  %cmp.i217 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call46 to i32
  %call52 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %call.i218 = call i32 @clk_prepare(ptr noundef %call46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.do.end60_crit_edge

if.end53.do.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.end.i:                                         ; preds = %if.end53
  %call1.i = call i32 @clk_enable(ptr noundef %call46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end61, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call46) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then3.i, %if.end53.do.end60_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i218, %if.end53.do.end60_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end61:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 8
  %call63 = call i32 @clk_get_rate(ptr noundef %19) #8
  %clk_rate = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call63, ptr %clk_rate, align 4
  %call64 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  %dma_tx = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call64, ptr %dma_tx, align 4
  %cmp.i219 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call64 to i32
  %call70 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @.str.18) #8
  br label %err_disable_unprepare_clk

if.end71:                                         ; preds = %if.end61
  %call72 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  %dma_rx = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call72, ptr %dma_rx, align 8
  %cmp.i220 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call72 to i32
  %call78 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %24, ptr noundef nonnull @.str.20) #8
  %25 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dma_rx, align 8
  br label %err_cleanup_dma

if.end80:                                         ; preds = %if.end71
  %26 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cs, align 4
  %call81 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.21, i32 noundef %27) #8
  %call82 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %call81) #8
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.end80.err_cleanup_dma_crit_edge, label %if.end85

if.end80.err_cleanup_dma_crit_edge:               ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup_dma

if.end85:                                         ; preds = %if.end80
  %28 = ptrtoint ptr %call82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call82, align 4
  %30 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cs, align 4
  %addr_sel = getelementptr %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 12, i32 %31, i32 2
  %32 = ptrtoint ptr %addr_sel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %addr_sel, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cs, align 4
  %addr_sel94 = getelementptr %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 12, i32 %34, i32 2
  %35 = ptrtoint ptr %addr_sel94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr_sel94, align 4
  %or95 = or i32 %36, 81
  %37 = call i32 @llvm.bswap.i32(i32 %or95)
  %38 = ptrtoint ptr %ebu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ebu, align 4
  %mul = shl i32 %34, 2
  %add = add i32 %mul, 32
  %add.ptr = getelementptr i8, ptr %39, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #8, !srcloc !100
  %chip = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %42 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %43 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %nand_set_flash_node.exit, label %if.end85.if.end105_crit_edge

if.end85.if.end105_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

nand_set_flash_node.exit:                         ; preds = %if.end85
  %call.i.i = call i32 @of_property_read_string(ptr noundef %41, ptr noundef nonnull @.str.26, ptr noundef %name.i.i) #8
  %45 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load ptr, ptr %name.i.i, align 8
  %tobool99.not = icmp eq ptr %.pr, null
  br i1 %tobool99.not, label %do.end103, label %nand_set_flash_node.exit.if.end105_crit_edge

nand_set_flash_node.exit.if.end105_crit_edge:     ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

do.end103:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.23) #11
  br label %err_cleanup_dma

if.end105:                                        ; preds = %nand_set_flash_node.exit.if.end105_crit_edge, %if.end85.if.end105_crit_edge
  %parent = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev1, ptr %parent, align 8
  %49 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev1, ptr %dev2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %priv1.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 1, i32 34
  %51 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %priv1.i, align 8
  %controller111 = getelementptr inbounds %struct.ebu_nand_controller, ptr %call.i, i32 0, i32 1, i32 32
  %52 = ptrtoint ptr %controller111 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %controller111, align 4
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ebu_nand_controller_ops, ptr %ops, align 4
  %call.i221 = call i32 @nand_scan_with_ids(ptr noundef %chip, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool115.not = icmp eq i32 %call.i221, 0
  br i1 %tobool115.not, label %if.end117, label %if.end105.err_cleanup_dma_crit_edge

if.end105.err_cleanup_dma_crit_edge:              ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup_dma

if.end117:                                        ; preds = %if.end105
  %call118 = call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end117.cleanup_crit_edge, label %err_clean_nand

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_clean_nand:                                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  call void @nand_cleanup(ptr noundef %chip) #8
  br label %err_cleanup_dma

err_cleanup_dma:                                  ; preds = %err_clean_nand, %if.end105.err_cleanup_dma_crit_edge, %do.end103, %if.end80.err_cleanup_dma_crit_edge, %if.then75
  %ret.0 = phi i32 [ %call78, %if.then75 ], [ %call.i221, %if.end105.err_cleanup_dma_crit_edge ], [ %call118, %err_clean_nand ], [ -22, %do.end103 ], [ -22, %if.end80.err_cleanup_dma_crit_edge ]
  call fastcc void @ebu_dma_cleanup(ptr noundef nonnull %call.i)
  br label %err_disable_unprepare_clk

err_disable_unprepare_clk:                        ; preds = %err_cleanup_dma, %if.then67
  %ret.1 = phi i32 [ %call70, %if.then67 ], [ %ret.0, %err_cleanup_dma ]
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %55) #8
  call void @clk_unprepare(ptr noundef %55) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_unprepare_clk, %if.end117.cleanup_crit_edge, %do.end60, %if.then49, %if.then40, %do.end28, %do.end, %if.then17, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then8 ], [ %5, %if.then17 ], [ %call.i215, %do.end ], [ -22, %do.end28 ], [ %15, %if.then40 ], [ %call52, %if.then49 ], [ %retval.0.i.ph, %do.end60 ], [ %ret.1, %err_disable_unprepare_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 709, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip) #8
  %priv.i.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 1, i32 34
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %ebu.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ebu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ebu.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !100
  %dma_rx.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %7) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dma_tx.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_tx.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.ebu_dma_cleanup.exit_crit_edge, label %if.then3.i

if.end.i.ebu_dma_cleanup.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ebu_dma_cleanup.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %9) #8
  br label %ebu_dma_cleanup.exit

ebu_dma_cleanup.exit:                             ; preds = %if.then3.i, %if.end.i.ebu_dma_cleanup.exit_crit_edge
  %clk = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ebu_dma_cleanup(ptr nocapture noundef readonly %ebu_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 6
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_tx = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 5
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_attach_chip(ptr nocapture noundef %chip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %strength, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %writesize3 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize3, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erasesize, align 8
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 512, label %entry.sw.epilog_crit_edge
    i32 1024, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %size, align 8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 32, %sw.bb11 ], [ 4, %entry.sw.epilog_crit_edge ]
  %start.0 = phi i32 [ 4, %sw.bb11 ], [ 1, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  %spec.store.select74 = select i1 %tobool12.not, i32 %.sink, i32 %3
  %or = or i32 %start.0, 3
  %add15 = add nuw nsw i32 %or, 1
  %arrayidx = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %start.0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv)
  %cmp16 = icmp eq i32 %spec.store.select74, %conv
  br i1 %cmp16, label %sw.epilog.for.end_crit_edge, label %for.inc

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %sw.epilog
  %inc = add nuw nsw i32 %start.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0, i32 %or)
  %cmp.not.not = icmp ult i32 %start.0, %or
  br i1 %cmp.not.not, label %for.body.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %inc
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv.1)
  %cmp16.1 = icmp eq i32 %spec.store.select74, %conv.1
  br i1 %cmp16.1, label %for.body.1.for.end_crit_edge, label %for.inc.1

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.body.1
  %inc.1 = or i32 %start.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %or)
  %cmp.not.not.1 = icmp ult i32 %inc, %or
  br i1 %cmp.not.not.1, label %for.body.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %inc.1
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv.2)
  %cmp16.2 = icmp eq i32 %spec.store.select74, %conv.2
  br i1 %cmp16.2, label %for.body.2.for.end_crit_edge, label %for.inc.2

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %for.body.2
  %inc.2 = add nuw nsw i32 %start.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.1, i32 %or)
  %cmp.not.not.2 = icmp ult i32 %inc.1, %or
  br i1 %cmp.not.not.2, label %for.body.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %inc.2
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv.3)
  %cmp16.3 = icmp eq i32 %spec.store.select74, %conv.3
  br i1 %cmp16.3, label %for.body.3.for.end_crit_edge, label %for.inc.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.3:                                        ; preds = %for.body.3
  %inc.3 = add nuw nsw i32 %start.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.2, i32 %or)
  %cmp.not.not.3 = icmp ult i32 %inc.2, %or
  br i1 %cmp.not.not.3, label %for.body.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %inc.3
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv.4)
  %cmp16.4 = icmp eq i32 %spec.store.select74, %conv.4
  br i1 %cmp16.4, label %for.body.4.for.end_crit_edge, label %for.inc.4

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.4:                                        ; preds = %for.body.4
  %inc.4 = add nuw nsw i32 %start.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.3, i32 %or)
  %cmp.not.not.4 = icmp ult i32 %inc.3, %or
  br i1 %cmp.not.not.4, label %for.body.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.5:                                       ; preds = %for.inc.4
  %arrayidx.5 = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %inc.4
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv.5)
  %cmp16.5 = icmp eq i32 %spec.store.select74, %conv.5
  br i1 %cmp16.5, label %for.body.5.for.end_crit_edge, label %for.inc.5

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.5:                                        ; preds = %for.body.5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.4, i32 %or)
  %cmp.not.not.5 = icmp ult i32 %inc.4, %or
  br i1 %cmp.not.not.5, label %for.body.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.6:                                       ; preds = %for.inc.5
  %inc.5 = add nuw nsw i32 %start.0, 6
  %arrayidx.6 = getelementptr [8 x i8], ptr @ecc_strength, i32 0, i32 %inc.5
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select74, i32 %conv.6)
  %cmp16.6 = icmp eq i32 %spec.store.select74, %conv.6
  br i1 %cmp16.6, label %for.body.6.for.end_crit_edge, label %for.body.6.cleanup_crit_edge

for.body.6.cleanup_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %val.0113.lcssa = phi i32 [ %start.0, %sw.epilog.for.end_crit_edge ], [ %inc, %for.body.1.for.end_crit_edge ], [ %inc.1, %for.body.2.for.end_crit_edge ], [ %inc.2, %for.body.3.for.end_crit_edge ], [ %inc.3, %for.body.4.for.end_crit_edge ], [ %inc.4, %for.body.5.for.end_crit_edge ], [ %inc.5, %for.body.6.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0113.lcssa, i32 %add15)
  %cmp20 = icmp eq i32 %val.0113.lcssa, %add15
  br i1 %cmp20, label %for.end.cleanup_crit_edge, label %if.end23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.store.select74)
  %cmp24 = icmp eq i32 %spec.store.select74, 8
  br i1 %cmp24, label %if.end23.if.end31_crit_edge, label %if.else

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %mul, i1 true) #8, !range !103
  %sub.i = sub nuw nsw i32 32, %26
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %mul28 = mul i32 %spec.store.select74, %cond.i
  %sub30 = add i32 %mul28, 7
  %div103 = lshr i32 %sub30, 3
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end23.if.end31_crit_edge
  %ecc_bytes.0 = phi i32 [ %div103, %if.else ], [ 14, %if.end23.if.end31_crit_edge ]
  %div32 = udiv i32 %7, %5
  %mul33 = mul i32 %div32, %ecc_bytes.0
  %add34 = add i32 %mul33, 8
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %27 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %28)
  %cmp35 = icmp ugt i32 %add34, %28
  br i1 %cmp35, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %total = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 6
  %29 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul33, ptr %total, align 8
  %shr = lshr i32 %7, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %tobool.not.i104 = icmp ult i32 %7, 2048
  %30 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #8, !range !103
  %sub.i105 = sub nuw nsw i32 32, %30
  %cond.i106 = select i1 %tobool.not.i104, i32 0, i32 %sub.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i106)
  %cmp41 = icmp ugt i32 %cond.i106, 3
  br i1 %cmp41, label %if.end38.cleanup_crit_edge, label %if.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %div45 = udiv i32 %9, %7
  %shr46 = lshr i32 %div45, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div45)
  %tobool.not.i107 = icmp ult i32 %div45, 64
  %31 = tail call i32 @llvm.ctlz.i32(i32 %shr46, i1 true) #8, !range !103
  %32 = sub nuw nsw i32 32, %31
  %.op112 = lshr i32 %32, 3
  %div48110.zext = select i1 %tobool.not.i107, i32 0, i32 %.op112
  %or53 = or i32 %cond.i106, %div48110.zext
  %shl = shl i32 %val.0113.lcssa, 29
  %or57 = or i32 %or53, %shl
  %or58 = or i32 %or57, 2359296
  %nd_para0 = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %nd_para0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or58, ptr %nd_para0, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %34 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ebu_nand_ooblayout_ops, ptr %ooblayout1.i, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %35 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ebu_nand_read_page_hwecc, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %36 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ebu_nand_write_page_hwecc, ptr %write_page, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end38.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then ], [ -22, %for.end.cleanup_crit_edge ], [ -34, %if.end31.cleanup_crit_edge ], [ -34, %if.end38.cleanup_crit_edge ], [ -22, %for.body.6.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ], [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %ebu.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ebu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ebu.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 176
  %cs_num.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %cs_num.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cs_num.i, align 8
  %conv.i = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %shl1.i = shl nuw nsw i32 %conv.i, 10
  %or.i = or i32 %shl.i, %shl1.i
  %or3.i = or i32 %or.i, 15991027
  %6 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !100
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp68.not = icmp eq i32 %8, 0
  br i1 %cmp68.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %ret.071 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc19.for.body_crit_edge ]
  %op_id.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %9 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %10, i32 %op_id.069
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %12, label %for.body.for.inc19_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.cond2.preheader
    i32 2, label %sw.bb8
    i32 3, label %sw.bb11
    i32 4, label %sw.bb16
  ]

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.cond2.preheader:                              ; preds = %for.body
  %ctx3 = getelementptr %struct.nand_op_instr, ptr %10, i32 %op_id.069, i32 1
  %14 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp466.not = icmp eq i32 %15, 0
  br i1 %cmp466.not, label %for.cond2.preheader.for.inc19_crit_edge, label %for.body5.lr.ph

for.cond2.preheader.for.inc19_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx3, i32 0, i32 1
  br label %for.body5

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %ctx = getelementptr %struct.nand_op_instr, ptr %10, i32 %op_id.069, i32 1
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctx, align 4
  %18 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i, align 8
  %cs_num1.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %cs_num1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cs_num1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %idxprom.i = zext i8 %21 to i32
  %arrayidx.i = getelementptr %struct.ebu_nand_controller, ptr %19, i32 0, i32 12, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i45, i8 %17) #8, !srcloc !106
  %call2.i = tail call fastcc i32 @ebu_nand_waitrdy(ptr noundef %chip, i32 noundef 1000) #8
  br label %for.inc19

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %i.067 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %for.body5.for.body5_crit_edge ]
  %24 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addrs, align 4
  %arrayidx7 = getelementptr i8, ptr %25, i32 %i.067
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7, align 1
  %28 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i.i, align 8
  %cs_num1.i47 = getelementptr inbounds %struct.ebu_nand_controller, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %cs_num1.i47 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cs_num1.i47, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %idxprom.i48 = zext i8 %31 to i32
  %arrayidx.i49 = getelementptr %struct.ebu_nand_controller, ptr %29, i32 0, i32 12, i32 %idxprom.i48
  %32 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i50, i8 %27) #8, !srcloc !106
  %call2.i51 = tail call fastcc i32 @ebu_nand_waitrdy(ptr noundef %chip, i32 noundef 1000) #8
  %inc = add nuw i32 %i.067, 1
  %34 = ptrtoint ptr %ctx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx3, align 4
  %cmp4 = icmp ult i32 %inc, %35
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.inc19_crit_edge

for.body5.for.inc19_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

sw.bb8:                                           ; preds = %for.body
  %ctx9 = getelementptr %struct.nand_op_instr, ptr %10, i32 %op_id.069, i32 1
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx9, i32 0, i32 1
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %38 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp3.not.i = icmp eq i32 %39, 0
  br i1 %cmp3.not.i, label %sw.bb8.for.inc19_crit_edge, label %sw.bb8.for.body.i_crit_edge

sw.bb8.for.body.i_crit_edge:                      ; preds = %sw.bb8
  br label %for.body.i

sw.bb8.for.inc19_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb8.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb8.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i.i, align 8
  %cs_num1.i.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %cs_num1.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cs_num1.i.i, align 8
  %idxprom.i.i = zext i8 %43 to i32
  %arrayidx.i.i = getelementptr %struct.ebu_nand_controller, ptr %41, i32 0, i32 12, i32 %idxprom.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 16
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %call4.i.i = tail call fastcc i32 @ebu_nand_waitrdy(ptr noundef %chip, i32 noundef 1000) #8
  %arrayidx.i52 = getelementptr i8, ptr %37, i32 %i.04.i
  %47 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx.i52, align 1
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %39
  br i1 %exitcond.not.i, label %for.body.i.for.inc19_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.inc19_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

sw.bb11:                                          ; preds = %for.body
  %ctx12 = getelementptr %struct.nand_op_instr, ptr %10, i32 %op_id.069, i32 1
  %buf13 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx12, i32 0, i32 1
  %48 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf13, align 4
  %50 = ptrtoint ptr %ctx12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3.i = icmp sgt i32 %51, 0
  br i1 %cmp3.i, label %sw.bb11.for.body.i63_crit_edge, label %sw.bb11.for.inc19_crit_edge

sw.bb11.for.inc19_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

sw.bb11.for.body.i63_crit_edge:                   ; preds = %sw.bb11
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.body.i63.for.body.i63_crit_edge, %sw.bb11.for.body.i63_crit_edge
  %i.04.i55 = phi i32 [ %inc.i61, %for.body.i63.for.body.i63_crit_edge ], [ 0, %sw.bb11.for.body.i63_crit_edge ]
  %arrayidx.i56 = getelementptr i8, ptr %49, i32 %i.04.i55
  %52 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i56, align 1
  %54 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv.i.i, align 8
  %cs_num1.i.i57 = getelementptr inbounds %struct.ebu_nand_controller, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %cs_num1.i.i57 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cs_num1.i.i57, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %idxprom.i.i58 = zext i8 %57 to i32
  %arrayidx.i.i59 = getelementptr %struct.ebu_nand_controller, ptr %55, i32 0, i32 12, i32 %idxprom.i.i58
  %58 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i59, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i60, i8 %53) #8, !srcloc !106
  %call2.i.i = tail call fastcc i32 @ebu_nand_waitrdy(ptr noundef %chip, i32 noundef 1000) #8
  %inc.i61 = add nuw nsw i32 %i.04.i55, 1
  %exitcond.not.i62 = icmp eq i32 %inc.i61, %51
  br i1 %exitcond.not.i62, label %for.body.i63.for.inc19_crit_edge, label %for.body.i63.for.body.i63_crit_edge

for.body.i63.for.body.i63_crit_edge:              ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i63

for.body.i63.for.inc19_crit_edge:                 ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %ctx17 = getelementptr %struct.nand_op_instr, ptr %10, i32 %op_id.069, i32 1
  %60 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctx17, align 4
  %mul = mul i32 %61, 1000
  %call = tail call fastcc i32 @ebu_nand_waitrdy(ptr noundef %chip, i32 noundef %mul)
  br label %for.inc19

for.inc19:                                        ; preds = %sw.bb16, %for.body.i63.for.inc19_crit_edge, %sw.bb11.for.inc19_crit_edge, %for.body.i.for.inc19_crit_edge, %sw.bb8.for.inc19_crit_edge, %for.body5.for.inc19_crit_edge, %sw.bb, %for.cond2.preheader.for.inc19_crit_edge, %for.body.for.inc19_crit_edge
  %ret.1 = phi i32 [ %ret.071, %for.body.for.inc19_crit_edge ], [ %call, %sw.bb16 ], [ %ret.071, %sw.bb ], [ %ret.071, %sw.bb8.for.inc19_crit_edge ], [ %ret.071, %sw.bb11.for.inc19_crit_edge ], [ %ret.071, %for.cond2.preheader.for.inc19_crit_edge ], [ %ret.071, %for.body5.for.inc19_crit_edge ], [ %ret.071, %for.body.i.for.inc19_crit_edge ], [ %ret.071, %for.body.i63.for.inc19_crit_edge ]
  %inc20 = add nuw i32 %op_id.069, 1
  %62 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc20, %63
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.cleanup_crit_edge

for.inc19.cleanup_crit_edge:                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.1, %for.inc19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_set_timings(ptr nocapture noundef readonly %chip, i32 noundef %csline, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %chip, i32 2248
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %div = udiv i32 %call1, 1000000
  %sub = add nuw nsw i32 %div, 999999
  %div2 = udiv i32 %sub, %div
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %6 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tREA_max, align 4
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %8 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tREH_min, align 8
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9)
  %add9 = add nsw i32 %div2, -1
  %sub10 = add i32 %add9, %10
  %div11 = udiv i32 %sub10, %div2
  %shl = shl nuw nsw i32 %div11, 2
  %tDH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 17
  %11 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tDH_min, align 4
  %tDS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 18
  %13 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tDS_min, align 8
  %15 = tail call i32 @llvm.umax.i32(i32 %12, i32 %14)
  %sub19 = add i32 %add9, %15
  %div20 = udiv i32 %sub19, %div2
  %shl21 = shl nuw nsw i32 %div20, 4
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %16 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tRC_min, align 8
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %9)
  %sub31 = add i32 %add9, %18
  %div32 = udiv i32 %sub31, %div2
  %shl33 = shl nuw nsw i32 %div32, 6
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %19 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tWC_min, align 4
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %21 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tWH_min, align 8
  %23 = tail call i32 @llvm.umax.i32(i32 %20, i32 %22)
  %sub42 = add i32 %add9, %23
  %div43 = udiv i32 %sub42, %div2
  %shl44 = shl i32 %div43, 8
  %or22 = or i32 %shl, %shl21
  %or34 = or i32 %or22, %shl33
  %or45 = or i32 %or34, %shl44
  %or46 = or i32 %or45, 4243457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %ebu = getelementptr i8, ptr %chip, i32 2172
  %25 = ptrtoint ptr %ebu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ebu, align 4
  %cs_num = getelementptr i8, ptr %chip, i32 2256
  %27 = ptrtoint ptr %cs_num to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cs_num, align 8
  %conv = zext i8 %28 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add47 = add nuw nsw i32 %mul, 96
  %add.ptr = getelementptr i8, ptr %26, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #8, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_read_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call fastcc void @ebu_nand_trigger(ptr noundef %1, i32 noundef %page, i32 noundef 0)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %call2 = tail call fastcc i32 @ebu_dma_start(ptr noundef %1, i32 noundef 2, ptr noundef %buf, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool3.not = icmp eq i32 %oob_required, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %4 = ptrtoint ptr %read_oob to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_oob, align 8
  %call5 = tail call i32 %5(ptr noundef %chip, i32 noundef %page) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %hsnand = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsnand, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 304
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %9 = and i32 %8, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsnand, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %9) #8, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebu_nand_write_page_hwecc(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hsnand = getelementptr inbounds %struct.ebu_nand_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsnand, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 296
  tail call fastcc void @ebu_nand_trigger(ptr noundef %1, i32 noundef %page, i32 noundef 128)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %call2 = tail call fastcc i32 @ebu_dma_start(ptr noundef %1, i32 noundef 1, ptr noundef %buf, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool3.not = icmp eq i32 %oob_required, 0
  br i1 %tobool3.not, label %if.end.if.end16_crit_edge, label %if.then4

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_poi, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsnand, align 8
  %add.ptr7 = getelementptr i8, ptr %11, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #8, !srcloc !100
  %12 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oob_poi, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr9, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsnand, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #8, !srcloc !100
  br label %if.end16

if.end16:                                         ; preds = %if.then4, %if.end.if.end16_crit_edge
  %call17 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call17, 1000000
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !110
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %and88 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool21.not89 = icmp eq i32 %and88, 0
  br i1 %tobool21.not89, label %if.end16.for.end_crit_edge, label %if.end16.land.lhs.true_crit_edge

if.end16.land.lhs.true_crit_edge:                 ; preds = %if.end16
  br label %land.lhs.true

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end16.land.lhs.true_crit_edge
  %call25 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then27, label %cond.false

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !110
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !110
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %and = and i32 %24, 16
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then27, %if.end16.for.end_crit_edge
  %val.0 = phi i32 [ %21, %if.then27 ], [ %19, %if.end16.for.end_crit_edge ], [ %24, %cond.false.for.end_crit_edge ]
  %and42 = and i32 %val.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end46, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hsnand, align 8
  %add.ptr50 = getelementptr i8, ptr %26, i32 304
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %28 = and i32 %27, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hsnand, align 8
  %add.ptr59 = getelementptr i8, ptr %30, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %28) #8, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ %call2, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebu_nand_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %oobregion, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %1 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %total, align 8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebu_nand_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 8
  %add = add i32 %1, 8
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %4, %add
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ebu_nand_trigger(ptr nocapture noundef readonly %ebu_host, i32 noundef %page, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %page, 24
  %or = or i32 %shl, %cmd
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %hsnand = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 4
  %1 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hsnand, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !100
  %and1 = lshr i32 %page, 8
  %3 = and i32 %and1, 65535
  %or2 = or i32 %3, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %5 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hsnand, align 8
  %add.ptr7 = getelementptr i8, ptr %6, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %nd_para0 = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 10
  %7 = ptrtoint ptr %nd_para0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nd_para0, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hsnand, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsnand, align 8
  %add.ptr17 = getelementptr i8, ptr %13, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 -1) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsnand, align 8
  %add.ptr22 = getelementptr i8, ptr %15, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -1) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hsnand, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 268435456) #8, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %tobool.not = icmp eq i32 %cmd, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %cs_num = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 11
  %18 = ptrtoint ptr %cs_num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cs_num, align 8
  %conv = zext i8 %19 to i32
  %shl31 = shl i32 8, %conv
  %or34 = select i1 %tobool.not, i32 133125, i32 134149
  %or35 = or i32 %or34, %shl31
  %20 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %21 = ptrtoint ptr %hsnand to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hsnand, align 8
  %add.ptr37 = getelementptr i8, ptr %22, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %20) #8, !srcloc !100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ebu_dma_start(ptr noundef %ebu_host, i32 noundef %dir, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %dma_rx = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 6
  %dma_tx = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 5
  %callback.0 = select i1 %cmp, ptr @ebu_dma_rx_callback, ptr @ebu_dma_tx_callback
  %chan.0.in = select i1 %cmp, ptr %dma_rx, ptr %dma_tx
  %0 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %dma_completion.0 = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 7
  %1 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan.0, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !101

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %4) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %4, ptr noundef %buf, i32 noundef %len) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %11 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.0, align 4
  %dev3 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 2
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.27) #11
  br label %err_unmap

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %17 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %19 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %17, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %len, ptr %18, align 4
  %tobool.not.i = icmp eq ptr %chan.0, null
  br i1 %tobool.not.i, label %if.end7.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end7.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end7
  %22 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan.0, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 39
  %24 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end7.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  br label %err_unmap

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i70 = call ptr %25(ptr noundef nonnull %chan.0, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef %dir, i32 noundef 3, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %tobool9.not = icmp eq ptr %call.i70, null
  br i1 %tobool9.not, label %dmaengine_prep_slave_single.exit.err_unmap_crit_edge, label %if.end11

dmaengine_prep_slave_single.exit.err_unmap_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

if.end11:                                         ; preds = %dmaengine_prep_slave_single.exit
  %callback12 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i70, i32 0, i32 6
  %26 = ptrtoint ptr %callback12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %callback.0, ptr %callback12, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i70, i32 0, i32 8
  %27 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ebu_host, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i70, i32 0, i32 4
  %28 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_submit, align 4
  %call13 = call i32 %29(ptr noundef nonnull %call.i70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %tobool15.not = icmp sgt i32 %call13, -1
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 2
  %30 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.30, i32 noundef %call13) #11
  br label %err_unmap

if.end21:                                         ; preds = %if.end11
  %32 = ptrtoint ptr %dma_completion.0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dma_completion.0, align 4
  %wait.i = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #8
  %33 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_issue_pending.i, align 4
  call void %36(ptr noundef nonnull %chan.0) #8
  %call23 = call i32 @wait_for_completion_timeout(ptr noundef %dma_completion.0, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %if.end21
  %dev29 = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 2
  %37 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev29, align 8
  %39 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan.0, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 49
  %41 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_tx_status.i, align 4
  %call.i72 = call i32 %42(ptr noundef nonnull %chan.0, i32 noundef %call13, ptr noundef null) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef %call.i72) #11
  %43 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan.0, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 47
  %45 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i73 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i73, label %do.end28.err_unmap_crit_edge, label %dmaengine_terminate_async.exit.i

do.end28.err_unmap_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

dmaengine_terminate_async.exit.i:                 ; preds = %do.end28
  %call.i.i = call i32 %46(ptr noundef nonnull %chan.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i74 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i74, label %if.end.i75, label %dmaengine_terminate_async.exit.i.err_unmap_crit_edge

dmaengine_terminate_async.exit.i.err_unmap_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

if.end.i75:                                       ; preds = %dmaengine_terminate_async.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 1169) #8
  %47 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan.0, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 48
  %49 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %50, null
  br i1 %tobool.not.i1.i, label %if.end.i75.err_unmap_crit_edge, label %if.then.i2.i

if.end.i75.err_unmap_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

if.then.i2.i:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  call void %50(ptr noundef nonnull %chan.0) #8
  br label %err_unmap

err_unmap:                                        ; preds = %if.then.i2.i, %if.end.i75.err_unmap_crit_edge, %dmaengine_terminate_async.exit.i.err_unmap_crit_edge, %do.end28.err_unmap_crit_edge, %do.end19, %dmaengine_prep_slave_single.exit.err_unmap_crit_edge, %dmaengine_prep_slave_single.exit.thread, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %do.end19 ], [ -6, %dmaengine_prep_slave_single.exit.err_unmap_crit_edge ], [ -6, %dmaengine_prep_slave_single.exit.thread ], [ -110, %do.end28.err_unmap_crit_edge ], [ -110, %dmaengine_terminate_async.exit.i.err_unmap_crit_edge ], [ -110, %if.end.i75.err_unmap_crit_edge ], [ -110, %if.then.i2.i ]
  %dev33 = getelementptr inbounds %struct.ebu_nand_controller, ptr %ebu_host, i32 0, i32 2
  %51 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev33, align 8
  call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %retval.0.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unmap ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ebu_dma_rx_callback(ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_rx = getelementptr inbounds %struct.ebu_nand_controller, ptr %cookie, i32 0, i32 6
  %0 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_rx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_async.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %1) #8
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %entry.dmaengine_terminate_async.exit_crit_edge
  %dma_access_complete = getelementptr inbounds %struct.ebu_nand_controller, ptr %cookie, i32 0, i32 7
  tail call void @complete(ptr noundef %dma_access_complete) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ebu_dma_tx_callback(ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx = getelementptr inbounds %struct.ebu_nand_controller, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_tx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_async.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %1) #8
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %entry.dmaengine_terminate_async.exit_crit_edge
  %dma_access_complete = getelementptr inbounds %struct.ebu_nand_controller, ptr %cookie, i32 0, i32 7
  tail call void @complete(ptr noundef %dma_access_complete) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ebu_nand_waitrdy(ptr nocapture noundef readonly %chip, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %timeout_ms to i64
  %call1 = tail call i64 @ktime_get() #8
  %mul.i = mul nsw i64 %conv, 1000
  %add.i = add i64 %call1, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 142) #8
  %ebu = getelementptr i8, ptr %chip, i32 2172
  %0 = ptrtoint ptr %ebu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ebu, align 4
  %add.ptr48 = getelementptr i8, ptr %1, i32 180
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %3 = and i32 %2, 150994944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end15.lr.ph, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end15.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_ms)
  %tobool16.not = icmp eq i32 %timeout_ms, 0
  br label %if.end15

if.end15:                                         ; preds = %if.then31.if.end15_crit_edge, %if.end15.lr.ph
  br i1 %tobool16.not, label %if.end15.if.then31_crit_edge, label %land.lhs.true

if.end15.if.then31_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

land.lhs.true:                                    ; preds = %if.end15
  %call17 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then31_crit_edge

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %if.end15.if.then31_crit_edge
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %5 = ptrtoint ptr %ebu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ebu, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 180
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %8 = and i32 %7, 150994944
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.then31.if.end15_crit_edge, label %if.then31.for.end.thread_crit_edge

if.then31.for.end.thread_crit_edge:               ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.then31.if.end15_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ebu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ebu, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 180
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %13 = and i32 %12, 150994944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %spec.select = select i1 %14, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.then31.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %15 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then31.for.end.thread_crit_edge ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_intel_nand_controller__253_734_ebu_nand_driver_init6, !1, !"__initcall__kmod_intel_nand_controller__253_734_ebu_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 734, i32 1}
!2 = !{ptr @__exitcall_ebu_nand_driver_exit, !1, !"__exitcall_ebu_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file254, !4, !"__UNIQUE_ID_file254", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 736, i32 1}
!5 = !{ptr @__UNIQUE_ID_license255, !4, !"__UNIQUE_ID_license255", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author256, !7, !"__UNIQUE_ID_author256", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 737, i32 1}
!8 = !{ptr @__UNIQUE_ID_description257, !9, !"__UNIQUE_ID_description257", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 738, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 729, i32 11}
!12 = !{ptr @ebu_nand_driver, !13, !"ebu_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 725, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 597, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 602, i32 59}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 607, i32 38}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 609, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ebu_nand_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ebu_nand_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 613, i32 3}
!30 = !{ptr @ebu_nand_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ebu_nand_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 619, i32 44}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 629, i32 10}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 633, i32 3}
!38 = !{ptr @ebu_nand_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ebu_nand_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 638, i32 43}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 641, i32 9}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 645, i32 43}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 648, i32 9}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 653, i32 44}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 667, i32 3}
!52 = !{ptr @ebu_nand_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ebu_nand_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @nand_controller_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!59 = !{ptr @ebu_nand_controller_ops, !60, !"ebu_nand_controller_ops", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 564, i32 41}
!61 = !{ptr @ecc_strength, !62, !"ecc_strength", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 446, i32 17}
!63 = !{ptr @ebu_nand_ooblayout_ops, !64, !"ebu_nand_ooblayout_ops", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 267, i32 39}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 315, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ebu_dma_start._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ebu_dma_start._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 332, i32 3}
!72 = !{ptr @ebu_dma_start._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ebu_dma_start._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 343, i32 3}
!76 = !{ptr @ebu_dma_start._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ebu_dma_start._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @init_completion.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/completion.h", i32 87, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!87 = !{ptr @ebu_nand_match, !88, !"ebu_nand_match", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/intel-nand-controller.c", i32 718, i32 34}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 2154432938}
!100 = !{i64 6315950}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2154394721}
!103 = !{i32 0, i32 33}
!104 = !{i64 2154395865}
!105 = !{i64 2154394341}
!106 = !{i64 6315753}
!107 = !{i64 6316148}
!108 = !{i64 2154394104}
!109 = !{i64 2154410546}
!110 = !{i64 6316368}
!111 = !{i64 2154420918}
!112 = !{i64 2154421232}
!113 = !{i64 2154421667}
!114 = !{i64 2154422076}
!115 = !{i64 2154424245}
!116 = !{i64 2154424691}
!117 = !{i64 2154425805}
!118 = !{i64 2154426119}
!119 = !{i64 2154416178}
!120 = !{i64 2154416599}
!121 = !{i64 2154417023}
!122 = !{i64 2154417484}
!123 = !{i64 2154417921}
!124 = !{i64 2154418457}
!125 = !{i64 2154419671}
!126 = !{i64 2154393216}
!127 = !{i64 2154393702}
