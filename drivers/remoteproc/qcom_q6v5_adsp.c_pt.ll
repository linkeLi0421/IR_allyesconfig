; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_q6v5_adsp.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_q6v5_adsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adsp_pil_data = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.qcom_adsp = type { ptr, ptr, %struct.qcom_q6v5, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, %struct.completion, i32, i32, ptr, i32, %struct.qcom_rproc_glink, %struct.qcom_rproc_ssr, ptr }
%struct.qcom_q6v5 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.completion, %struct.completion, i32, i8, ptr, ptr }
%struct.qcom_rproc_glink = type { %struct.rproc_subdev, ptr, ptr, ptr, ptr }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.qcom_rproc_ssr = type { %struct.rproc_subdev, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_qcom_q6v5_adsp__235_557_adsp_pil_driver_init6 = internal global ptr @adsp_pil_driver_init, section ".initcall6.init", align 4
@adsp_pil_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adsp_probe, ptr @adsp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adsp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adsp_pil_driver_exit = internal global ptr @adsp_pil_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description236 = internal constant [67 x i8] c"qcom_q6v5_adsp.description=QTI SDM845 ADSP Peripheral Image Loader\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [54 x i8] c"qcom_q6v5_adsp.file=drivers/remoteproc/qcom_q6v5_adsp\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [30 x i8] c"qcom_q6v5_adsp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_q6v5_adsp\00", [17 x i8] zeroinitializer }, align 32
@adsp_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-cdsp-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdsp_resource_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-adsp-pil\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adsp_resource_init }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adsp_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @adsp_start, ptr @adsp_stop, ptr null, ptr null, ptr null, ptr @adsp_da_to_va, ptr @qcom_register_dump_segments, ptr null, ptr null, ptr null, ptr @adsp_load, ptr null, ptr null, ptr @adsp_panic, ptr null }, [60 x i8] zeroinitializer }, align 32
@adsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to allocate remoteproc\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsp_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/remoteproc/qcom_q6v5_adsp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adsp_probe._entry_ptr = internal global ptr @adsp_probe._entry, section ".printk_index", align 4
@adsp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adsp clk_enable failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsp_start\00", [21 x i8] zeroinitializer }, align 32
@adsp_start._entry_ptr = internal global ptr @adsp_start._entry, section ".printk_index", align 4
@adsp_start._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to bootup adsp\0A\00", [41 x i8] zeroinitializer }, align 32
@adsp_start._entry_ptr.10 = internal global ptr @adsp_start._entry.8, section ".printk_index", align 4
@adsp_start._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@adsp_start._entry_ptr.13 = internal global ptr @adsp_start._entry.11, section ".printk_index", align 4
@adsp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timed out on wait\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adsp_stop\00", [22 x i8] zeroinitializer }, align 32
@adsp_stop._entry_ptr = internal global ptr @adsp_stop._entry, section ".printk_index", align 4
@adsp_stop._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to shutdown: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@adsp_stop._entry_ptr.18 = internal global ptr @adsp_stop._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qcom_adsp_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port failed halt\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_adsp_shutdown\00", [45 x i8] zeroinitializer }, align 32
@qcom_adsp_shutdown._entry_ptr = internal global ptr @qcom_adsp_shutdown._entry, section ".printk_index", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@adsp_alloc_memory_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory-region specified\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adsp_alloc_memory_region\00", [39 x i8] zeroinitializer }, align 32
@adsp_alloc_memory_region._entry_ptr = internal global ptr @adsp_alloc_memory_region._entry, section ".printk_index", align 4
@adsp_alloc_memory_region._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to map memory region: %pa+%zx\0A\00", [58 x i8] zeroinitializer }, align 32
@adsp_alloc_memory_region._entry_ptr.26 = internal global ptr @adsp_alloc_memory_region._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@adsp_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get xo clock\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adsp_init_clock\00", [16 x i8] zeroinitializer }, align 32
@adsp_init_clock._entry_ptr = internal global ptr @adsp_init_clock._entry, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pdc_sync\00", [23 x i8] zeroinitializer }, align 32
@adsp_init_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to acquire pdc_sync reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adsp_init_reset\00", [16 x i8] zeroinitializer }, align 32
@adsp_init_reset._entry_ptr = internal global ptr @adsp_init_reset._entry, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"restart\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cc_lpass\00", [23 x i8] zeroinitializer }, align 32
@adsp_init_reset._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to acquire restart\0A\00", [37 x i8] zeroinitializer }, align 32
@adsp_init_reset._entry_ptr.37 = internal global ptr @adsp_init_reset._entry.35, section ".printk_index", align 4
@adsp_init_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to map QDSP6SS registers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adsp_init_mmio\00", [17 x i8] zeroinitializer }, align 32
@adsp_init_mmio._entry_ptr = internal global ptr @adsp_init_mmio._entry, section ".printk_index", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,halt-regs\00", [17 x i8] zeroinitializer }, align 32
@adsp_init_mmio._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse qcom,halt-regs\0A\00", [32 x i8] zeroinitializer }, align 32
@adsp_init_mmio._entry_ptr.43 = internal global ptr @adsp_init_mmio._entry.41, section ".printk_index", align 4
@adsp_init_mmio._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.39, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no offset in syscon\0A\00", [43 x i8] zeroinitializer }, align 32
@adsp_init_mmio._entry_ptr.46 = internal global ptr @adsp_init_mmio._entry.44, section ".printk_index", align 4
@cdsp_resource_init = internal constant { %struct.adsp_pil_data, [36 x i8] } { %struct.adsp_pil_data { i32 601, ptr @.str.47, ptr @.str.48, ptr @.str.48, i32 23, ptr @.compoundliteral, i32 7 }, [36 x i8] zeroinitializer }, align 32
@adsp_resource_init = internal constant { %struct.adsp_pil_data, [36 x i8] } { %struct.adsp_pil_data { i32 423, ptr @.str.56, ptr @.str.57, ptr @.str.58, i32 20, ptr @.compoundliteral.65, i32 7 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdsp.mdt\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdsp\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sway\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbu\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bimc\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ahb_aon\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"q6ss_slave\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"q6ss_master\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"q6_axim\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adsp.mdt\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lpass\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adsp\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sway_cbcr\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpass_ahbs_aon_cbcr\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpass_ahbm_aon_cbcr\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qdsp6ss_xo\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qdsp6ss_sleep\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qdsp6ss_core\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr null], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"adsp_pil_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 548, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 552, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"adsp_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 541, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"adsp_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 305, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 441, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 205, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 231, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 237, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 273, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 277, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 143, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 404, i32 46 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 406, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 419, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 319, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 323, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 345, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 347, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 351, i32 71 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 355, i32 63 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 358, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 373, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 377, i32 47 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 379, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 391, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [19 x i8] c"cdsp_resource_init\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 528, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"adsp_resource_init\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 515, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 530, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 531, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 535, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 535, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 535, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 535, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 535, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 535, i32 51 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 536, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 517, i32 19 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 518, i32 14 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 519, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 522, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 522, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 522, i32 39 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 523, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 523, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [39 x i8] c"../drivers/remoteproc/qcom_q6v5_adsp.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 523, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adsp_pil_driver_exit, ptr @__initcall__kmod_qcom_q6v5_adsp__235_557_adsp_pil_driver_init6, ptr @adsp_alloc_memory_region._entry, ptr @adsp_alloc_memory_region._entry.24, ptr @adsp_alloc_memory_region._entry_ptr, ptr @adsp_alloc_memory_region._entry_ptr.26, ptr @adsp_init_clock._entry, ptr @adsp_init_clock._entry_ptr, ptr @adsp_init_mmio._entry, ptr @adsp_init_mmio._entry.41, ptr @adsp_init_mmio._entry.44, ptr @adsp_init_mmio._entry_ptr, ptr @adsp_init_mmio._entry_ptr.43, ptr @adsp_init_mmio._entry_ptr.46, ptr @adsp_init_reset._entry, ptr @adsp_init_reset._entry.35, ptr @adsp_init_reset._entry_ptr, ptr @adsp_init_reset._entry_ptr.37, ptr @adsp_pil_driver_exit, ptr @adsp_probe._entry, ptr @adsp_probe._entry_ptr, ptr @adsp_start._entry, ptr @adsp_start._entry.11, ptr @adsp_start._entry.8, ptr @adsp_start._entry_ptr, ptr @adsp_start._entry_ptr.10, ptr @adsp_start._entry_ptr.13, ptr @adsp_stop._entry, ptr @adsp_stop._entry.16, ptr @adsp_stop._entry_ptr, ptr @adsp_stop._entry_ptr.18, ptr @qcom_adsp_shutdown._entry, ptr @qcom_adsp_shutdown._entry_ptr, ptr @adsp_pil_driver, ptr @.str, ptr @adsp_of_match, ptr @adsp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @cdsp_resource_init, ptr @adsp_resource_init, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.compoundliteral, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.compoundliteral.65], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_pil_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_start._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_start._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_stop._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_adsp_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_alloc_memory_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_alloc_memory_region._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_reset._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_mmio._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_init_mmio._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdsp_resource_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_resource_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_pil_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adsp_pil_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adsp_pil_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @adsp_pil_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i103 = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %r.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %firmware_name = getelementptr inbounds %struct.adsp_pil_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware_name, align 4
  %call2 = tail call ptr @rproc_alloc(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @adsp_ops, ptr noundef %3, i32 noundef 420) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @rproc_coredump_set_elf_info(ptr noundef nonnull %call2, i8 noundef zeroext 1, i16 noundef zeroext 0) #8
  %priv = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %5, align 4
  %rproc10 = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %rproc10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %rproc10, align 4
  %sysmon_name = getelementptr inbounds %struct.adsp_pil_data, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %sysmon_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysmon_name, align 4
  %info_name = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %info_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %info_name, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #8
  %12 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %13 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %18 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end6
  %19 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22) #11
  br label %adsp_alloc_memory_region.exit.thread

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %20, i32 noundef 0, ptr noundef nonnull %r.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge

if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adsp_alloc_memory_region.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %r.i, align 4
  %mem_reloc.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 16
  %25 = ptrtoint ptr %mem_reloc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mem_reloc.i, align 4
  %mem_phys.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 15
  %26 = ptrtoint ptr %mem_phys.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %mem_phys.i, align 4
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %12, align 4
  %sub.i.i = sub i32 1, %24
  %add.i.i = add i32 %28, %sub.i.i
  %mem_size.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 18
  %29 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i.i, ptr %mem_size.i, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %call10.i = call ptr @devm_ioremap_wc(ptr noundef %31, i32 noundef %24, i32 noundef %add.i.i) #8
  %mem_region.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 17
  %32 = ptrtoint ptr %mem_region.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call10.i, ptr %mem_region.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end14

do.end16.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %35 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mem_size.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.25, ptr noundef nonnull %r.i, i32 noundef %36) #11
  br label %adsp_alloc_memory_region.exit.thread

adsp_alloc_memory_region.exit.thread:             ; preds = %do.end16.i, %if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.adsp_alloc_memory_region.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -16, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #8
  br label %free_rproc

if.end14:                                         ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #8
  %clk_ids = getelementptr inbounds %struct.adsp_pil_data, ptr %call, i32 0, i32 5
  %37 = ptrtoint ptr %clk_ids to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_ids, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %call.i = call ptr @devm_clk_get(ptr noundef %40, ptr noundef nonnull @.str.27) #8
  %xo.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 3
  %41 = ptrtoint ptr %xo.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %xo.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end14
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %tobool.not58.i = icmp eq ptr %43, null
  br i1 %tobool.not58.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then.i:                                        ; preds = %if.end14
  %cmp.not.i = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.free_rproc_crit_edge, label %do.end.i94

if.then.i.free_rproc_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

do.end.i94:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %call.i to i32
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.28) #11
  br label %adsp_init_clock.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc8.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inc8.i = add i32 %i.060.i, 1
  %arrayidx.i = getelementptr ptr, ptr %38, i32 %inc8.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i95 = icmp eq ptr %48, null
  br i1 %tobool.not.i95, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %num_clks.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc8.i, %for.body.i.for.end.i_crit_edge ]
  %num_clks9.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 4
  %49 = ptrtoint ptr %num_clks9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %num_clks.0.lcssa.i, ptr %num_clks9.i, align 4
  %50 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks.0.lcssa.i, i32 8) #8
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !148

devm_kcalloc.exit.thread.i:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %clks56.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 5
  %52 = ptrtoint ptr %clks56.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %clks56.i, align 4
  br label %free_rproc

devm_kcalloc.exit.i:                              ; preds = %for.end.i
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 4
  %55 = extractvalue { i32, i1 } %50, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef %55, i32 noundef 3520) #8
  %clks.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 5
  %56 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i.i, ptr %clks.i, align 4
  %tobool14.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool14.not.i, label %devm_kcalloc.exit.i.free_rproc_crit_edge, label %for.cond17.preheader.i

devm_kcalloc.exit.i.free_rproc_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

for.cond17.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  %57 = ptrtoint ptr %num_clks9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_clks9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1961.i = icmp sgt i32 %58, 0
  br i1 %cmp1961.i, label %for.cond17.preheader.i.for.body20.i_crit_edge, label %for.cond17.preheader.i.for.end26.i_crit_edge

for.cond17.preheader.i.for.end26.i_crit_edge:     ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26.i

for.cond17.preheader.i.for.body20.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %for.cond17.preheader.i.for.body20.i_crit_edge
  %i.162.i = phi i32 [ %inc25.i, %for.body20.i.for.body20.i_crit_edge ], [ 0, %for.cond17.preheader.i.for.body20.i_crit_edge ]
  %arrayidx21.i = getelementptr ptr, ptr %38, i32 %i.162.i
  %59 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx21.i, align 4
  %61 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clks.i, align 4
  %arrayidx23.i = getelementptr %struct.clk_bulk_data, ptr %62, i32 %i.162.i
  %63 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %arrayidx23.i, align 4
  %inc25.i = add nuw nsw i32 %i.162.i, 1
  %64 = ptrtoint ptr %num_clks9.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_clks9.i, align 4
  %cmp19.i = icmp slt i32 %inc25.i, %65
  br i1 %cmp19.i, label %for.body20.i.for.body20.i_crit_edge, label %for.body20.i.for.end26.i_crit_edge

for.body20.i.for.end26.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26.i

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20.i

for.end26.i:                                      ; preds = %for.body20.i.for.end26.i_crit_edge, %for.cond17.preheader.i.for.end26.i_crit_edge
  %.lcssa.i = phi i32 [ %58, %for.cond17.preheader.i.for.end26.i_crit_edge ], [ %65, %for.body20.i.for.end26.i_crit_edge ]
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %68 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clks.i, align 4
  %call30.i = call i32 @devm_clk_bulk_get(ptr noundef %67, i32 noundef %.lcssa.i, ptr noundef %69) #8
  br label %adsp_init_clock.exit

adsp_init_clock.exit:                             ; preds = %for.end26.i, %do.end.i94
  %retval.0.i96 = phi i32 [ %call30.i, %for.end26.i ], [ %44, %do.end.i94 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i96)
  %tobool16.not = icmp eq i32 %retval.0.i96, 0
  br i1 %tobool16.not, label %if.end18, label %adsp_init_clock.exit.free_rproc_crit_edge

adsp_init_clock.exit.free_rproc_crit_edge:        ; preds = %adsp_init_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rproc

if.end18:                                         ; preds = %adsp_init_clock.exit
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  call void @pm_runtime_enable(ptr noundef %71) #8
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 4
  %call.i.i97 = call ptr @__devm_reset_control_get(ptr noundef %73, ptr noundef nonnull @.str.30, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %pdc_sync_reset.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 7
  %74 = ptrtoint ptr %pdc_sync_reset.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i97, ptr %pdc_sync_reset.i, align 4
  %cmp.i.i98 = icmp ugt ptr %call.i.i97, inttoptr (i32 -4096 to ptr)
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 4
  br i1 %cmp.i.i98, label %do.end.i99, label %if.end.i101

do.end.i99:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.31) #11
  br label %adsp_init_reset.exit

if.end.i101:                                      ; preds = %if.end18
  %call.i35.i = call ptr @__devm_reset_control_get(ptr noundef %76, ptr noundef nonnull @.str.33, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %restart.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 8
  %77 = ptrtoint ptr %restart.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i35.i, ptr %restart.i, align 4
  %tobool.not.i100 = icmp eq ptr %call.i35.i, null
  br i1 %tobool.not.i100, label %if.then9.i, label %if.end.i101.if.end13.i_crit_edge

if.end.i101.if.end13.i_crit_edge:                 ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %5, align 4
  %call.i36.i = call ptr @__devm_reset_control_get(ptr noundef %79, ptr noundef nonnull @.str.34, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %80 = ptrtoint ptr %restart.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i36.i, ptr %restart.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i101.if.end13.i_crit_edge
  %81 = phi ptr [ %call.i36.i, %if.then9.i ], [ %call.i35.i, %if.end.i101.if.end13.i_crit_edge ]
  %cmp.i37.i = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i, label %do.end18.i, label %if.end13.i.if.end23_crit_edge

if.end13.i.if.end23_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.36) #11
  br label %adsp_init_reset.exit

adsp_init_reset.exit:                             ; preds = %do.end18.i, %do.end.i99
  %restart.sink.i = phi ptr [ %restart.i, %do.end18.i ], [ %pdc_sync_reset.i, %do.end.i99 ]
  %84 = ptrtoint ptr %restart.sink.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %restart.sink.i, align 4
  %86 = ptrtoint ptr %85 to i32
  %tobool21.not = icmp eq ptr %85, null
  br i1 %tobool21.not, label %adsp_init_reset.exit.if.end23_crit_edge, label %adsp_init_reset.exit.disable_pm_crit_edge

adsp_init_reset.exit.disable_pm_crit_edge:        ; preds = %adsp_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pm

adsp_init_reset.exit.if.end23_crit_edge:          ; preds = %adsp_init_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %adsp_init_reset.exit.if.end23_crit_edge, %if.end13.i.if.end23_crit_edge
  %call.i104 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %qdsp6ss_base.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 6
  %87 = ptrtoint ptr %qdsp6ss_base.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i104, ptr %qdsp6ss_base.i, align 4
  %cmp.i.i105 = icmp ugt ptr %call.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i105, label %do.end.i106, label %if.end.i110

do.end.i106:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.38) #11
  %90 = ptrtoint ptr %qdsp6ss_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %qdsp6ss_base.i, align 4
  br label %adsp_init_mmio.exit

if.end.i110:                                      ; preds = %if.end23
  %of_node.i107 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %92 = ptrtoint ptr %of_node.i107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node.i107, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i103) #8
  %94 = call ptr @memset(ptr %args.i.i103, i32 255, i32 72)
  %call.i.i108 = call i32 @__of_parse_phandle_with_args(ptr noundef %93, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %call.i.i108, 0
  br i1 %tobool.not.i.i109, label %of_parse_phandle.exit.i113, label %of_parse_phandle.exit.thread.i111

of_parse_phandle.exit.thread.i111:                ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i103) #8
  br label %do.end10.i

of_parse_phandle.exit.i113:                       ; preds = %if.end.i110
  %95 = ptrtoint ptr %args.i.i103 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %args.i.i103, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i103) #8
  %tobool.not.i112 = icmp eq ptr %96, null
  br i1 %tobool.not.i112, label %of_parse_phandle.exit.i113.do.end10.i_crit_edge, label %if.end12.i

of_parse_phandle.exit.i113.do.end10.i_crit_edge:  ; preds = %of_parse_phandle.exit.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %of_parse_phandle.exit.i113.do.end10.i_crit_edge, %of_parse_phandle.exit.thread.i111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #11
  br label %disable_pm

if.end12.i:                                       ; preds = %of_parse_phandle.exit.i113
  %call13.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %96) #8
  %halt_map.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 9
  %97 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call13.i, ptr %halt_map.i, align 4
  call void @of_node_put(ptr noundef nonnull %96) #8
  %98 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %halt_map.i, align 4
  %cmp.i44.i = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %if.end12.i.adsp_init_mmio.exit_crit_edge, label %if.end19.i

if.end12.i.adsp_init_mmio.exit_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adsp_init_mmio.exit

if.end19.i:                                       ; preds = %if.end12.i
  %100 = ptrtoint ptr %of_node.i107 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %of_node.i107, align 8
  %halt_lpass.i = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 10
  %call22.i = call i32 @of_property_read_u32_index(ptr noundef %101, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef %halt_lpass.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i = icmp slt i32 %call22.i, 0
  br i1 %cmp.i, label %do.end26.i, label %if.end19.i.if.end27_crit_edge

if.end19.i.if.end27_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #11
  br label %disable_pm

adsp_init_mmio.exit:                              ; preds = %if.end12.i.adsp_init_mmio.exit_crit_edge, %do.end.i106
  %retval.0.i114.in = phi ptr [ %91, %do.end.i106 ], [ %99, %if.end12.i.adsp_init_mmio.exit_crit_edge ]
  %retval.0.i114 = ptrtoint ptr %retval.0.i114.in to i32
  %tobool25.not = icmp eq ptr %retval.0.i114.in, null
  br i1 %tobool25.not, label %adsp_init_mmio.exit.if.end27_crit_edge, label %adsp_init_mmio.exit.disable_pm_crit_edge

adsp_init_mmio.exit.disable_pm_crit_edge:         ; preds = %adsp_init_mmio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pm

adsp_init_mmio.exit.if.end27_crit_edge:           ; preds = %adsp_init_mmio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %adsp_init_mmio.exit.if.end27_crit_edge, %if.end19.i.if.end27_crit_edge
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 2
  %102 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call, align 4
  %call28 = call i32 @qcom_q6v5_init(ptr noundef %q6v5, ptr noundef %pdev, ptr noundef nonnull %call2, i32 noundef %103, ptr noundef null, ptr noundef nonnull @qcom_adsp_pil_handover) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.disable_pm_crit_edge

if.end27.disable_pm_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pm

if.end31:                                         ; preds = %if.end27
  %glink_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 19
  %ssr_name = getelementptr inbounds %struct.adsp_pil_data, ptr %call, i32 0, i32 2
  %104 = ptrtoint ptr %ssr_name to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ssr_name, align 4
  call void @qcom_add_glink_subdev(ptr noundef nonnull %call2, ptr noundef %glink_subdev, ptr noundef %105) #8
  %ssr_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 20
  %106 = ptrtoint ptr %ssr_name to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ssr_name, align 4
  call void @qcom_add_ssr_subdev(ptr noundef nonnull %call2, ptr noundef %ssr_subdev, ptr noundef %107) #8
  %108 = ptrtoint ptr %sysmon_name to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sysmon_name, align 4
  %ssctl_id = getelementptr inbounds %struct.adsp_pil_data, ptr %call, i32 0, i32 4
  %110 = ptrtoint ptr %ssctl_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ssctl_id, align 4
  %call34 = call ptr @qcom_add_sysmon_subdev(ptr noundef nonnull %call2, ptr noundef %109, i32 noundef %111) #8
  %sysmon = getelementptr inbounds %struct.qcom_adsp, ptr %5, i32 0, i32 21
  %112 = ptrtoint ptr %sysmon to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call34, ptr %sysmon, align 4
  %cmp.i115 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %call34 to i32
  br label %disable_pm

if.end40:                                         ; preds = %if.end31
  %call41 = call i32 @rproc_add(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end40.disable_pm_crit_edge

if.end40.disable_pm_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_pm

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

disable_pm:                                       ; preds = %if.end40.disable_pm_crit_edge, %if.then37, %if.end27.disable_pm_crit_edge, %adsp_init_mmio.exit.disable_pm_crit_edge, %do.end26.i, %do.end10.i, %adsp_init_reset.exit.disable_pm_crit_edge
  %ret.0 = phi i32 [ %86, %adsp_init_reset.exit.disable_pm_crit_edge ], [ %retval.0.i114, %adsp_init_mmio.exit.disable_pm_crit_edge ], [ %call28, %if.end27.disable_pm_crit_edge ], [ %113, %if.then37 ], [ %call41, %if.end40.disable_pm_crit_edge ], [ -22, %do.end10.i ], [ %call22.i, %do.end26.i ]
  %114 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %5, align 4
  call void @__pm_runtime_disable(ptr noundef %115, i1 noundef zeroext true) #8
  br label %free_rproc

free_rproc:                                       ; preds = %disable_pm, %adsp_init_clock.exit.free_rproc_crit_edge, %devm_kcalloc.exit.i.free_rproc_crit_edge, %devm_kcalloc.exit.thread.i, %if.then.i.free_rproc_crit_edge, %adsp_alloc_memory_region.exit.thread
  %ret.1 = phi i32 [ %retval.0.i96, %adsp_init_clock.exit.free_rproc_crit_edge ], [ %ret.0, %disable_pm ], [ %retval.0.i.ph, %adsp_alloc_memory_region.exit.thread ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.free_rproc_crit_edge ], [ -517, %if.then.i.free_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %free_rproc, %if.end40.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_rproc ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rproc = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %call1 = tail call i32 @rproc_del(ptr noundef %3) #8
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  tail call void @qcom_q6v5_deinit(ptr noundef %q6v5) #8
  %4 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rproc, align 4
  %glink_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 19
  tail call void @qcom_remove_glink_subdev(ptr noundef %5, ptr noundef %glink_subdev) #8
  %sysmon = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysmon, align 4
  tail call void @qcom_remove_sysmon_subdev(ptr noundef %7) #8
  %8 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rproc, align 4
  %ssr_subdev = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 20
  tail call void @qcom_remove_ssr_subdev(ptr noundef %9, ptr noundef %ssr_subdev) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #8
  %12 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rproc, align 4
  tail call void @rproc_free(ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_set_elf_info(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_adsp_pil_handover(ptr nocapture noundef readonly %q6v5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %q6v5, i32 -8
  %xo = getelementptr i8, ptr %q6v5, i32 172
  %0 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xo, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_glink_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_add_ssr_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_add_sysmon_subdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  %call = tail call i32 @qcom_q6v5_prepare(ptr noundef %q6v5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %xo = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xo, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.disable_irqs_crit_edge

if.end.disable_irqs_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_irqs

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.end.i.disable_irqs.sink.split_crit_edge

if.end.i.disable_irqs.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_irqs.sink.split

if.end4:                                          ; preds = %if.end.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %5, i32 noundef 2147483647) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i150 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool8.not = icmp eq i32 %call.i150, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !150
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then9.disable_xo_clk_crit_edge, label %do.end11.i.i.i.i

if.then9.disable_xo_clk_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_xo_clk

do.end11.i.i.i.i:                                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !151
  br label %disable_xo_clk

if.end11:                                         ; preds = %if.end4
  %num_clks = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks, align 4
  %call.i151 = tail call i32 @clk_bulk_prepare(i32 noundef %12, ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i155, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i155:                                      ; preds = %if.end11
  %call1.i153 = tail call i32 @clk_bulk_enable(i32 noundef %12, ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool2.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool2.not.i154, label %do.body17, label %if.then3.i156

if.then3.i156:                                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %12, ptr noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i156, %if.end11.do.end_crit_edge
  %retval.0.i157.ph = phi i32 [ %call1.i153, %if.then3.i156 ], [ %call.i151, %if.end11.do.end_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6) #11
  br label %disable_power_domain

do.body17:                                        ; preds = %if.end.i155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %qdsp6ss_base = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 16777216) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr29 = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 16777216) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %mem_phys = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_phys, align 4
  %shr = lshr i32 %24, 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %26 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr34 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %25) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr39 = getelementptr i8, ptr %29, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr44 = getelementptr i8, ptr %31, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 16777216) #8, !srcloc !153
  %call45 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call45, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 229) #8
  %32 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr59166 = getelementptr i8, ptr %33, i32 1032
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59166) #8, !srcloc !159
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and167 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %cmp62.not168 = icmp eq i32 %and167, 0
  br i1 %cmp62.not168, label %do.body17.land.lhs.true_crit_edge, label %do.body17.for.end_crit_edge

do.body17.for.end_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body17.land.lhs.true_crit_edge:                ; preds = %do.body17
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then79.land.lhs.true_crit_edge, %do.body17.land.lhs.true_crit_edge
  %call66 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call66, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call66, %add.i
  br i1 %cmp3.i, label %if.then69, label %if.then79

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr73 = getelementptr i8, ptr %37, i32 1032
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #8, !srcloc !159
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  br label %for.end

if.then79:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %40 = ptrtoint ptr %qdsp6ss_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qdsp6ss_base, align 4
  %add.ptr59 = getelementptr i8, ptr %41, i32 1032
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !159
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %and = and i32 %43, 1
  %cmp62.not = icmp eq i32 %and, 0
  br i1 %cmp62.not, label %if.then79.land.lhs.true_crit_edge, label %if.then79.for.end_crit_edge

if.then79.for.end_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then79.land.lhs.true_crit_edge:                ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then79.for.end_crit_edge, %if.then69, %do.body17.for.end_crit_edge
  %val.0 = phi i32 [ %39, %if.then69 ], [ %35, %do.body17.for.end_crit_edge ], [ %43, %if.then79.for.end_crit_edge ]
  %and83 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %cmp84.not = icmp eq i32 %and83, 0
  br i1 %cmp84.not, label %for.end.disable_adsp_clks_crit_edge, label %if.end91

for.end.disable_adsp_clks_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_adsp_clks

if.end91:                                         ; preds = %for.end
  %call94 = tail call i32 @qcom_q6v5_wait_for_start(ptr noundef %q6v5, i32 noundef 50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call94)
  %cmp95 = icmp eq i32 %call94, -110
  br i1 %cmp95, label %if.end91.disable_adsp_clks_crit_edge, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end91.disable_adsp_clks_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_adsp_clks

disable_adsp_clks:                                ; preds = %if.end91.disable_adsp_clks_crit_edge, %for.end.disable_adsp_clks_crit_edge
  %.str.12.sink = phi ptr [ @.str.9, %for.end.disable_adsp_clks_crit_edge ], [ @.str.12, %if.end91.disable_adsp_clks_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull %.str.12.sink) #11
  %46 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_clks, align 4
  %48 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %47, ptr noundef %49) #8
  tail call void @clk_bulk_unprepare(i32 noundef %47, ptr noundef %49) #8
  br label %disable_power_domain

disable_power_domain:                             ; preds = %disable_adsp_clks, %do.end
  %ret.1 = phi i32 [ %retval.0.i157.ph, %do.end ], [ -110, %disable_adsp_clks ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call105 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %51, i32 noundef 0) #8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i159 = tail call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 5) #8
  br label %disable_xo_clk

disable_xo_clk:                                   ; preds = %disable_power_domain, %do.end11.i.i.i.i, %if.then9.disable_xo_clk_crit_edge
  %ret.2 = phi i32 [ %ret.1, %disable_power_domain ], [ %call.i150, %if.then9.disable_xo_clk_crit_edge ], [ %call.i150, %do.end11.i.i.i.i ]
  %54 = ptrtoint ptr %xo to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xo, align 4
  tail call void @clk_disable(ptr noundef %55) #8
  br label %disable_irqs.sink.split

disable_irqs.sink.split:                          ; preds = %disable_xo_clk, %if.end.i.disable_irqs.sink.split_crit_edge
  %.sink = phi ptr [ %55, %disable_xo_clk ], [ %3, %if.end.i.disable_irqs.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %disable_xo_clk ], [ %call1.i, %if.end.i.disable_irqs.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %disable_irqs

disable_irqs:                                     ; preds = %disable_irqs.sink.split, %if.end.disable_irqs_crit_edge
  %ret.3 = phi i32 [ %call.i, %if.end.disable_irqs_crit_edge ], [ %ret.3.ph, %disable_irqs.sink.split ]
  %call110 = tail call i32 @qcom_q6v5_unprepare(ptr noundef %q6v5) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_irqs, %if.end91.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %disable_irqs ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  %sysmon = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %sysmon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysmon, align 4
  %call = tail call i32 @qcom_q6v5_request_stop(ptr noundef %q6v5, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp = icmp eq i32 %call, -110
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %qdsp6ss_base.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %qdsp6ss_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qdsp6ss_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %9 = or i32 %8, 16777216
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %qdsp6ss_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qdsp6ss_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #8, !srcloc !153
  %num_clks.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %15, ptr noundef %17) #8
  tail call void @clk_bulk_unprepare(i32 noundef %15, ptr noundef %17) #8
  %halt_map.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %halt_map.i, align 4
  %halt_lpass.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %halt_lpass.i, align 4
  %add.i = add i32 %21, 16
  %call4.i = call i32 @regmap_read(ptr noundef %19, i32 noundef %add.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.qcom_adsp_shutdown.exit_crit_edge

if.end.qcom_adsp_shutdown.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_adsp_shutdown.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not.i = icmp eq i32 %23, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.qcom_adsp_shutdown.exit_crit_edge, label %if.end.i

lor.lhs.false.i.qcom_adsp_shutdown.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_adsp_shutdown.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %halt_map.i, align 4
  %26 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %halt_lpass.i, align 4
  %add8.i = add i32 %27, 8
  %call9.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %add8.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %if.end.i.qcom_adsp_shutdown.exit_crit_edge

if.end.i.qcom_adsp_shutdown.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_adsp_shutdown.exit

lor.lhs.false11.i:                                ; preds = %if.end.i
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not.i = icmp eq i32 %29, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %lor.lhs.false11.i.qcom_adsp_shutdown.exit_crit_edge

lor.lhs.false11.i.qcom_adsp_shutdown.exit_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_adsp_shutdown.exit

if.end14.i:                                       ; preds = %lor.lhs.false11.i
  %30 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %halt_map.i, align 4
  %32 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %halt_lpass.i, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %31, i32 noundef %33, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add20.i = add i32 %34, 100
  %35 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %halt_map.i, align 4
  %37 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %halt_lpass.i, align 4
  %add231.i = add i32 %38, 4
  %call242.i = call i32 @regmap_read(ptr noundef %36, i32 noundef %add231.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242.i)
  %tobool25.not3.i = icmp eq i32 %call242.i, 0
  br i1 %tobool25.not3.i, label %if.end14.i.lor.lhs.false26.i_crit_edge, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end14.i.lor.lhs.false26.i_crit_edge:           ; preds = %if.end14.i
  br label %lor.lhs.false26.i

lor.lhs.false26.i:                                ; preds = %if.end30.i.lor.lhs.false26.i_crit_edge, %if.end14.i.lor.lhs.false26.i_crit_edge
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool27.not.i = icmp eq i32 %40, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %lor.lhs.false26.i.for.end.i_crit_edge

lor.lhs.false26.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

lor.lhs.false28.i:                                ; preds = %lor.lhs.false26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add20.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false28.i.for.end.i_crit_edge, label %if.end30.i

lor.lhs.false28.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end30.i:                                       ; preds = %lor.lhs.false28.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %42 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %halt_map.i, align 4
  %44 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %halt_lpass.i, align 4
  %add23.i = add i32 %45, 4
  %call24.i = call i32 @regmap_read(ptr noundef %43, i32 noundef %add23.i, ptr noundef nonnull %val.i) #8
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end30.i.lor.lhs.false26.i_crit_edge, label %if.end30.i.for.end.i_crit_edge

if.end30.i.for.end.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end30.i.lor.lhs.false26.i_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false26.i

for.end.i:                                        ; preds = %if.end30.i.for.end.i_crit_edge, %lor.lhs.false28.i.for.end.i_crit_edge, %lor.lhs.false26.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %46 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %halt_map.i, align 4
  %48 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %halt_lpass.i, align 4
  %add33.i = add i32 %49, 8
  %call34.i = call i32 @regmap_read(ptr noundef %47, i32 noundef %add33.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false36.i, label %for.end.i.do.end41.i_crit_edge

for.end.i.do.end41.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41.i

lor.lhs.false36.i:                                ; preds = %for.end.i
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool37.not.i = icmp eq i32 %51, 0
  br i1 %tobool37.not.i, label %lor.lhs.false36.i.do.end41.i_crit_edge, label %lor.lhs.false36.i.qcom_adsp_shutdown.exit_crit_edge

lor.lhs.false36.i.qcom_adsp_shutdown.exit_crit_edge: ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_adsp_shutdown.exit

lor.lhs.false36.i.do.end41.i_crit_edge:           ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41.i

do.end41.i:                                       ; preds = %lor.lhs.false36.i.do.end41.i_crit_edge, %for.end.i.do.end41.i_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.19) #11
  br label %qcom_adsp_shutdown.exit

qcom_adsp_shutdown.exit:                          ; preds = %do.end41.i, %lor.lhs.false36.i.qcom_adsp_shutdown.exit_crit_edge, %lor.lhs.false11.i.qcom_adsp_shutdown.exit_crit_edge, %if.end.i.qcom_adsp_shutdown.exit_crit_edge, %lor.lhs.false.i.qcom_adsp_shutdown.exit_crit_edge, %if.end.qcom_adsp_shutdown.exit_crit_edge
  %pdc_sync_reset.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %pdc_sync_reset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdc_sync_reset.i, align 4
  %call43.i = call i32 @reset_control_assert(ptr noundef %55) #8
  %restart.i = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %restart.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %restart.i, align 4
  %call44.i = call i32 @reset_control_assert(ptr noundef %57) #8
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %58 = ptrtoint ptr %halt_map.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %halt_map.i, align 4
  %60 = ptrtoint ptr %halt_lpass.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %halt_lpass.i, align 4
  %call48.i = call i32 @regmap_write(ptr noundef %59, i32 noundef %61, i32 noundef 0) #8
  %62 = ptrtoint ptr %pdc_sync_reset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdc_sync_reset.i, align 4
  %call50.i = call i32 @reset_control_deassert(ptr noundef %63) #8
  %64 = ptrtoint ptr %restart.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %restart.i, align 4
  %call52.i = call i32 @reset_control_deassert(ptr noundef %65) #8
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %call9 = call i32 @qcom_q6v5_unprepare(ptr noundef %q6v5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %qcom_adsp_shutdown.exit.if.end13_crit_edge, label %if.then11

qcom_adsp_shutdown.exit.if.end13_crit_edge:       ; preds = %qcom_adsp_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %qcom_adsp_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  %xo.i = getelementptr %struct.qcom_adsp, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %xo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xo.i, align 4
  call void @clk_disable(ptr noundef %67) #8
  call void @clk_unprepare(ptr noundef %67) #8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call.i = call i32 @dev_pm_genpd_set_performance_state(ptr noundef %69, i32 noundef 0) #8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %71, i32 noundef 5) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %qcom_adsp_shutdown.exit.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @adsp_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mem_reloc = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mem_reloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_reloc, align 4
  %4 = trunc i64 %da to i32
  %conv1 = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp = icmp slt i32 %conv1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %conv1, %len
  %mem_size = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp3 = icmp ugt i32 %add, %6
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %mem_region = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_region, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %conv1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_register_dump_segments(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_load(ptr nocapture noundef readonly %rproc, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %firmware = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 3
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware, align 8
  %mem_region = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %mem_region to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_region, align 4
  %mem_phys = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_phys, align 4
  %mem_size = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_size, align 4
  %mem_reloc = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 16
  %call = tail call i32 @qcom_mdt_load_no_init(ptr noundef %3, ptr noundef %fw, ptr noundef %5, i32 noundef 0, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %mem_reloc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %info_name = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %info_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info_name, align 4
  %14 = ptrtoint ptr %mem_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_phys, align 4
  %16 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_size, align 4
  %call3 = tail call i32 @qcom_pil_info_store(ptr noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adsp_panic(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %q6v5 = getelementptr inbounds %struct.qcom_adsp, ptr %1, i32 0, i32 2
  %call = tail call i32 @qcom_q6v5_panic(ptr noundef %q6v5) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_wait_for_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_request_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load_no_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_pil_info_store(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_q6v5_panic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_q6v5_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_glink_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_sysmon_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_remove_ssr_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_qcom_q6v5_adsp__235_557_adsp_pil_driver_init6, !1, !"__initcall__kmod_qcom_q6v5_adsp__235_557_adsp_pil_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 557, i32 1}
!2 = !{ptr @__exitcall_adsp_pil_driver_exit, !1, !"__exitcall_adsp_pil_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description236, !4, !"__UNIQUE_ID_description236", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 558, i32 1}
!5 = !{ptr @__UNIQUE_ID_file237, !6, !"__UNIQUE_ID_file237", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 559, i32 1}
!7 = !{ptr @__UNIQUE_ID_license238, !6, !"__UNIQUE_ID_license238", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 552, i32 11}
!10 = !{ptr @adsp_pil_driver, !11, !"adsp_pil_driver", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 548, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 441, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @adsp_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @adsp_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @adsp_ops, !21, !"adsp_ops", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 305, i32 31}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 205, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adsp_start._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @adsp_start._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 231, i32 3}
!29 = !{ptr @adsp_start._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @adsp_start._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 237, i32 3}
!33 = !{ptr @adsp_start._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @adsp_start._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 273, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @adsp_stop._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @adsp_stop._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 277, i32 3}
!42 = !{ptr @adsp_stop._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @adsp_stop._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 143, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qcom_adsp_shutdown._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @qcom_adsp_shutdown._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 404, i32 46}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 406, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adsp_alloc_memory_region._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @adsp_alloc_memory_region._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 419, i32 3}
!58 = !{ptr @adsp_alloc_memory_region._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @adsp_alloc_memory_region._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 319, i32 37}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 323, i32 4}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @adsp_init_clock._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @adsp_init_clock._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 345, i32 4}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 347, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @adsp_init_reset._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @adsp_init_reset._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 351, i32 71}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 355, i32 63}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 358, i32 3}
!80 = !{ptr @adsp_init_reset._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @adsp_init_reset._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 373, i32 3}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @adsp_init_mmio._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @adsp_init_mmio._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 377, i32 47}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 379, i32 3}
!91 = !{ptr @adsp_init_mmio._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @adsp_init_mmio._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 391, i32 3}
!95 = !{ptr @adsp_init_mmio._entry.44, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @adsp_init_mmio._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @adsp_of_match, !98, !"adsp_of_match", i1 false, i1 false}
!98 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 541, i32 34}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 530, i32 19}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 531, i32 14}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 535, i32 3}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 535, i32 11}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 535, i32 18}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 535, i32 26}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 535, i32 37}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 535, i32 51}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 536, i32 3}
!117 = !{ptr @cdsp_resource_init, !118, !"cdsp_resource_init", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 528, i32 35}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 517, i32 19}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 518, i32 14}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 519, i32 17}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 522, i32 3}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 522, i32 16}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 522, i32 39}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 523, i32 3}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 523, i32 17}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 523, i32 34}
!137 = !{ptr @adsp_resource_init, !138, !"adsp_resource_init", i1 false, i1 false}
!138 = !{!"../drivers/remoteproc/qcom_q6v5_adsp.c", i32 515, i32 35}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{i64 2148251085}
!150 = !{i64 735908, i64 735933, i64 735955, i64 735971, i64 735983, i64 736003, i64 736027, i64 736043, i64 736055}
!151 = !{i64 2148251273}
!152 = !{i64 2154538893}
!153 = !{i64 4299942}
!154 = !{i64 2154539295}
!155 = !{i64 2154539697}
!156 = !{i64 2154540117}
!157 = !{i64 2154540577}
!158 = !{i64 2154540990}
!159 = !{i64 4300360}
!160 = !{i64 2154543017}
!161 = !{i64 2154543539}
!162 = !{i64 2154534716}
!163 = !{i64 2154534943}
